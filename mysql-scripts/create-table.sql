CREATE TABLE parent_task (
  id_parent_task int(11) NOT NULL AUTO_INCREMENT,
  nm_parent_task varchar(45) NOT NULL,
  PRIMARY KEY (id_parent_task),
  UNIQUE KEY id_parent_task_UNIQUE (id_parent_task),
  UNIQUE KEY nm_parent_task_UNIQUE (nm_parent_task)
);

CREATE TABLE task (
  id_task int(11) NOT NULL AUTO_INCREMENT,
  nm_task varchar(45) NOT NULL,
  id_parent_task int(11) DEFAULT NULL,
  priority int(11) NOT NULL,
  dt_start date NOT NULL,
  dt_end date NOT NULL,
  is_completed char(1) DEFAULT NULL,
  dt_updated datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (id_task),
  UNIQUE KEY task_id_UNIQUE (id_task),
  UNIQUE KEY nm_task_UNIQUE (nm_task),
  KEY id_parent_task_idx (id_parent_task),
  CONSTRAINT id_parent_task FOREIGN KEY (id_parent_task) REFERENCES parent_task (id_parent_task) ON DELETE NO ACTION ON UPDATE NO ACTION
);