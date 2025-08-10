/**
 * Copyright (C), 2025-08-10
 * @author LinXun
 * @date 2025/8/10 17:06
 * @version 1.0
 * @description: 启动参数
 */
import { StartupConfig, StartupConfigEntry, StartupListener } from '@kit.AbilityKit';
import { Logger } from 'utils';
import { BusinessError } from '@kit.BasicServicesKit';

const TAG: string = "SparksStartupConfigEntry";

export default class SparksStartupConfigEntry extends StartupConfigEntry {
    onConfig(): StartupConfig {
        Logger.info(`${TAG}`, `onConfig`);
        let onCompletedCallback = (error: BusinessError<void>) => {
            Logger.info(`${TAG}`, `onCompletedCallback`);
            if (error) {
                Logger.error(`${TAG}`, `onCompletedCallback: ${error.code}, message: ${error.message}`);
            } else {
                Logger.error(`${TAG}`, `onCompletedCallback: success.`);
            }
        };
        let startupListener: StartupListener = {
            'onCompleted': onCompletedCallback
        };
        let config: StartupConfig = {
            "timeoutMs": 10000,
            "startupListener": startupListener
        };
        return config;
    }
}