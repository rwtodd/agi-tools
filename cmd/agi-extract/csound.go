package main

// routines for csound orchestra / score generation

import (
	"bufio"
	"fmt"
	"os"
	"path/filepath"

	"github.com/rwtodd/agi-tools/agi"
)

// calculates the sound length in sixths of a second. Note
// that AGI data is in 60ths of a second so we have to convert.
func soundLength(s *agi.Sound) float32 {
	var dur, max uint32
	for _, voice := range [...][]agi.Tone{s.Voice1, s.Voice2, s.Voice3} {
		dur = 0
		for _, t := range voice {
			dur += uint32(t.Duration)
		}
		if dur > max {
			max = dur
		}
	}
	dur = 0
	for _, n := range s.Voice4 {
		dur += uint32(n.Duration)
	}
	if dur > max {
		max = dur
	}

	return float32(max) / 10.0
}

func outputScore(game *agi.Game, odir string, i int) error {
	if i < 0 || i >= len(game.SoundDir) {
		return fmt.Errorf("Sound %d is out of range!", i)
	}

	entry := game.SoundDir[i]
	if entry.IsPresent() {
		sound, err := game.LoadSound(i)
		if err != nil {
			return fmt.Errorf("Sound %d ERROR: %v", i, err)
		}
		path := filepath.Join(odir, fmt.Sprintf("sound_%03d.sco", i))
		scoFile, err := os.Create(path)
		if err != nil {
			return err
		}
		scoBuf := bufio.NewWriter(scoFile)

		// calculate needed stats
		duration := soundLength(sound)

		// write the prelude
		fmt.Fprintf(scoBuf, "; This is '%s', sound resource #%d of length %f\n\n",
			filepath.Base(game.RootDir), i, duration)
		fmt.Fprintln(scoBuf, scorePrelude)

		// write the reverb..
		fmt.Fprintln(scoBuf, "\n; Set the reverb for 2 seconds longer than the song")
		fmt.Fprintln(scoBuf, ";   \t\t\t\treverb\tgain\tgain")
		fmt.Fprintln(scoBuf, "; 99\tstart\tdur\tdepth\tStart\tEnd")
		fmt.Fprintf(scoBuf, "i 99\t0\t%f\t0.9\t1.0\t1.0\n", duration+12.0)

		if err = scoBuf.Flush(); err != nil {
			return err
		}
		if err = scoFile.Close(); err != nil {
			return err
		}
	}
	return nil
}

// write the canned example orchestra to disk.  This way we can always
// have an easy starting point.
func outputOrchestra(odir string) error {
	path := filepath.Join(odir, "agi.orc")
	ofile, err := os.Create(path)
	if err != nil {
		return err
	}
	defer ofile.Close()
	if _, err = ofile.WriteString(exampleOrch); err != nil {
		return err
	}
	return nil
}

const scorePrelude = `; orchestra is expected to have equivalents for
; PCJr/Tandy 3-voice sounds:
; Instrument 1 for the main voice (square wave)
; Instrument 2 for white noise
; Instrument 3 for 'linear noise'
; Instrument 99 for mixing/reverb
t 0 360  ; 1/6th second, aligns with AGI timing of 1/60th second
`

const exampleOrch = `;; vim: tabstop=8: shiftwidth=8: softtabstop=8: noexpandtab:
sr = 48000
ksmps = 32

;sr = 44100
;ksmps = 20

nchnls = 2
; 0dbfs = 1

#define DAMPEN #0.0#

;; AGI sound-alike envelope
gienv	ftgen	0, 0, 4096, 7, 0.95, 8,  1, 9,  0.95, 9,  0.9, 8,   0.85, 43,  0.8, 51,  0.75, 85,  0.7, 444,  0.2, 409, 0.15, 1195,  0

;; square wave
gisqw	ftgen	0, 0, 2, 7, 1, 1, 1, 0, -1, 1, -1

;; noise wave...16 units long: 1 0 0 0  0 0 0 0  0 0 0 0  0 0 0 0
ginzw	ftgen	0, 0, 16, -7, 1, 1, 1, 0, 0, 15, 0

gaLeft		init	0.0
gaRight init 0.0

instr	1    ;; square waves
; i1	p2	p3	p4	p5	p7
;	start	dur	ampl	pitch	pan
iampl	=	ampdbfs(p4-$DAMPEN.)
;; kenv	adsr	0.01, 0.1, 0.25, 0.2 
kenv	oscili	1, 0.125, gienv
asq	oscil	iampl, p5, gisqw
aenv	=	asq*kenv
aoL, aoR pan2	aenv, p6, 0
gaLeft	+=	aoL
gaRight +=	aoR
endin

instr 2 ;; "white" noise
; i2	p2	p3	p4	p5
;	start	dur	amp	hz
iampl	=	ampdbfs(p4)
idens = (p5/2) ;; impulses per sec, 1/2 the shift cycles on average
iperiod = (p5/16)
adust	dust	1, idens
aphase, aunused syncphasor iperiod, adust
aout table aphase, ginzw, 1
aout *= iampl
gaLeft	+=	aout
gaRight	+=	aout
endin

instr 3 ;; linear noise
; i2	p2	p3	p4	p5
; start	dur	amp	hz
iampl	=	ampdbfs(p4)
iperiod = p5/16
idelay = 15/p5
;; apulse	mpulse	1, iperiod, idelay
aout oscil iampl, iperiod, ginzw, (1.001/16)
gaLeft += aout
gaRight += aout
endin

instr	99 ;; out-mixer
;; i99 p2=start p3=dur p4=reverb time p5=volstart p6=volend
aoL	reverb	gaLeft, p4
aoR	reverb	gaRight, p4
kslope init p5
if p5 != p6 then
	kslope	expon	p5, p3, p6
endif
	outs	(gaLeft+(aoL*0.15))*kslope, (gaRight+(aoR*0.15))*kslope
gaLeft	=	0
gaRight	=	0
endin
`
