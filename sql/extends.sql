

/*==============================================================*/
/* Table: e_address                                             */
/*==============================================================*/
create table if not exists e_address
(
   id                   varchar(32) not null comment '主键id',
   userid               varchar(32) comment '用户id',
   username             varchar(20) comment '用户姓名',
   phone                varchar(11) comment '手机号',
   college              varchar(100) comment '所在学校校区',
   address              varchar(200) comment '详细地址',
   is_default           tinyint(1) comment '是否默认地址',
   primary key (id)
);

alter table e_address comment '收货地址';

/*==============================================================*/
/* Table: e_book                                                */
/*==============================================================*/
create table if not exists e_book
(
   id                   varchar(32) not null comment '主键id',
   isbn                 varchar(20) comment 'ISBN',
   isbn10               varchar(20) comment 'isbn10',
   title                varchar(50) comment '书名',
   subtitle             varchar(50) comment '副书名',
   icon                 varchar(200) comment '图片',
   author               varchar(20) comment '作者',
   summary              varchar(20) comment '摘要',
   publisher            varchar(50) comment '出版社',
   pubplace             varchar(50) comment '出版地',
   pubdate              timestamp comment '出版时间',
   page                 int(5) comment '页数',
   dep_price            double comment '折旧价格',
   deposit              double comment '押金',
   e_price              double comment 'e币价格',
   is_note              tinyint(1) comment '是否有笔记',
   degree               varchar(10) comment '新旧程度',
   binding              varchar(10) comment '装帧方式',
   keyword              varchar(20) comment '主题词',
   edition              varchar(20) comment '版次',
   impression           varchar(20) comment '印次',
   language             varchar(20) comment '正文语种',
   format               varchar(20) comment '开本',
   class_id             varchar(20) comment '分类',
   class_name           varchar(20) comment '分类名称',
   college              varchar(50) comment '学校',
   grade                varchar(20) comment '年级',
   hot_value            int(10) comment '热值',
   primary key (id)
);

alter table e_book comment '图书';

/*==============================================================*/
/* Table: e_book_class                                          */
/*==============================================================*/
create table if not exists e_book_class
(
   id                   varchar(32) not null comment '主键id',
   name                 varchar(20) comment '名称',
   primary key (id)
);

alter table e_book_class comment '图书类别';

/*==============================================================*/
/* Table: e_collect                                             */
/*==============================================================*/
create table if not exists e_collect
(
   id                   varchar(32) not null comment '主键id',
   book_id              varchar(32) comment '图书id',
   book_name            varchar(200) comment '图书名称',
   e_value              double comment 'e币',
   book_icon            varchar(200) comment '图片',
   userid               varchar(32) comment '用户id',
   create_time          timestamp comment '创建时间',
   is_valid             tinyint(1) comment '是否有效',
   primary key (id)
);

alter table e_collect comment '我的收藏';

/*==============================================================*/
/* Table: e_diary                                               */
/*==============================================================*/
create table if not exists e_diary
(
   id                   varchar(32) not null comment '主键id',
   userid               varchar(32) comment '用户id',
   title                varchar(200) comment '日记主题',
   content              varchar(500) comment '日记内容',
   icon                 varchar(300) comment '图片',
   browsed_times        int(5) comment '被浏览数',
   comment_times        int(5) comment '评论数',
   liked_times          int(5) comment '点赞数',
   create_person        varchar(32) comment '创建人',
   create_time          timestamp comment '创建时间',
   is_valid             tinyint(1) comment '是否有效',
   primary key (id)
);

alter table e_diary comment '日记';

/*==============================================================*/
/* Table: e_diary_comment                                       */
/*==============================================================*/
create table if not exists e_diary_comment
(
   id                   varchar(32) not null comment '主键id',
   userid               varchar(32) comment '用户id',
   diary_id             varchar(32) comment '日记id',
   create_time          timestamp comment '创建时间',
   is_valid             tinyint(1) comment '是否有效',
   primary key (id)
);

alter table e_diary_comment comment '日记评论';

/*==============================================================*/
/* Table: e_diary_like                                          */
/*==============================================================*/
create table if not exists e_diary_like
(
   id                   varchar(32) not null comment '主键id',
   userid               varchar(32) comment '用户id',
   diary_id             varchar(32) comment '日记id',
   create_time          timestamp comment '创建时间',
   is_valid             tinyint(1) comment '是否有效',
   primary key (id)
);

alter table e_diary_like comment '日记点赞';

/*==============================================================*/
/* Table: e_donation                                            */
/*==============================================================*/
create table if not exists e_donation
(
   id                   varchar(32) not null comment '主键id',
   book_id              varchar(32) comment '图书id',
   book_name            varchar(200) comment '图书名称',
   e_value              double comment 'e币',
   book_icon            varchar(200) comment '图片',
   userid               varchar(32) comment '用户id',
   create_time          timestamp comment '创建时间',
   status               int(2) comment '捐书状态',
   is_valid             tinyint(1) comment '是否有效',
   primary key (id)
);

alter table e_donation comment '我的捐书';

/*==============================================================*/
/* Table: e_order                                               */
/*==============================================================*/
create table if not exists e_order
(
   id                   varchar(32) not null comment 'id',
   product_id           varchar(32) not null comment '商品id',
   product_type         tinyint(2) comment '商品类型',
   userid               varchar(32) comment '用户id',
   count                int(4) comment '数量',
   create_person        varchar(32) comment '创建人',
   create_time          timestamp comment '创建时间',
   is_valid             tinyint(1) comment '是否有效',
   primary key (id, product_id)
);

alter table e_order comment '订单';

/*==============================================================*/
/* Table: e_shopping_cart                                       */
/*==============================================================*/
create table if not exists e_shopping_cart
(
   id                   varchar(32) not null comment '主键id',
   product_id           varchar(32) comment '商品id',
   product_type         tinyint(2) comment '商品类型',
   product_name         varchar(50) comment '商品名称',
   product_price        double comment '商品价格',
   product_icon         varchar(200) comment '商品图片',
   userid               varchar(32) comment '用户id',
   create_time          timestamp comment '创建时间',
   count                int(4) comment '数量',
   is_valid             tinyint(1) comment '是否有效',
   primary key (id)
);

alter table e_shopping_cart comment '购物车';

/*==============================================================*/
/* Table: e_souvenir                                            */
/*==============================================================*/
create table if not exists e_souvenir
(
   id                   varchar(32) not null comment '主键id',
   name                 varchar(50) comment '纪念品名称',
   price                double comment '纪念品价格',
   introduce            varchar(100) comment '介绍',
   icon                 varchar(200) comment '图片',
   create_person        varchar(32) comment '创建人',
   create_time          timestamp comment '创建时间',
   is_valid             tinyint(1) comment '是否有效',
   primary key (id)
);

alter table e_souvenir comment '纪念品';

/*==============================================================*/
/* Table: t_user                                                */
/*==============================================================*/

