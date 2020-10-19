/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.rwtodd.agi.resources;

import java.nio.file.Path;

/**
 *
 * @author rwtodd
 */
public class DefaultResourceLoaders implements ResourceLoadingFactory {

    @Override
    public ResourceDirectory createResourceDirectory(Engine engine) throws AGIException {
          if (engine.isBeforeV3()) {
            return new V2ResourceDirectory(engine.getGamePath());
        } else {
            return new V3ResourceDirectory(engine.getGamePath(), engine.getPrefix());
        }
    }

    @Override
    public GameMetaData createGameMetaData(Path gamePath) throws AGIException {
        return new OnDiskMetaData(gamePath);
    }

    @Override
    public VolumeManager createVolumeManager(Engine engine) throws AGIException {
        if (engine.isBeforeV3()) {
            return new V2VolumeManager(engine.getGamePath());
        } else {
            return new V3VolumeManager(engine.getGamePath(), engine.getPrefix());
        }
        
    }
    
}