/**
 * Copyright (C), 2025-08-10
 * @author LinXun
 * @date 2025/8/10 17:23
 * @version 1.0
 * @description: HMRouter添加启动任务
 */
import { common, StartupTask } from '@kit.AbilityKit';
import { HMRouterMgr } from '@hadss/hmrouter';
import { Logger } from 'utils';

const TAG: string = `[HMRouterInitStartupTaskTAG]`;

@Sendable
export default class HMRouterInitStartupTask extends StartupTask {
    constructor() {
        super();
    }

    async init(context: common.AbilityStageContext): Promise<void | Object> {
        HMRouterMgr.init({
            context: context
        });
        HMRouterMgr.openLog(`DEBUG`);
    }

    onDependencyCompleted(dependency: string, result: Object): void {
        Logger.info(`${TAG}`, `StartupTask_001 onDependencyCompleted, dependence: ${dependency}, result: ${result}`);
    }
}