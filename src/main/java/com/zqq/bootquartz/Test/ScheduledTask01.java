package com.zqq.bootquartz.Test;

import com.zqq.bootquartz.mapper.ScheduledTaskJob;
import lombok.extern.slf4j.Slf4j;

@Slf4j
public class ScheduledTask01 implements ScheduledTaskJob {
    @Override
    public void run() {
        log.info("ScheduledTask=> 01 run 当前线程名称：[{}]",Thread.currentThread().getName());
    }
}
