CREATE TABLE authorities
(
  id               VARCHAR(32) DEFAULT '' NOT NULL
    PRIMARY KEY,
  authorities_name VARCHAR(30)            NULL,
  descpt           VARCHAR(30)            NULL
);

CREATE TABLE authorities_groups
(
  authorities_id VARCHAR(32) DEFAULT '' NOT NULL,
  group_id       VARCHAR(32) DEFAULT '' NOT NULL,
  CONSTRAINT authorities_id
  UNIQUE (authorities_id, group_id)
);

CREATE TABLE backlog
(
  id              VARCHAR(32) DEFAULT '' NOT NULL
    PRIMARY KEY,
  work_type       VARCHAR(20)            NULL,
  worker          VARCHAR(32)            NULL,
  begin_date_time DATETIME               NULL,
  end_date_time   DATETIME               NULL,
  title           VARCHAR(100)           NULL,
  content         VARCHAR(255)           NULL,
  remark          VARCHAR(255)           NULL
  COMMENT '待办事项表'
);

CREATE TABLE collections
(
  id          VARCHAR(32) DEFAULT '' NOT NULL
    PRIMARY KEY,
  release_id  VARCHAR(32)            NULL,
  news_id     VARCHAR(32)            NULL,
  user_id     VARCHAR(32)            NULL,
  create_time DATETIME               NULL,
  CONSTRAINT release_id
  UNIQUE (release_id),
  CONSTRAINT news_id
  UNIQUE (news_id)
);

CREATE TABLE comment
(
  id          VARCHAR(32) DEFAULT '' NOT NULL
    PRIMARY KEY,
  content     VARCHAR(256)           NULL,
  good_count  INT                    NULL,
  news_id     VARCHAR(32)            NULL,
  user_id     VARCHAR(32)            NULL,
  create_time DATETIME               NULL
);

CREATE TABLE groups
(
  id         VARCHAR(32) DEFAULT '' NOT NULL
    PRIMARY KEY,
  group_name VARCHAR(30)            NULL,
  descpt     VARCHAR(30)            NULL
);

CREATE TABLE history
(
  id          VARCHAR(32) DEFAULT '' NOT NULL
    PRIMARY KEY,
  release_id  VARCHAR(32)            NULL,
  news_id     VARCHAR(32)            NULL,
  user_id     VARCHAR(32)            NULL,
  create_time DATETIME               NULL,
  CONSTRAINT release_id
  UNIQUE (release_id),
  CONSTRAINT news_id
  UNIQUE (news_id)
);

CREATE TABLE manager
(
  id          VARCHAR(32) DEFAULT '' NOT NULL
    PRIMARY KEY,
  mgr_no      VARCHAR(20)            NULL,
  password    VARCHAR(32)            NOT NULL,
  mgr_name    VARCHAR(20)            NULL,
  groups_id   VARCHAR(32)            NULL,
  last_time   DATETIME               NULL,
  create_time DATETIME               NULL,
  head_img    VARCHAR(255)           NULL,
  CONSTRAINT mgr_no
  UNIQUE (mgr_no)
);

CREATE TABLE news
(
  id           VARCHAR(32) DEFAULT '' NOT NULL
    PRIMARY KEY,
  title        VARCHAR(50)            NULL
  COMMENT '新闻标题',
  author       VARCHAR(50)            NULL,
  URL          VARCHAR(255)           NULL,
  news_type_id VARCHAR(10)            NULL,
  access_count BIGINT                 NULL,
  status       TINYINT                NULL,
  create_time  DATETIME               NULL,
  CONSTRAINT URL
  UNIQUE (URL)
);

CREATE TABLE news_type
(
  id        VARCHAR(32) DEFAULT '' NOT NULL
    PRIMARY KEY,
  type_name VARCHAR(10)            NULL,
  type_desc VARCHAR(100)           NULL
);

CREATE TABLE `release`
(
  id           VARCHAR(32) DEFAULT '' NOT NULL
    PRIMARY KEY,
  create_time  DATETIME               NULL,
  path         VARCHAR(256)           NULL,
  user_Id      VARCHAR(32)            NULL,
  access_count INT                    NULL,
  news_type_id VARCHAR(32)            NULL,
  title        VARCHAR(100)           NULL,
  status       TINYINT                NULL
);

CREATE TABLE report
(
  id               VARCHAR(32) DEFAULT '' NOT NULL
    PRIMARY KEY,
  reporter_id      VARCHAR(32)            NULL,
  reported_id      VARCHAR(32)            NULL,
  reported_content VARCHAR(256)           NULL,
  create_time      DATETIME               NULL
);

CREATE TABLE subscribe
(
  id          VARCHAR(32) DEFAULT '' NOT NULL
    PRIMARY KEY,
  type        TINYINT                NULL,
  user_id     VARCHAR(32) DEFAULT '' NULL,
  create_time DATETIME               NULL
);

CREATE TABLE subscribe_type
(
  type_no   TINYINT      NULL,
  type_name VARCHAR(10)  NULL,
  type_desc VARCHAR(100) NULL,
  CONSTRAINT type_name
  UNIQUE (type_name)
);

CREATE TABLE users
(
  id          VARCHAR(32) DEFAULT '' NOT NULL
    PRIMARY KEY,
  phone_num   CHAR(11)               NULL,
  nick_name   VARCHAR(20)            NULL,
  password    VARCHAR(52)            NULL,
  head_img    VARCHAR(256)           NULL,
  gender      TINYINT                NULL,
  birth       DATE                   NULL,
  address     VARCHAR(100)           NULL,
  hobby       VARCHAR(256)           NULL,
  introduce   VARCHAR(256)           NULL,
  last_time   DATETIME               NULL,
  type_name   VARCHAR(10)            NULL,
  status      TINYINT                NULL,
  create_time DATETIME               NULL,
  CONSTRAINT phone_num
  UNIQUE (phone_num)
);

CREATE TABLE validate_code
(
  id          VARCHAR(32)  NOT NULL
    PRIMARY KEY,
  code        VARCHAR(255) NOT NULL,
  phone_num   CHAR(11)     NOT NULL,
  expire_time DATETIME     NOT NULL,
  usable      TINYINT      NOT NULL,
  sent        TINYINT      NOT NULL,
  create_time DATETIME     NOT NULL
);

CREATE TABLE work_record
(
  ` id`     VARCHAR(32) DEFAULT '' NOT NULL
    PRIMARY KEY,
  over_time DATETIME               NULL,
  result    TINYINT                NULL,
  worker    VARCHAR(32)            NULL,
  reason    VARCHAR(255)           NULL
);

