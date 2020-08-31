CREATE TABLE scheduled_task (
id int(11) NOT NULL AUTO_INCREMENT,
task_key varchar(128) NOT NULL COMMENT '任务key值（使用bean名称）',
task_desc varchar(128) DEFAULT NULL COMMENT '任务描述',
task_cron varchar(128) NOT NULL COMMENT '任务表达式',
init_start_flag int(2) NOT NULL DEFAULT '1' COMMENT '程序初始化是否启动 1 是 0 否',
create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
update_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
PRIMARY KEY (id),
UNIQUE KEY uniqu_task_key (task_key)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;



INSERT INTO scheduled_task(id, task_key, task_desc, task_cron, init_start_flag, create_time, update_time) VALUES (1, 'scheduledTask01', '定时任务01', '0/1 * * * * ?', 1, NOW(), NOW());
INSERT INTO scheduled_task(id, task_key, task_desc, task_cron, init_start_flag, create_time, update_time) VALUES (2, 'scheduledTask02', '定时任务02', '0/1 * * * * ?', 0, NOW(), NOW());
INSERT INTO scheduled_task(id, task_key, task_desc, task_cron, init_start_flag, create_time, update_time) VALUES (3, 'scheduledTask03', '定时任务03', '0/1 * * * * ?', 1, NOW(), NOW());
commit;