package com.zqq.bootquartz;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.zqq.bootquartz.mapper")
public class BootQuartzApplication {

    public static void main(String[] args) {
        SpringApplication.run(BootQuartzApplication.class, args);
    }

}
