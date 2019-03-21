(ns org.rwtodd.agi-disassembler.core
  (:require [org.rwtodd.agi-game.resources :as res])
  (:gen-class))

;; argc = argument count
;; argt = argument type
(defrecord Command [name argc argt])

;;(defn test-cmdlist-args
;;  "development helper func, checks that the argt vec has enough
;;  entries"
;;  [cmdl]
;;  (filter (fn [c]
;;            (and (not (= (count (.argt c)) (.argc c)))
;;                 (.name c))) cmdl))


(defonce unknown-command (->Command "unknown!" 0 nil))

(defonce test-commands
  [
   unknown-command,                  ;; 0 isn't used...
   (->Command "equaln" 2 [:var,:num]),            ;; 1
   (->Command "equalv" 2 [:var,:var]),
   (->Command "lessn" 2 [:var,:num]),
   (->Command "lessv" 2 [:var,:var]),
   (->Command "greatern" 2 [:var,:num]),
   (->Command "greaterv" 2 [:var,:var]),          ;; 6
   (->Command "isset" 1 [:flg]),
   (->Command "issetv" 1 [:var]),
   (->Command "has" 1 [:inv]),
   (->Command "obj.in.room" 2 [:inv,:var]),
   (->Command "posn" 5 [:obj,:num,:num,:num,:num]),  ;; 11
   (->Command "controller" 1 [:ctl]),
   (->Command "have.key" 0 nil),
   (->Command "said" 0 nil), ; special arg-handling for "said"
   (->Command "compare.strings" 2 [:str,:str]),
   (->Command "obj.in.box" 5 [:obj,:num,:num,:num,:num]),  ;; 16
   (->Command "center.posn" 5 [:obj,:num,:num,:num,:num]),
   (->Command "right.posn" 5 [:obj,:num,:num,:num,:num])
   ])

(defonce logic-commands
  [
   (->Command "return" 0 nil)                  ;; 0
   (->Command "increment" 1 [:var]),
   (->Command "decrement" 1 [:var]),
   (->Command "assignn" 2 [:var,:num]),
   (->Command "assignv" 2 [:var,:var]),
   (->Command "addn" 2 [:var,:num]),           ;; 5
   (->Command "addv" 2 [:var,:var]),
   (->Command "subn" 2 [:var,:num]),
   (->Command "subv" 2 [:var,:var]),
   (->Command "lindirectv" 2 [:var,:var]),
   (->Command "rindirect" 2 [:var,:var]),      ;; 10
   (->Command "lindirectn" 2 [:var,:num]),
   (->Command "set" 1 [:flg]),
   (->Command "reset" 1 [:flg]),
   (->Command "toggle" 1 [:flg]),
   (->Command "set.v" 1 [:var]),               ;; 15
   (->Command "reset.v" 1 [:var]),
   (->Command "toggle.v" 1 [:var]),
   (->Command "new.room" 1 [:num]),
   (->Command "new.room.v" 1 [:var]),
   (->Command "load.logics" 1 [:num]),         ;; 20
   (->Command "load.logics.v" 1 [:var]),
   (->Command "call" 1 [:num]),
   (->Command "call.v" 1 [:var]),
   (->Command "load.pic" 1 [:var]),
   (->Command "draw.pic" 1 [:var]),            ;; 25
   (->Command "show.pic" 0 nil),
   (->Command "discard.pic" 1 [:var]),
   (->Command "overlay.pic" 1 [:var]),
   (->Command "show.pri.screen" 0 nil),
   (->Command "load.view" 1 [:num]),           ;; 30
   (->Command "load.view.v" 1 [:var]),
   (->Command "discard.view" 1 [:num]),
   (->Command "animate.obj" 1 [:obj]),
   (->Command "unanimate.all" 0 nil),
   (->Command "draw" 1 [:obj]),                ;; 35
   (->Command "erase" 1 [:obj]),
   (->Command "position" 3 [:obj,:num,:num]),
   (->Command "position.v" 3 [:obj,:var,:var]),
   (->Command "get.posn" 3 [:obj,:var,:var]),
   (->Command "reposition" 3 [:obj,:var,:var]), ;; 40
   (->Command "set.view" 2 [:obj,:num]),
   (->Command "set.view.v" 2 [:obj,:var]),
   (->Command "set.loop" 2 [:obj,:num]),
   (->Command "set.loop.v" 2 [:obj,:var]),
   (->Command "fix.loop" 1 [:obj]),            ;; 45
   (->Command "release.loop" 1 [:obj]),
   (->Command "set.cel" 2 [:obj,:num]),
   (->Command "set.cel.v" 2 [:obj,:var]),
   (->Command "last.cel" 2 [:obj,:var]),
   (->Command "current.cel" 2 [:obj,:var]),     ;; 50
   (->Command "current.loop" 2 [:obj,:var]),
   (->Command "current.view" 2 [:obj,:var]),
   (->Command "number.of.loops" 2 [:obj,:var]),
   (->Command "set.priority" 2 [:obj,:num]),
   (->Command "set.priority.v" 2 [:obj,:var]),   ;; 55
   (->Command "release.priority" 1 [:obj]),
   (->Command "get.priority" 2 [:obj,:var]),
   (->Command "stop.update" 1 [:obj]),
   (->Command "start.update" 1 [:obj]),
   (->Command "force.update" 1 [:obj]),          ;; 60
   (->Command "ignore.horizon" 1 [:obj]),
   (->Command "observe.horizon" 1 [:obj]),
   (->Command "set.horizon" 1 [:num]),
   (->Command "object.on.water" 1 [:obj]),
   (->Command "object.on.land" 1 [:obj]),        ;; 65
   (->Command "object.on.anything" 1 [:obj]),
   (->Command "ignore.objs" 1 [:obj]),
   (->Command "observe.objs" 1 [:obj]),
   (->Command "distance" 3 [:obj,:obj,:var]),
   (->Command "stop.cycling" 1 [:obj]),          ;; 70
   (->Command "start.cycling" 1 [:obj]),
   (->Command "normal.cycle" 1 [:obj]),
   (->Command "end.of.loop" 2 [:obj,:flg]),
   (->Command "reverse.cycle" 1 [:obj]),
   (->Command "reverse.loop" 2 [:obj,:flg]),    ;; 75
   (->Command "cycle.time" 2 [:obj,:var]),
   (->Command "stop.motion" 1 [:obj]),
   (->Command "start.motion" 1 [:obj]),
   (->Command "step.size" 2 [:obj,:var]),
   (->Command "step.time" 2 [:obj,:var]),      ;; 80
   (->Command "move.obj" 5 [:obj,:num,:num,:num,:flg]),
   (->Command "move.obj.v" 5 [:obj,:var,:var,:num,:flg]),
   (->Command "follow.ego" 3 [:obj,:num,:flg]),
   (->Command "wander" 1 [:obj]),
   (->Command "normal.motion" 1 [:obj]),      ;; 85
   (->Command "set.dir" 2 [:obj,:var]),
   (->Command "get.dir" 2 [:obj,:var]),
   (->Command "ignore.blocks" 1 [:obj]),
   (->Command "observe.blocks" 1 [:obj]),
   (->Command "block" 4 [:num,:num,:num,:num]),  ;; 90
   (->Command "unblock" 0 nil),
   (->Command "get" 1 [:inv]),
   (->Command "get.v" 1 [:var]),
   (->Command "drop" 1 [:inv]),
   (->Command "put" 2 [:inv,:var]),             ;; 95
   (->Command "put.v" 2 [:var,:var]),
   (->Command "get.room.v" 2 [:var,:var]),
   (->Command "load.sound" 1 [:num]),
   (->Command "sound" 2 [:num,:flg]),
   (->Command "stop.sound" 0 nil),              ;; 100
   (->Command "print" 1 [:msg]),
   (->Command "print.v" 1 [:var]),
   (->Command "display" 3 [:num,:num,:msg]),
   (->Command "display.v" 3 [:var,:var,:var]),
   (->Command "clear.lines" 3 [:num,:num,:num]),  ;; 105
   (->Command "text.screen" 0 nil),
   (->Command "graphics" 0 nil),
   (->Command "set.cursor.char" 1 [:msg]),
   (->Command "set.text.attribute" 2 [:num,:num]),
   (->Command "shake.screen" 1 [:num]),          ;; 110
   (->Command "configure.screen" 3 [:num,:num,:num]),
   (->Command "status.line.on" 0 nil),
   (->Command "status.line.off" 0 nil),
   (->Command "set.string" 2 [:str,:msg]),       
   (->Command "get.string" 5 [:str,:msg,:num,:num,:num]), ;; 115
   (->Command "word.to.string" 2 [:wrd,:str]),
   (->Command "parse" 1 [:str]),
   (->Command "get.num" 2 [:msg,:var]),
   (->Command "prevent.input" 0 nil),
   (->Command "accept.input" 0 nil),           ;; 120
   (->Command "set.key" 3 [:num,:num,:ctl]),
   (->Command "add.to.pic" 7 [:num,:num,:num,:num,:num,:num,:num]),
   (->Command "add.to.pic.v" 7 [:var,:var,:var,:var,:var,:var,:var]),
   (->Command "status" 0 nil),
   (->Command "save.game" 0 nil),              ;; 125
   (->Command "restore.game" 0 nil),
   (->Command "init.disk" 0 nil),
   (->Command "restart.game" 0 nil),
   (->Command "show.obj" 1 [:num]),
   (->Command "random" 3 [:num,:num,:var]),    ;; 130
   (->Command "program.control" 0 nil),
   (->Command "player.control" 0 nil),
   (->Command "obj.status.v" 1 [:var]),
   (->Command "quit"
              (fn [gi] (if (< (:vernum gi) 2.090) 0 1))
              [:num]),
   (->Command "show.mem" 0 nil),              ;; 135
   (->Command "pause" 0 nil),
   (->Command "echo.line" 0 nil),
   (->Command "cancel.line" 0 nil),
   (->Command "init.joy" 0 nil),
   (->Command "toggle.monitor" 0 nil),        ;; 140
   (->Command "version" 0 nil),
   (->Command "script.size" 1 [:num]),
   (->Command "set.game.id" 1 [:msg]),
   (->Command "log" 1 [:msg]),
   (->Command "set.scan.start" 0 nil),        ;; 145
   (->Command "reset.scan.start" 0 nil),
   (->Command "reposition.to" 3 [:obj,:num,:num]),
   (->Command "reposition.to.v" 3 [:obj,:var,:var]),
   (->Command "trace.on" 0 nil),
   (->Command "trace.info" 3 [:num,:num,:num]),  ;; 150
   (->Command "print.at"
              (fn [gi] (if (< (:vernum gi) 2.401) 3 4))
              [:msg,:num,:num,:num]),
   (->Command "print.at.v"
              (fn [gi] (if (< (:vernum gi) 2.401) 3 4))
              [:msg,:var,:var,:var]),  
   (->Command "discard.view.v" 1 [:var]),
   (->Command "clear.text.rect" 5 [:num,:num,:num,:num,:num]),
   (->Command "set.upper.left" 2 [:unk, :unk]),   ;; 155
   (->Command "set.menu" 1 [:msg]),
   (->Command "set.menu.item" 2 [:msg,:ctl]),
   (->Command "submit.menu" 0 nil),
   (->Command "enable.item" 1 [:ctl]),
   (->Command "disable.item" 1 [:ctl]),           ;; 160
   (->Command "menu.input" 0 nil),
   (->Command "show.obj.v" 1 [:var]),
   (->Command "open.dialogue" 0 nil),
   (->Command "close.dialogue" 0 nil),
   (->Command "mul.n" 2 [:var,:num]),             ;; 165
   (->Command "mul.v" 2 [:var,:var]),
   (->Command "div.n" 2 [:var,:num]),
   (->Command "div.v" 2 [:var,:var]),
   (->Command "close.window" 0 nil),
   (->Command "unknown170" 1 [:unk]),             ;; 170
   (->Command "unknown171" 0 nil),
   (->Command "unknown172" 0 nil),
   (->Command "unknown173" 0 nil),
   (->Command "unknown174" 1 [:unk]),
   (->Command "unknown175" 1 [:unk]),            ;; 175
   (->Command "unknown176"
              (fn [gi] (if (= (:vernum gi) 3.002086) 1 0))
              [:unk]),
   (->Command "unknown177" 1 [:unk]),
   (->Command "unknown178" 0 nil),
   (->Command "unknown179" 4 [:unk,:unk,:unk,:unk]),
   (->Command "unknown180" 2 [:unk,:unk]),      ;; 180
   (->Command "unknown181" 0 nil)
   ])

(defn count-args
  "Determine the number of args for CMD, give game-info GI"
  [cmd gi]
  (let [argc (.argc cmd)]
    (if (fn? argc) (argc gi) argc)))

(defn format-arg
  "format an argument, given its type"
  [num argt]
  (str 
   (case argt
     :num nil    :var \v      :flg \f     :msg \m
     :obj \o     :inv \i      :str \s     :wrd \w
     :ctl \c     :unk \?      "<ERR>")
   num))

;; TODO -- get more extra-arg info on vars and flags from
;; http://agi.sierrahelp.com/Documentation/Specifications/2-2-Interpreter.html
;; TODO -- also, parse messages for %mxx (local messages) %gxx (logic.0 messages)
;; etc.
(defn arg-extra-info
  "Collect extra information about an argument. e.g: the name
  of a referenced inventory object."
  [num argt game-info]
  (case argt
    :msg (format "%s = %s"
                 (format-arg num argt)
                 (nth (:messages game-info) num "<NOT FOUND!>"))
    :inv (format "%s = %s"
                 (format-arg num argt)
                 (-> game-info
                     :inventory
                     (nth num {:name "<NOT FOUND!>"})
                     :name))
    nil))

(defn collect-game-info
  "Gather the needed info for disassembly of
  GAME logic resource NUM"
  [game num]
  (let [gspec (res/game-spec game)]
    (assoc (res/load-resource game :logic num)
           :key    (:key gspec)
           :vernum (:vernum gspec)
           :inventory (:objects (res/load-objects game))
           :words (res/load-words game))))

(defn read-u16
  "Read a 16bit number from two 8-bit numbers"
  [low high]
  (bit-or (bit-shift-left (bit-and high 0xff) 8) (bit-and low 0xff)))

;; FIXME ... this is unsigned...
(defn read-s16
  "Read a signed 16bit number from two 8-bit numbers"
  [low high]
  (bit-or (bit-shift-left (bit-and high 0xff) 8) (bit-and low 0xff)))

(defn parse-if-cmd
  "Parse an IF (condition-testing) block."
  [src game-info]
  ;; TODO: actually parse the block... for now, just skip to the FF + 2 bytes
  (let [[skipped after] (split-with #(not (= % -1)))]
    [ { :line "<IF BLOCK>"
       :size (+ (count skipped) 4)
       :if-jmp (read-s16 (nth after 1) (nth after 2))
       }
   (nthrest after 3) ]))

(defn parse-goto-cmd
  "Parse the 0xfe (goto/else) command"
  [src game-info]
  [ { :line "GOTO"
     :size 3
     :goto-jmp (read-s16 (nth src 0) (nth src 1))
     }
   (nthrest src 2) ])

(defn parse-lookup-logic
  "Parse a logic command from the lookup table"
  [src game-info]
  (let [cmd (nth logic-commands (bit-and (first src) 0xff) unknown-command)
        argc (count-args cmd game-info)
        size (+ argc 1)]
    [ {
       :line (.name cmd)
       :size size
       }
     (nthrest src (dec size)) ]))
    
;; reference for logic:
;; http://agiwiki.sierrahelp.com/index.php?title=AGI_Specifications:_Chapter_6_-_Logic_Resources#ss6.1
(defn parse-logic-cmd
  "Parse a single logic command from SRC,
  returning a vector of the disassembly and a new
  SRC with which to continue."
  [src game-info]
  (if (empty? src)
    [ nil nil ]
    (let [cmd (bit-and (first src) 0xff)]
      (case cmd
        0xfe  (parse-goto-cmd (next src) game-info)
        0xff  (parse-if-cmd (next src) game-info) 
        (parse-lookup-logic cmd (next src) game-info)))))

(defn disassemble
  "Disassemble a logic resource for a registered game,
  given the game key and a logic number."
  [game num]
  (let [info (collect-game-info game num)]
    (loop [src (:bytecode info)]
      (let [[da src2] (parse-logic-cmd src info)]
        (when (not (nil? da))
          (println da)
          (recur src2))))))

(defn -main
  "I don't do a whole lot ... yet."
  [& args]
  (println "Hello, World!"))