--liquibase formatted sql
--changeset huangligui:system-1

CREATE TABLE T_PUB_APP (
YYDM VARCHAR2(64 BYTE) NULL ,
YYMC VARCHAR2(32 BYTE) NULL ,
YYLX CHAR(1 BYTE) NULL ,
YYQC VARCHAR2(128 BYTE) NULL ,
WEBLJ VARCHAR2(64 BYTE) NULL ,
FWLJ VARCHAR2(256 BYTE) NULL ,
YYAQM VARCHAR2(64 BYTE) NULL , 
PXDM NUMBER(8) NULL ,
SJBB NUMBER(8) NULL ,
SYBZ CHAR(1 BYTE) NULL ,
CJRXM VARCHAR2(50 BYTE) NULL ,
CJSJ DATE NOT NULL ,
GXRXM VARCHAR2(50 BYTE) NULL ,
GXSJ DATE NOT NULL ,
YYID VARCHAR2(32 BYTE) NOT NULL 
);
COMMENT ON TABLE T_PUB_APP IS '应用表';
COMMENT ON COLUMN T_PUB_APP.YYID IS '应用id';
COMMENT ON COLUMN T_PUB_APP.YYDM IS '应用代码';
COMMENT ON COLUMN T_PUB_APP.YYMC IS '应用名称';
COMMENT ON COLUMN T_PUB_APP.YYAQM IS '应用安全码';
COMMENT ON COLUMN T_PUB_APP.PXDM IS '排序代码';
COMMENT ON COLUMN T_PUB_APP.SJBB IS '数据版本';
COMMENT ON COLUMN T_PUB_APP.SYBZ IS '使用标志(''Y'':表示使用,''N'':表示未使用)';
COMMENT ON COLUMN T_PUB_APP.CJRXM IS '创建人姓名';
COMMENT ON COLUMN T_PUB_APP.GXRXM IS '更新人姓名';
COMMENT ON COLUMN T_PUB_APP.CJSJ IS '创建时间';
COMMENT ON COLUMN T_PUB_APP.GXSJ IS '更新时间';
COMMENT ON COLUMN T_PUB_APP.WEBLJ IS 'web路径';
COMMENT ON COLUMN T_PUB_APP.FWLJ IS '访问路径';
COMMENT ON COLUMN T_PUB_APP.YYLX IS '应用类型';
COMMENT ON COLUMN T_PUB_APP.YYQC IS '应用全称';

-- ----------------------------
-- Table structure for T_PUB_AUDIT
-- ----------------------------

CREATE TABLE T_PUB_AUDIT (
SJID VARCHAR2(32 BYTE) NOT NULL ,
XTM VARCHAR2(32 BYTE) NULL ,
FWLJ VARCHAR2(128 BYTE) NULL ,
SJMS VARCHAR2(256 BYTE) NULL ,
PXDM NUMBER(8) NULL ,
SYBZ CHAR(1 BYTE) NULL ,
CJRXM VARCHAR2(32 BYTE) NULL ,
CJSJ DATE NULL ,
GXRXM VARCHAR2(32 BYTE) NULL ,
GXSJ DATE DEFAULT SYSDATE  NULL ,
SJBB NUMBER(8) DEFAULT 0  NULL 
);
COMMENT ON TABLE T_PUB_AUDIT IS '审计配置';
COMMENT ON COLUMN T_PUB_AUDIT.SJID IS '审计配置ID';
COMMENT ON COLUMN T_PUB_AUDIT.XTM IS '系统名';
COMMENT ON COLUMN T_PUB_AUDIT.FWLJ IS '访问路径';
COMMENT ON COLUMN T_PUB_AUDIT.SJMS IS '审计描述';
COMMENT ON COLUMN T_PUB_AUDIT.PXDM IS '排序代码';
COMMENT ON COLUMN T_PUB_AUDIT.SYBZ IS '使用标志(''Y'':表示使用,''N'':表示未使用)';
COMMENT ON COLUMN T_PUB_AUDIT.CJRXM IS '创建人姓名';
COMMENT ON COLUMN T_PUB_AUDIT.CJSJ IS '创建时间';
COMMENT ON COLUMN T_PUB_AUDIT.GXRXM IS '更新人姓名';
COMMENT ON COLUMN T_PUB_AUDIT.GXSJ IS '更新时间';
COMMENT ON COLUMN T_PUB_AUDIT.SJBB IS '数据版本';

-- ----------------------------
-- Table structure for T_PUB_AUTH
-- ----------------------------

CREATE TABLE T_PUB_AUTH (
YHBH VARCHAR2(32 BYTE) NULL ,
PXDM NUMBER(8) DEFAULT 0  NULL ,
SJBB NUMBER(8) DEFAULT 0  NULL ,
SYBZ CHAR(1 BYTE) DEFAULT 'Y'  NULL ,
CJRXM VARCHAR2(50 BYTE) DEFAULT '匿名'  NULL ,
CJSJ DATE DEFAULT SYSDATE  NULL ,
GXRXM VARCHAR2(50 BYTE) DEFAULT '匿名'  NULL ,
GXSJ DATE DEFAULT SYSDATE  NULL ,
SQID VARCHAR2(32 BYTE) NOT NULL ,
JSID VARCHAR2(32 BYTE) NULL ,
YYID VARCHAR2(32 BYTE) NULL 
);
COMMENT ON TABLE T_PUB_AUTH IS '授权表';
COMMENT ON COLUMN T_PUB_AUTH.YHBH IS '用户编号';
COMMENT ON COLUMN T_PUB_AUTH.PXDM IS '排序代码';
COMMENT ON COLUMN T_PUB_AUTH.SJBB IS '数据版本';
COMMENT ON COLUMN T_PUB_AUTH.SYBZ IS '用户使用标志(''Y'':表示使用,''N'':表示未使用)';
COMMENT ON COLUMN T_PUB_AUTH.CJRXM IS '创建人姓名';
COMMENT ON COLUMN T_PUB_AUTH.CJSJ IS '创建时间';
COMMENT ON COLUMN T_PUB_AUTH.GXRXM IS '更新人姓名';
COMMENT ON COLUMN T_PUB_AUTH.GXSJ IS '更新时间';
COMMENT ON COLUMN T_PUB_AUTH.SQID IS '授权id';
COMMENT ON COLUMN T_PUB_AUTH.JSID IS '关联角色id';

-- ----------------------------
-- Table structure for T_PUB_FILE
-- ----------------------------

CREATE TABLE T_PUB_FILE (
CCLJ VARCHAR2(64 BYTE) NOT NULL ,
WJM VARCHAR2(128 BYTE) NULL ,
WJDX NUMBER(32) NULL ,
WJGS VARCHAR2(32 BYTE) NULL ,
SSZB VARCHAR2(64 BYTE) NULL ,
SYBZ CHAR(1 BYTE) NULL ,
CJRXM VARCHAR2(32 BYTE) NULL ,
CJSJ DATE NULL 
);
COMMENT ON TABLE T_PUB_FILE IS '文件表';
COMMENT ON COLUMN T_PUB_FILE.CCLJ IS '存储路径';
COMMENT ON COLUMN T_PUB_FILE.WJM IS '文件名';
COMMENT ON COLUMN T_PUB_FILE.WJDX IS '文件大小';
COMMENT ON COLUMN T_PUB_FILE.WJGS IS '文件格式';
COMMENT ON COLUMN T_PUB_FILE.SSZB IS '所属主表，操作业务后回写';
COMMENT ON COLUMN T_PUB_FILE.SYBZ IS '使用标志(''Y'':表示使用,''N'':表示未使用)';
COMMENT ON COLUMN T_PUB_FILE.CJRXM IS '创建人姓名';
COMMENT ON COLUMN T_PUB_FILE.CJSJ IS '创建时间';

-- ----------------------------
-- Table structure for T_PUB_GPSSBXX
-- ----------------------------
CREATE TABLE T_PUB_GPSSBXX (
SBBH VARCHAR2(32 BYTE) NOT NULL ,
SBMC VARCHAR2(150 BYTE) NULL ,
ZZJGDM VARCHAR2(12 BYTE) NULL ,
ZZJGMC VARCHAR2(128 BYTE) NULL ,
SBLX VARCHAR2(2 BYTE) NULL ,
SBZT VARCHAR2(32 BYTE) NULL ,
SBZTGXSJ DATE NULL ,
LXDH VARCHAR2(32 BYTE) NULL ,
BDRYBH VARCHAR2(32 BYTE) NULL ,
BDRYMC VARCHAR2(32 BYTE) NULL ,
SZTHZ VARCHAR2(32 BYTE) NULL ,
SZTHZGXSJ DATE NULL ,
GZZT VARCHAR2(12 BYTE) NULL ,
GZZTSM VARCHAR2(64 BYTE) NULL ,
GZZTGXSJ DATE NULL ,
STGLZT VARCHAR2(12 BYTE) NULL ,
STGLZTSM VARCHAR2(64 BYTE) NULL ,
STGLZTGXSJ DATE NULL ,
CJR VARCHAR2(50 BYTE) NULL ,
CJSJ DATE NULL ,
GXR VARCHAR2(50 BYTE) NULL ,
GXSJ DATE NULL ,
SYBZ VARCHAR2(1 BYTE) NULL 
);
COMMENT ON TABLE T_PUB_GPSSBXX IS 'GPS设备属性表';
COMMENT ON COLUMN T_PUB_GPSSBXX.SBBH IS '设备编号';
COMMENT ON COLUMN T_PUB_GPSSBXX.SBMC IS '设备名称';
COMMENT ON COLUMN T_PUB_GPSSBXX.ZZJGDM IS '组织机构代码';
COMMENT ON COLUMN T_PUB_GPSSBXX.ZZJGMC IS '组织机构名称';
COMMENT ON COLUMN T_PUB_GPSSBXX.SBLX IS '设备类型';
COMMENT ON COLUMN T_PUB_GPSSBXX.SBZT IS '设备状态';
COMMENT ON COLUMN T_PUB_GPSSBXX.SBZTGXSJ IS '设备状态更新时间';
COMMENT ON COLUMN T_PUB_GPSSBXX.LXDH IS '联系电话';
COMMENT ON COLUMN T_PUB_GPSSBXX.BDRYBH IS '绑定人员编号';
COMMENT ON COLUMN T_PUB_GPSSBXX.BDRYMC IS '绑定人员名称';
COMMENT ON COLUMN T_PUB_GPSSBXX.SZTHZ IS '所在通话组';
COMMENT ON COLUMN T_PUB_GPSSBXX.SZTHZGXSJ IS '所在通话组更新时间';
COMMENT ON COLUMN T_PUB_GPSSBXX.GZZT IS '工作状态(30，31，32对应设备按了0，1，2键)';
COMMENT ON COLUMN T_PUB_GPSSBXX.GZZTSM IS '工作状态说明';
COMMENT ON COLUMN T_PUB_GPSSBXX.GZZTGXSJ IS '工作状态更新时间';
COMMENT ON COLUMN T_PUB_GPSSBXX.STGLZT IS '手台管理状态遥晕，遥毙，正常';
COMMENT ON COLUMN T_PUB_GPSSBXX.STGLZTSM IS '手台管理状态说明';
COMMENT ON COLUMN T_PUB_GPSSBXX.STGLZTGXSJ IS '手台管理状态更新时间';
COMMENT ON COLUMN T_PUB_GPSSBXX.CJR IS '创建人';
COMMENT ON COLUMN T_PUB_GPSSBXX.CJSJ IS '创建时间';
COMMENT ON COLUMN T_PUB_GPSSBXX.GXR IS '更新人';
COMMENT ON COLUMN T_PUB_GPSSBXX.GXSJ IS '更新时间';
COMMENT ON COLUMN T_PUB_GPSSBXX.SYBZ IS '使用标志(''Y'':表示使用,''N'':表示未使用)';

-- ----------------------------
-- Table structure for T_PUB_JQXZDM
-- ----------------------------

CREATE TABLE T_PUB_JQXZDM (
JQXZBH VARCHAR2(12 BYTE) NOT NULL ,
JQXZJC VARCHAR2(128 BYTE) NULL ,
JQXZJCPYM VARCHAR2(128 BYTE) NULL ,
JQXZQC VARCHAR2(128 BYTE) NULL ,
BZJQXZFBH VARCHAR2(12 BYTE) NULL ,
BZJQXZBH VARCHAR2(12 BYTE) NULL ,
BZJQXZMC VARCHAR2(128 BYTE) NULL ,
YHSYBZ110 CHAR(1 BYTE) DEFAULT 'Y'  NULL ,
YHSYBZ122 CHAR(1 BYTE) DEFAULT 'Y'  NULL ,
YHSYBZ120 CHAR(1 BYTE) DEFAULT 'Y'  NULL ,
YHSYBZ119 CHAR(1 BYTE) DEFAULT 'Y'  NULL ,
QTYHSYBZ CHAR(1 BYTE) DEFAULT 'Y'  NULL ,
JQXZYAURL VARCHAR2(256 BYTE) NULL ,
JJQXZDM VARCHAR2(12 BYTE) NULL ,
JJQXZMC VARCHAR2(128 BYTE) NULL ,
SJLYDM VARCHAR2(2 BYTE) NULL ,
SJLYMS VARCHAR2(64 BYTE) NULL ,
PXDM NUMBER(8) DEFAULT 0  NULL ,
SJBB NUMBER(8) DEFAULT 0  NULL ,
SYBZ CHAR(1 BYTE) DEFAULT 'Y'  NULL ,
CJR VARCHAR2(50 BYTE) DEFAULT '匿名'  NULL ,
CJSJ DATE DEFAULT SYSDATE  NOT NULL ,
GXR VARCHAR2(50 BYTE) DEFAULT '匿名'  NULL ,
GXSJ DATE DEFAULT SYSDATE  NOT NULL 
);
COMMENT ON TABLE T_PUB_JQXZDM IS '警情性质表';
COMMENT ON COLUMN T_PUB_JQXZDM.JQXZBH IS '警情性质编号(默认与标准警情性质编号一样)';
COMMENT ON COLUMN T_PUB_JQXZDM.JQXZJC IS '警情性质简称';
COMMENT ON COLUMN T_PUB_JQXZDM.JQXZJCPYM IS '警情性质简称拼音码';
COMMENT ON COLUMN T_PUB_JQXZDM.JQXZQC IS '警情性质全称';
COMMENT ON COLUMN T_PUB_JQXZDM.BZJQXZFBH IS '标准警情性质父编号';
COMMENT ON COLUMN T_PUB_JQXZDM.BZJQXZBH IS '标准警情性质编号';
COMMENT ON COLUMN T_PUB_JQXZDM.BZJQXZMC IS '标准警情性质名称';
COMMENT ON COLUMN T_PUB_JQXZDM.YHSYBZ110 IS '用户使用标志(''Y'':表示使用,''N'':表示未使用)';
COMMENT ON COLUMN T_PUB_JQXZDM.YHSYBZ122 IS '用户使用标志(''Y'':表示使用,''N'':表示未使用)';
COMMENT ON COLUMN T_PUB_JQXZDM.YHSYBZ120 IS '用户使用标志(''Y'':表示使用,''N'':表示未使用)';
COMMENT ON COLUMN T_PUB_JQXZDM.YHSYBZ119 IS '用户使用标志(''Y'':表示使用,''N'':表示未使用)';
COMMENT ON COLUMN T_PUB_JQXZDM.QTYHSYBZ IS '用户使用标志(''Y'':表示使用,''N'':表示未使用)';
COMMENT ON COLUMN T_PUB_JQXZDM.JQXZYAURL IS '警情性质预案地址';
COMMENT ON COLUMN T_PUB_JQXZDM.SJLYMS IS '数据类型(''1'':省厅标准,''2'':地市标准)';
COMMENT ON COLUMN T_PUB_JQXZDM.PXDM IS '排序代码';
COMMENT ON COLUMN T_PUB_JQXZDM.SJBB IS '数据版本';
COMMENT ON COLUMN T_PUB_JQXZDM.SYBZ IS '使用标志(''Y'':表示使用,''N'':表示未使用)';
COMMENT ON COLUMN T_PUB_JQXZDM.CJR IS '创建人';
COMMENT ON COLUMN T_PUB_JQXZDM.CJSJ IS '创建时间';
COMMENT ON COLUMN T_PUB_JQXZDM.GXR IS '更新人';
COMMENT ON COLUMN T_PUB_JQXZDM.GXSJ IS '更新时间';

-- ----------------------------
-- Table structure for T_PUB_JQXZSY
-- ----------------------------

CREATE TABLE T_PUB_JQXZSY (
JQXZSYID VARCHAR2(32 BYTE) DEFAULT SYS_GUID()  NOT NULL ,
JQXZBH VARCHAR2(12 BYTE) NULL ,
ZDBH VARCHAR2(32 BYTE) NULL ,
CJR VARCHAR2(50 BYTE) DEFAULT '匿名'  NULL ,
CJSJ DATE DEFAULT SYSDATE  NULL 
);
COMMENT ON TABLE T_PUB_JQXZSY IS '警情性质使用表';
COMMENT ON COLUMN T_PUB_JQXZSY.JQXZSYID IS '警情性质使用id';
COMMENT ON COLUMN T_PUB_JQXZSY.JQXZBH IS '警情性质编号(默认与标准警情性质编号一样)';
COMMENT ON COLUMN T_PUB_JQXZSY.ZDBH IS '字典编号';
COMMENT ON COLUMN T_PUB_JQXZSY.CJR IS '创建人';
COMMENT ON COLUMN T_PUB_JQXZSY.CJSJ IS '创建时间';
-- ----------------------------
-- Table structure for T_PUB_LOG
-- ----------------------------

CREATE TABLE T_PUB_LOG (
RZID VARCHAR2(32 BYTE) NOT NULL ,
XTM VARCHAR2(32 BYTE) NULL ,
FWLJ VARCHAR2(128 BYTE) NULL ,
KHDIP VARCHAR2(32 BYTE) NULL ,
JSCS VARCHAR2(2048 BYTE) NULL ,
SJZT CHAR(1 BYTE) NULL ,
CZMS VARCHAR2(512 BYTE) NULL ,
JRSJ NUMBER(13) NULL ,
FHSJ NUMBER(13) NULL ,
ZXSJ NUMBER(8) NULL ,
ZXZT CHAR(1 BYTE) NULL ,
YCXX VARCHAR2(2048 BYTE) NULL ,
CJRXM VARCHAR2(32 BYTE) NULL ,
CJSJ DATE NULL 
);
COMMENT ON TABLE T_PUB_LOG IS '日志表';
COMMENT ON COLUMN T_PUB_LOG.RZID IS '主键';
COMMENT ON COLUMN T_PUB_LOG.XTM IS '系统名';
COMMENT ON COLUMN T_PUB_LOG.FWLJ IS '访问路径';
COMMENT ON COLUMN T_PUB_LOG.KHDIP IS '客户端ip';
COMMENT ON COLUMN T_PUB_LOG.JSCS IS '接受参数';
--COMMENT ON COLUMN T_PUB_LOG.SJZT IS '未知';
--COMMENT ON COLUMN T_PUB_LOG.CZMS IS '未知';
COMMENT ON COLUMN T_PUB_LOG.JRSJ IS '进入时间';
COMMENT ON COLUMN T_PUB_LOG.FHSJ IS '返回时间';
COMMENT ON COLUMN T_PUB_LOG.ZXSJ IS '执行时间';
COMMENT ON COLUMN T_PUB_LOG.ZXZT IS '执行状态';
COMMENT ON COLUMN T_PUB_LOG.YCXX IS '异常信息';
COMMENT ON COLUMN T_PUB_LOG.CJRXM IS '创建人';
COMMENT ON COLUMN T_PUB_LOG.CJSJ IS '创建时间';

-- ----------------------------
-- Table structure for T_PUB_PARAM
-- ----------------------------

CREATE TABLE T_PUB_PARAM (
CSM VARCHAR2(64 BYTE) NOT NULL ,
CSZ VARCHAR2(512 BYTE) NULL ,
CSBZ VARCHAR2(512 BYTE) NULL ,
SYBZ CHAR(1 BYTE) NULL ,
CJRXM VARCHAR2(32 BYTE) NULL ,
CJSJ DATE NULL ,
GXRXM VARCHAR2(32 BYTE) NULL ,
GXSJ DATE NULL ,
SJBB NUMBER(8) NULL ,
ff VARCHAR2(255 BYTE) NULL ,
vvv VARCHAR2(255 BYTE) NULL ,
aaa VARCHAR2(255 BYTE) NULL 
);
COMMENT ON TABLE T_PUB_PARAM IS '系统参数表';
COMMENT ON COLUMN T_PUB_PARAM.CSM IS '参数名';
COMMENT ON COLUMN T_PUB_PARAM.CSZ IS '参数值';
COMMENT ON COLUMN T_PUB_PARAM.CSBZ IS '参数备注';
COMMENT ON COLUMN T_PUB_PARAM.SYBZ IS '使用标志(''Y'':表示使用,''N'':表示未使用)';
COMMENT ON COLUMN T_PUB_PARAM.CJRXM IS '创建人姓名';
COMMENT ON COLUMN T_PUB_PARAM.CJSJ IS '创建时间';
COMMENT ON COLUMN T_PUB_PARAM.GXRXM IS '更新人姓名';
COMMENT ON COLUMN T_PUB_PARAM.GXSJ IS '更新时间';
COMMENT ON COLUMN T_PUB_PARAM.SJBB IS '数据版本';

-- ----------------------------
-- Table structure for T_PUB_PDTTHZXX
-- ----------------------------
CREATE TABLE T_PUB_PDTTHZXX (
THZBH VARCHAR2(32 BYTE) NOT NULL ,
THZMC VARCHAR2(150 BYTE) NULL ,
ZZJGDM VARCHAR2(12 BYTE) NULL ,
ZZJGMC VARCHAR2(128 BYTE) NULL ,
THZLX VARCHAR2(2 BYTE) NULL ,
CJR VARCHAR2(50 BYTE) NULL ,
CJSJ DATE NULL ,
GXR VARCHAR2(50 BYTE) NULL ,
GXSJ DATE NULL ,
SYBZ VARCHAR2(1 BYTE) NULL 
);
COMMENT ON COLUMN T_PUB_PDTTHZXX.THZBH IS '通话组编号';
COMMENT ON COLUMN T_PUB_PDTTHZXX.THZMC IS '通话组名称';
COMMENT ON COLUMN T_PUB_PDTTHZXX.ZZJGDM IS '组织机构代码';
COMMENT ON COLUMN T_PUB_PDTTHZXX.ZZJGMC IS '组织机构名称';
COMMENT ON COLUMN T_PUB_PDTTHZXX.THZLX IS '通话组类型，0固定通话组，1动态通话组';
COMMENT ON COLUMN T_PUB_PDTTHZXX.CJR IS '创建人';
COMMENT ON COLUMN T_PUB_PDTTHZXX.CJSJ IS '创建时间';
COMMENT ON COLUMN T_PUB_PDTTHZXX.GXR IS '更新人';
COMMENT ON COLUMN T_PUB_PDTTHZXX.GXSJ IS '更新时间';
COMMENT ON COLUMN T_PUB_PDTTHZXX.SYBZ IS '使用标志(''Y'':表示使用,''N'':表示未使用)';

-- ----------------------------
-- Table structure for T_PUB_QTDWSBXX
-- ----------------------------
CREATE TABLE T_PUB_QTDWSBXX (
SBBH VARCHAR2(32 BYTE) NOT NULL ,
SBMC VARCHAR2(150 BYTE) NULL ,
ZZJGDM VARCHAR2(12 BYTE) NULL ,
ZZJGMC VARCHAR2(128 BYTE) NULL ,
SIM VARCHAR2(16 BYTE) NULL ,
SBLX VARCHAR2(10 BYTE) NULL ,
CJR VARCHAR2(50 BYTE) NULL ,
CJSJ DATE NULL ,
GXR VARCHAR2(50 BYTE) NULL ,
GXSJ DATE NULL ,
SYBZ VARCHAR2(1 BYTE) NULL 
)
;
COMMENT ON COLUMN T_PUB_QTDWSBXX.SBBH IS '设备编号';
COMMENT ON COLUMN T_PUB_QTDWSBXX.SBMC IS '设备名称';
COMMENT ON COLUMN T_PUB_QTDWSBXX.ZZJGDM IS '组织机构代码';
COMMENT ON COLUMN T_PUB_QTDWSBXX.ZZJGMC IS '组织机构名称';
COMMENT ON COLUMN T_PUB_QTDWSBXX.SIM IS 'SIM卡号';
COMMENT ON COLUMN T_PUB_QTDWSBXX.SBLX IS '设备类型';
COMMENT ON COLUMN T_PUB_QTDWSBXX.CJR IS '创建人';
COMMENT ON COLUMN T_PUB_QTDWSBXX.CJSJ IS '创建时间';
COMMENT ON COLUMN T_PUB_QTDWSBXX.GXR IS '更新人';
COMMENT ON COLUMN T_PUB_QTDWSBXX.GXSJ IS '更新时间';
COMMENT ON COLUMN T_PUB_QTDWSBXX.SYBZ IS '使用标志(''Y'':表示使用,''N'':表示未使用)';

-- ----------------------------
-- Table structure for T_PUB_RES
-- ----------------------------
CREATE TABLE T_PUB_RES (
ZYMC VARCHAR2(32 BYTE) NULL ,
ZYLX NUMBER(32) NULL ,
ZYTB VARCHAR2(64 BYTE) NULL ,
ZYFIDS VARCHAR2(64 BYTE) NULL ,
ZYURL VARCHAR2(128 BYTE) NULL ,
QXDM VARCHAR2(32 BYTE) NULL ,
PXDM NUMBER(8) NULL ,
SJBB NUMBER(8) NULL ,
SYBZ CHAR(1 BYTE) NULL ,
CJRXM VARCHAR2(50 BYTE) NULL ,
CJSJ DATE NULL ,
GXRXM VARCHAR2(50 BYTE) NULL ,
GXSJ DATE NULL ,
ZYID VARCHAR2(32 BYTE) NOT NULL ,
ZYFID VARCHAR2(32 BYTE) NULL ,
YYID VARCHAR2(32 BYTE) NULL 
);
COMMENT ON TABLE T_PUB_RES IS '资源表';
COMMENT ON COLUMN T_PUB_RES.ZYMC IS '资源名称';
COMMENT ON COLUMN T_PUB_RES.ZYLX IS '资源类型';
COMMENT ON COLUMN T_PUB_RES.ZYTB IS '资源图标';
COMMENT ON COLUMN T_PUB_RES.ZYFIDS IS '资源父id列表';
COMMENT ON COLUMN T_PUB_RES.ZYURL IS '资源url';
COMMENT ON COLUMN T_PUB_RES.QXDM IS '权限代码';
COMMENT ON COLUMN T_PUB_RES.PXDM IS '排序代码';
COMMENT ON COLUMN T_PUB_RES.SJBB IS '数据版本';
COMMENT ON COLUMN T_PUB_RES.SYBZ IS '使用标志(''Y'':表示使用,''N'':表示未使用)';
COMMENT ON COLUMN T_PUB_RES.CJRXM IS '创建人姓名';
COMMENT ON COLUMN T_PUB_RES.CJSJ IS '创建时间';
COMMENT ON COLUMN T_PUB_RES.GXRXM IS '更新人姓名';
COMMENT ON COLUMN T_PUB_RES.GXSJ IS '更新时间';
COMMENT ON COLUMN T_PUB_RES.ZYID IS '资源id';
COMMENT ON COLUMN T_PUB_RES.ZYFID IS '资源父id';
COMMENT ON COLUMN T_PUB_RES.YYID IS '应用id';


-- ----------------------------
-- Table structure for T_PUB_ROLE
-- ----------------------------
CREATE TABLE T_PUB_ROLE (
JSMC VARCHAR2(32 BYTE) NULL ,
JSMS VARCHAR2(256 BYTE) NULL ,
ZYIDS VARCHAR2(2048 BYTE) NULL ,
PXDM NUMBER(8) NULL ,
SJBB NUMBER(8) NULL ,
SYBZ CHAR(1 BYTE) NULL ,
CJRXM VARCHAR2(50 BYTE) NULL ,
CJSJ DATE NULL ,
GXRXM VARCHAR2(50 BYTE) NULL ,
GXSJ DATE NULL ,
JSID VARCHAR2(32 BYTE) NOT NULL ,
YYID VARCHAR2(32 BYTE) NULL ,
DMSX VARCHAR2(64 BYTE) NULL 
);
COMMENT ON TABLE T_PUB_ROLE IS '角色表';
COMMENT ON COLUMN T_PUB_ROLE.JSID IS '角色id';
COMMENT ON COLUMN T_PUB_ROLE.JSMC IS '角色名称';
COMMENT ON COLUMN T_PUB_ROLE.JSMS IS '角色描述';
COMMENT ON COLUMN T_PUB_ROLE.ZYIDS IS '授权的资源列表';
COMMENT ON COLUMN T_PUB_ROLE.PXDM IS '排序代码';
COMMENT ON COLUMN T_PUB_ROLE.SJBB IS '数据版本';
COMMENT ON COLUMN T_PUB_ROLE.SYBZ IS '使用标志(''Y'':表示使用,''N'':表示未使用)';
COMMENT ON COLUMN T_PUB_ROLE.CJRXM IS '创建人姓名';
COMMENT ON COLUMN T_PUB_ROLE.CJSJ IS '创建时间';
COMMENT ON COLUMN T_PUB_ROLE.GXRXM IS '更新人姓名';
COMMENT ON COLUMN T_PUB_ROLE.GXSJ IS '更新时间';
COMMENT ON COLUMN T_PUB_ROLE.YYID IS '应用id';
COMMENT ON COLUMN T_PUB_ROLE.DMSX IS '角色代码属性';

-- ----------------------------
-- Table structure for T_PUB_ROLE_RES
-- ----------------------------
CREATE TABLE T_PUB_ROLE_RES (
ID VARCHAR2(32 BYTE) NOT NULL ,
ZYID VARCHAR2(32 BYTE) NULL ,
JSID VARCHAR2(32 BYTE) NULL 
);
COMMENT ON TABLE T_PUB_ROLE_RES IS '资源-角色表';
COMMENT ON COLUMN T_PUB_ROLE_RES.ID IS '资源角色id';
COMMENT ON COLUMN T_PUB_ROLE_RES.ZYID IS '资源id';
COMMENT ON COLUMN T_PUB_ROLE_RES.JSID IS '角色id';


-- ----------------------------
-- Table structure for T_PUB_RYXX
-- ----------------------------

CREATE TABLE T_PUB_RYXX (
RYBH VARCHAR2(32 BYTE) DEFAULT sys_guid()  NOT NULL ,
RYXM VARCHAR2(50 BYTE) NULL ,
RYJH VARCHAR2(12 BYTE) NULL ,
SFZBH VARCHAR2(18 BYTE) NULL ,
RYXB VARCHAR2(2 BYTE) NULL ,
XBMS VARCHAR2(64 BYTE) NULL ,
CSNY DATE NULL ,
RYZT VARCHAR2(2 BYTE) NULL ,
RYZTMS VARCHAR2(64 BYTE) NULL ,
RYZW VARCHAR2(2 BYTE) NULL ,
ZWMS VARCHAR2(64 BYTE) NULL ,
XZQH VARCHAR2(10 BYTE) NULL ,
ZHZXBH VARCHAR2(6 BYTE) NULL ,
SSDWDM VARCHAR2(30 BYTE) NULL ,
SSDWMC VARCHAR2(128 BYTE) NULL ,
JWTHM VARCHAR2(11 BYTE) NULL ,
DHHM VARCHAR2(256 BYTE) NULL ,
DTHM VARCHAR2(256 BYTE) NULL ,
YJDZ VARCHAR2(256 BYTE) NULL ,
RYZZ VARCHAR2(256 BYTE) NULL ,
PXDM NUMBER(8) DEFAULT 0  NULL ,
SJBB NUMBER(8) DEFAULT 0  NULL ,
SYBZ CHAR(1 BYTE) DEFAULT 'Y'  NULL ,
CJR VARCHAR2(50 BYTE) DEFAULT '匿名'  NULL ,
CJSJ DATE DEFAULT SYSDATE  NOT NULL ,
GXR VARCHAR2(50 BYTE) DEFAULT '匿名'  NULL ,
GXSJ DATE DEFAULT SYSDATE  NOT NULL 
);
COMMENT ON TABLE T_PUB_RYXX IS '人员信息表';
COMMENT ON COLUMN T_PUB_RYXX.RYBH IS '人员编号';
COMMENT ON COLUMN T_PUB_RYXX.RYXM IS '人员姓名';
COMMENT ON COLUMN T_PUB_RYXX.RYJH IS '人员警号';
COMMENT ON COLUMN T_PUB_RYXX.SFZBH IS '身份证编号';
COMMENT ON COLUMN T_PUB_RYXX.RYXB IS '人员性别';
COMMENT ON COLUMN T_PUB_RYXX.XBMS IS '性别描述';
COMMENT ON COLUMN T_PUB_RYXX.CSNY IS '出生年月';
COMMENT ON COLUMN T_PUB_RYXX.RYZT IS '人员状态';
COMMENT ON COLUMN T_PUB_RYXX.RYZTMS IS '人员状态描述(1:在职，2：离休等)';
COMMENT ON COLUMN T_PUB_RYXX.ZWMS IS '职务描述(1：局长，2：副局长等)';
COMMENT ON COLUMN T_PUB_RYXX.XZQH IS '行政区划';
COMMENT ON COLUMN T_PUB_RYXX.ZHZXBH IS '指挥中心编号';
COMMENT ON COLUMN T_PUB_RYXX.SSDWDM IS '所属单位代码';
COMMENT ON COLUMN T_PUB_RYXX.SSDWMC IS '所属单位名称';
COMMENT ON COLUMN T_PUB_RYXX.JWTHM IS '警务通号码';
COMMENT ON COLUMN T_PUB_RYXX.DHHM IS '电话号码（多个用逗号隔开)';
COMMENT ON COLUMN T_PUB_RYXX.DTHM IS '电台号码（多个用逗号隔开)';
COMMENT ON COLUMN T_PUB_RYXX.YJDZ IS '邮件地址（多个用逗号隔开)';
COMMENT ON COLUMN T_PUB_RYXX.RYZZ IS '人员住址';
COMMENT ON COLUMN T_PUB_RYXX.PXDM IS '排序代码';
COMMENT ON COLUMN T_PUB_RYXX.SJBB IS '数据版本';
COMMENT ON COLUMN T_PUB_RYXX.SYBZ IS '用户使用标志(''Y'':表示使用,''N'':表示未使用)';
COMMENT ON COLUMN T_PUB_RYXX.CJR IS '创建人';
COMMENT ON COLUMN T_PUB_RYXX.CJSJ IS '创建时间';
COMMENT ON COLUMN T_PUB_RYXX.GXR IS '创建人';
COMMENT ON COLUMN T_PUB_RYXX.GXSJ IS '创建时间';
-- ----------------------------
-- Table structure for T_PUB_SCHEDULE
-- ----------------------------

CREATE TABLE T_PUB_SCHEDULE (
RWID VARCHAR2(32 BYTE) NOT NULL ,
FWDM VARCHAR2(32 BYTE) NULL ,
RWMC VARCHAR2(32 BYTE) NULL ,
CRON VARCHAR2(64 BYTE) NULL ,
CRONMS VARCHAR2(256 BYTE) NULL ,
RWMS VARCHAR2(512 BYTE) NULL ,
LM VARCHAR2(256 BYTE) NULL ,
FFM VARCHAR2(64 BYTE) NULL ,
PXDM NUMBER(8) NULL ,
SJBB NUMBER(8) DEFAULT 0  NULL ,
RWZT CHAR(1 BYTE) DEFAULT 'Y'  NULL ,
SYBZ CHAR(1 BYTE) DEFAULT 'Y'  NULL ,
CJR VARCHAR2(32 BYTE) DEFAULT '匿名'  NULL ,
CJSJ DATE DEFAULT SYSDATE  NULL ,
GXR VARCHAR2(32 BYTE) DEFAULT '匿名'  NULL ,
GXSJ DATE DEFAULT SYSDATE  NULL 
);
COMMENT ON TABLE T_PUB_SCHEDULE IS '定时任务';
COMMENT ON COLUMN T_PUB_SCHEDULE.RWID IS '任务ID';
COMMENT ON COLUMN T_PUB_SCHEDULE.FWDM IS '服务代码';
COMMENT ON COLUMN T_PUB_SCHEDULE.RWMC IS '任务名称';
COMMENT ON COLUMN T_PUB_SCHEDULE.CRON IS 'cron表达式';
COMMENT ON COLUMN T_PUB_SCHEDULE.CRONMS IS 'cron描述';
COMMENT ON COLUMN T_PUB_SCHEDULE.RWMS IS '任务描述';
COMMENT ON COLUMN T_PUB_SCHEDULE.LM IS '类名';
COMMENT ON COLUMN T_PUB_SCHEDULE.FFM IS '方法名';
COMMENT ON COLUMN T_PUB_SCHEDULE.PXDM IS '排序代码';
COMMENT ON COLUMN T_PUB_SCHEDULE.SJBB IS '数据版本';
COMMENT ON COLUMN T_PUB_SCHEDULE.RWZT IS '任务状态(S,生产T.调试)';
COMMENT ON COLUMN T_PUB_SCHEDULE.SYBZ IS '使用标志(''Y'':表示使用,''N'':表示未使用)';
COMMENT ON COLUMN T_PUB_SCHEDULE.CJR IS '创建人姓名';
COMMENT ON COLUMN T_PUB_SCHEDULE.CJSJ IS '创建时间';
COMMENT ON COLUMN T_PUB_SCHEDULE.GXR IS '更新人姓名';
COMMENT ON COLUMN T_PUB_SCHEDULE.GXSJ IS '更新时间';

-- ----------------------------
-- Table structure for T_PUB_SCHLOG
-- ----------------------------
CREATE TABLE T_PUB_SCHLOG (
RWZXID VARCHAR2(128 BYTE) NOT NULL ,
FWDM VARCHAR2(32 BYTE) NULL ,
RWMC VARCHAR2(32 BYTE) NULL ,
CRON VARCHAR2(64 BYTE) NULL ,
LM VARCHAR2(256 BYTE) NULL ,
FFM VARCHAR2(64 BYTE) NULL ,
ZXIP VARCHAR2(32 BYTE) NULL ,
JRSJ NUMBER(13) NULL ,
FHSJ NUMBER(13) NULL ,
ZXSJ NUMBER(8) NULL ,
ZXZT CHAR(1 BYTE) NULL ,
YCXX VARCHAR2(2048 BYTE) NULL ,
CJSJ DATE NULL ,
SJBB NUMBER(8) NULL 
);
COMMENT ON TABLE T_PUB_SCHLOG IS '定时任务日志';
COMMENT ON COLUMN T_PUB_SCHLOG.RWZXID IS '任务执行ID';
COMMENT ON COLUMN T_PUB_SCHLOG.FWDM IS '服务代码';
COMMENT ON COLUMN T_PUB_SCHLOG.RWMC IS '任务名称';
COMMENT ON COLUMN T_PUB_SCHLOG.CRON IS 'cron表达式';
COMMENT ON COLUMN T_PUB_SCHLOG.LM IS '类名';
COMMENT ON COLUMN T_PUB_SCHLOG.FFM IS '方法名';
COMMENT ON COLUMN T_PUB_SCHLOG.ZXIP IS '服务端IP';
COMMENT ON COLUMN T_PUB_SCHLOG.JRSJ IS '进入时间';
COMMENT ON COLUMN T_PUB_SCHLOG.FHSJ IS '返回时间';
COMMENT ON COLUMN T_PUB_SCHLOG.ZXSJ IS '执行时间';
COMMENT ON COLUMN T_PUB_SCHLOG.ZXZT IS '执行状态';
COMMENT ON COLUMN T_PUB_SCHLOG.YCXX IS '异常信息';
COMMENT ON COLUMN T_PUB_SCHLOG.CJSJ IS '创建时间';
COMMENT ON COLUMN T_PUB_SCHLOG.SJBB IS '数据版本';

-- ----------------------------
-- Table structure for T_PUB_SQXXB
-- ----------------------------
CREATE TABLE T_PUB_SQXXB (
SQBH VARCHAR2(32 BYTE) DEFAULT sys_guid()  NULL ,
SQIP VARCHAR2(32 BYTE) NULL ,
SSJK VARCHAR2(100 BYTE) NULL ,
DYDWDM VARCHAR2(12 BYTE) NULL ,
DYDWMC VARCHAR2(100 BYTE) NULL ,
DYYH VARCHAR2(100 BYTE) DEFAULT '匿名'  NULL ,
DYPTDM VARCHAR2(30 BYTE) NULL ,
DYPTMS VARCHAR2(100 BYTE) NULL ,
SYBZ VARCHAR2(1 BYTE) DEFAULT 1  NULL ,
CJR VARCHAR2(100 BYTE) DEFAULT '匿名'  NULL ,
CJSJ DATE DEFAULT sysdate  NULL ,
GXR VARCHAR2(100 BYTE) DEFAULT '匿名'  NULL ,
GXSJ DATE DEFAULT sysdate  NULL 
);
COMMENT ON TABLE T_PUB_SQXXB IS '授权信息表';
COMMENT ON COLUMN T_PUB_SQXXB.SQBH IS '授权编号';
COMMENT ON COLUMN T_PUB_SQXXB.SQIP IS '授权IP';
COMMENT ON COLUMN T_PUB_SQXXB.SSJK IS '所属接口';
COMMENT ON COLUMN T_PUB_SQXXB.DYDWDM IS '调用单位代码';
COMMENT ON COLUMN T_PUB_SQXXB.DYDWMC IS '调用单位名称';
COMMENT ON COLUMN T_PUB_SQXXB.DYYH IS '调用用户';
COMMENT ON COLUMN T_PUB_SQXXB.DYPTDM IS '调用平台代码';
COMMENT ON COLUMN T_PUB_SQXXB.DYPTMS IS '调用平台描述';
COMMENT ON COLUMN T_PUB_SQXXB.SYBZ IS '使用标志(''Y'':表示使用,''N'':表示未使用)';
COMMENT ON COLUMN T_PUB_SQXXB.CJR IS '创建人';
COMMENT ON COLUMN T_PUB_SQXXB.CJSJ IS '创建时间';
COMMENT ON COLUMN T_PUB_SQXXB.GXR IS '更新人';
COMMENT ON COLUMN T_PUB_SQXXB.GXSJ IS '更新时间';

-- ----------------------------
-- Table structure for T_PUB_USER
-- ---------------------------

CREATE TABLE T_PUB_USER (
YHBH VARCHAR2(32 BYTE) NOT NULL ,
YHZH VARCHAR2(32 BYTE) NOT NULL ,
YHMM VARCHAR2(64 BYTE) NOT NULL ,
YHMC VARCHAR2(32 BYTE) NOT NULL ,
PKIID VARCHAR2(32 BYTE) NULL ,
LXDH VARCHAR2(64 BYTE) NULL ,
XZQH VARCHAR2(8 BYTE) NULL ,
SSDWDM VARCHAR2(16 BYTE) NULL ,
SSDWMC VARCHAR2(128 BYTE) NULL ,
DLDWDM VARCHAR2(16 BYTE) NULL ,
DLDWMC VARCHAR2(128 BYTE) NULL ,
ZCIP VARCHAR2(512 BYTE) NULL ,
PXDM NUMBER(8) DEFAULT 0  NULL ,
SJBB NUMBER(8) DEFAULT 0  NULL ,
SYBZ CHAR(1 BYTE) DEFAULT 'Y'  NULL ,
CJRXM VARCHAR2(50 BYTE) DEFAULT '匿名'  NULL ,
CJSJ DATE DEFAULT SYSDATE  NOT NULL ,
GXRXM VARCHAR2(50 BYTE) DEFAULT '匿名'  NULL ,
GXSJ DATE DEFAULT SYSDATE  NULL ,
RYBH VARCHAR2(100 BYTE) NULL 
);
COMMENT ON TABLE T_PUB_USER IS '用户表';
COMMENT ON COLUMN T_PUB_USER.RYBH IS '人员编号';
COMMENT ON COLUMN T_PUB_USER.YHBH IS '用户编号';
COMMENT ON COLUMN T_PUB_USER.YHZH IS '用户账号';
COMMENT ON COLUMN T_PUB_USER.YHMM IS '用户密码';
COMMENT ON COLUMN T_PUB_USER.YHMC IS '用户名称';
COMMENT ON COLUMN T_PUB_USER.PKIID IS 'PKIID';
COMMENT ON COLUMN T_PUB_USER.LXDH IS '联系电话';
COMMENT ON COLUMN T_PUB_USER.XZQH IS '行政区划';
COMMENT ON COLUMN T_PUB_USER.SSDWDM IS '所属单位代码';
COMMENT ON COLUMN T_PUB_USER.SSDWMC IS '所属单位名称';
COMMENT ON COLUMN T_PUB_USER.DLDWDM IS '代理单位代码';
COMMENT ON COLUMN T_PUB_USER.DLDWMC IS '代理单位名称';
COMMENT ON COLUMN T_PUB_USER.ZCIP IS '注册IP';
COMMENT ON COLUMN T_PUB_USER.PXDM IS '排序代码';
COMMENT ON COLUMN T_PUB_USER.SYBZ IS '用户使用标志(''Y'':表示使用,''N'':表示未使用)';
COMMENT ON COLUMN T_PUB_USER.CJRXM IS '创建人姓名';
COMMENT ON COLUMN T_PUB_USER.CJSJ IS '创建时间';
COMMENT ON COLUMN T_PUB_USER.GXRXM IS '更新人姓名';
COMMENT ON COLUMN T_PUB_USER.GXSJ IS '更新时间';

-- ----------------------------
-- Table structure for T_PUB_XTZD
-- ----------------------------
CREATE TABLE T_PUB_XTZD (
BH VARCHAR2(32 BYTE) DEFAULT sys_guid()  NOT NULL ,
ZDBH VARCHAR2(128 BYTE) NULL ,
ZDXM VARCHAR2(64 BYTE) NULL ,
ZDXZ VARCHAR2(128 BYTE) NULL ,
PYM VARCHAR2(100 BYTE) NULL ,
ZDFBH VARCHAR2(32 BYTE) NULL ,
JHDM VARCHAR2(32 BYTE) NULL ,
SJMS VARCHAR2(255 BYTE) NULL ,
PXDM NUMBER(8) DEFAULT 0  NULL ,
SJBB NUMBER(8) DEFAULT 0  NULL ,
SYBZ CHAR(1 BYTE) DEFAULT 'Y'  NULL ,
CJR VARCHAR2(50 BYTE) DEFAULT '匿名'  NULL ,
CJSJ DATE DEFAULT SYSDATE  NULL ,
GXR VARCHAR2(50 BYTE) DEFAULT '匿名'  NULL ,
GXSJ DATE DEFAULT SYSDATE  NULL ,
YYID VARCHAR2(32 BYTE) NULL 
);
COMMENT ON TABLE T_PUB_XTZD IS '系统字典表';
COMMENT ON COLUMN T_PUB_XTZD.BH IS '主键';
COMMENT ON COLUMN T_PUB_XTZD.ZDBH IS '字典编号';
COMMENT ON COLUMN T_PUB_XTZD.ZDXM IS '字典项名称';
COMMENT ON COLUMN T_PUB_XTZD.ZDXZ IS '字典项值';
COMMENT ON COLUMN T_PUB_XTZD.PYM IS '拼音码';
COMMENT ON COLUMN T_PUB_XTZD.ZDFBH IS '字典父编号';
COMMENT ON COLUMN T_PUB_XTZD.JHDM IS '交换代码';
COMMENT ON COLUMN T_PUB_XTZD.SJMS IS '数据描述';
COMMENT ON COLUMN T_PUB_XTZD.PXDM IS '排序代码';
COMMENT ON COLUMN T_PUB_XTZD.SJBB IS '数据版本';
COMMENT ON COLUMN T_PUB_XTZD.SYBZ IS '使用标志(''Y'':表示使用,''N'':表示未使用)';
COMMENT ON COLUMN T_PUB_XTZD.CJR IS '创建人';
COMMENT ON COLUMN T_PUB_XTZD.CJSJ IS '创建时间';
COMMENT ON COLUMN T_PUB_XTZD.GXR IS '更新人';
COMMENT ON COLUMN T_PUB_XTZD.GXSJ IS '更新时间';
COMMENT ON COLUMN T_PUB_XTZD.YYID IS '应用id';

-- ----------------------------
-- Table structure for T_PUB_ZZJG
-- ----------------------------
CREATE TABLE T_PUB_ZZJG (
DWDM VARCHAR2(12 BYTE) NOT NULL ,
DWJC VARCHAR2(70 BYTE) NULL ,
JCPYM VARCHAR2(70 BYTE) NULL ,
DWMC VARCHAR2(128 BYTE) NULL ,
DHHM VARCHAR2(256 BYTE) NULL ,
CZHM VARCHAR2(256 BYTE) NULL ,
DTHM VARCHAR2(256 BYTE) NULL ,
YJDZ VARCHAR2(256 BYTE) NULL ,
JHDWDM VARCHAR2(32 BYTE) NULL ,
JHDWMC VARCHAR2(128 BYTE) NULL ,
GXDWDM VARCHAR2(12 BYTE) NULL ,
GXDWJC VARCHAR2(70 BYTE) NULL ,
DWLB VARCHAR2(2 BYTE) NULL ,
DWLBMS VARCHAR2(64 BYTE) NULL ,
DWJB VARCHAR2(8 BYTE) NULL ,
DWJBMS VARCHAR2(64 BYTE) NULL ,
SLMS VARCHAR2(2048 BYTE) NULL ,
YHSYBZ110 CHAR(1 BYTE) NULL ,
YHSYBZ122 CHAR(1 BYTE) NULL ,
YHSYBZ120 CHAR(1 BYTE) NULL ,
YHSYBZ119 CHAR(1 BYTE) NULL ,
QTYHSYBZ CHAR(1 BYTE) NULL ,
DCSC NUMBER(2) NULL ,
KJJZ VARCHAR2(12 BYTE) NULL ,
DWDZ VARCHAR2(256 BYTE) NULL ,
ZGDWDM VARCHAR2(12 BYTE) NULL ,
ZGDWMC VARCHAR2(128 BYTE) NULL ,
XGBZ VARCHAR2(256 BYTE) NULL ,
DLDWDM VARCHAR2(12 BYTE) NULL ,
DLDWMC VARCHAR2(128 BYTE) NULL ,
XZB VARCHAR2(100 BYTE) NULL ,
YZB VARCHAR2(100 BYTE) NULL ,
SJLYDM VARCHAR2(2 BYTE) NULL ,
SJLYDMMS VARCHAR2(64 BYTE) NULL ,
PXDM NUMBER(8) NULL ,
SJBB NUMBER(8) NULL ,
SYBZ CHAR(1 BYTE) NULL ,
CJR VARCHAR2(50 BYTE) NULL ,
CJSJ DATE NOT NULL ,
GXR VARCHAR2(50 BYTE) NULL ,
GXSJ DATE NOT NULL 
);
COMMENT ON TABLE T_PUB_ZZJG IS '组织机构表';
COMMENT ON COLUMN T_PUB_ZZJG.DWDM IS '单位代码';
COMMENT ON COLUMN T_PUB_ZZJG.DWJC IS '单位简称';
COMMENT ON COLUMN T_PUB_ZZJG.JCPYM IS '简称拼音码';
COMMENT ON COLUMN T_PUB_ZZJG.DWMC IS '单位名称';
COMMENT ON COLUMN T_PUB_ZZJG.DHHM IS '电话号码';
COMMENT ON COLUMN T_PUB_ZZJG.CZHM IS '传真号码';
COMMENT ON COLUMN T_PUB_ZZJG.DTHM IS '电台号码';
COMMENT ON COLUMN T_PUB_ZZJG.YJDZ IS '邮件地址';
COMMENT ON COLUMN T_PUB_ZZJG.JHDWDM IS '交换单位代码';
COMMENT ON COLUMN T_PUB_ZZJG.JHDWMC IS '交换单位名称';
COMMENT ON COLUMN T_PUB_ZZJG.GXDWDM IS '管辖单位代码';
COMMENT ON COLUMN T_PUB_ZZJG.GXDWJC IS '管辖单位简称';
COMMENT ON COLUMN T_PUB_ZZJG.DWLB IS '单位类别';
COMMENT ON COLUMN T_PUB_ZZJG.DWLBMS IS '单位类别描述';
COMMENT ON COLUMN T_PUB_ZZJG.DWJB IS '单位级别';
COMMENT ON COLUMN T_PUB_ZZJG.DWJBMS IS '单位级别描述';
COMMENT ON COLUMN T_PUB_ZZJG.SLMS IS '实力描述';
COMMENT ON COLUMN T_PUB_ZZJG.DWJBMS IS '单位级别描述';
COMMENT ON COLUMN T_PUB_ZZJG.QTYHSYBZ IS '其他使用标志';
COMMENT ON COLUMN T_PUB_ZZJG.DCSC IS '到场时长';
COMMENT ON COLUMN T_PUB_ZZJG.KJJZ IS '快捷键值';
COMMENT ON COLUMN T_PUB_ZZJG.DWDZ IS '单位地址';
COMMENT ON COLUMN T_PUB_ZZJG.ZGDWDM IS '政工单位代码';
COMMENT ON COLUMN T_PUB_ZZJG.ZGDWMC IS '政工单位名称';
COMMENT ON COLUMN T_PUB_ZZJG.XGBZ IS '单位字典修改情况备注';
COMMENT ON COLUMN T_PUB_ZZJG.DLDWDM IS '代理单位代码';
COMMENT ON COLUMN T_PUB_ZZJG.DLDWMC IS '代理单位名称';
COMMENT ON COLUMN T_PUB_ZZJG.XZB IS 'x坐标';
COMMENT ON COLUMN T_PUB_ZZJG.YZB IS 'y坐标';
COMMENT ON COLUMN T_PUB_ZZJG.SJLYDM IS '数据来源代码';
COMMENT ON COLUMN T_PUB_ZZJG.SJLYDMMS IS '数据来源代码描述';
COMMENT ON COLUMN T_PUB_ZZJG.PXDM IS '排序代码';
COMMENT ON COLUMN T_PUB_ZZJG.SJBB IS '数据版本';
COMMENT ON COLUMN T_PUB_ZZJG.SYBZ IS '使用标志';
COMMENT ON COLUMN T_PUB_ZZJG.CJR IS '创建人';
COMMENT ON COLUMN T_PUB_ZZJG.CJSJ IS '创建时间';
COMMENT ON COLUMN T_PUB_ZZJG.GXR IS '更新人';
COMMENT ON COLUMN T_PUB_ZZJG.GXSJ IS '更新时间';
-- ----------------------------
-- Table structure for T_PUB_ZZJGSY
-- ----------------------------

CREATE TABLE T_PUB_ZZJGSY (
ZZJGSYID VARCHAR2(32 BYTE) DEFAULT sys_guid()  NULL ,
ZDBH VARCHAR2(32 BYTE) NULL ,
DWDM VARCHAR2(12 BYTE) NULL ,
CJR VARCHAR2(50 BYTE) NULL ,
CJSJ DATE DEFAULT SYSDATE  NULL 
);
COMMENT ON TABLE T_PUB_ZZJGSY IS '组织机构使用表';
COMMENT ON COLUMN T_PUB_ZZJGSY.ZZJGSYID IS '组织结构使用ID';
COMMENT ON COLUMN T_PUB_ZZJGSY.ZDBH IS '字典编号';
COMMENT ON COLUMN T_PUB_ZZJGSY.DWDM IS '单位代码';
COMMENT ON COLUMN T_PUB_ZZJGSY.CJR IS '创建人';
COMMENT ON COLUMN T_PUB_ZZJGSY.CJSJ IS '创建时间';

-- ----------------------------
-- Table structure for T_XDH_COPY
-- ----------------------------
CREATE TABLE T_XDH_COPY (
ID VARCHAR2(32 BYTE) NOT NULL ,
DATA_ID VARCHAR2(32 BYTE) NULL ,
DATA VARCHAR2(2000 BYTE) NULL ,
TYPE VARCHAR2(32 BYTE) NULL 
);
COMMENT ON TABLE T_XDH_COPY IS '新德汇同步中间表';
COMMENT ON COLUMN T_XDH_COPY.ID IS 'id';
COMMENT ON COLUMN T_XDH_COPY.DATA_ID IS '数据id';
COMMENT ON COLUMN T_XDH_COPY.DATA IS '记录json';
COMMENT ON COLUMN T_XDH_COPY.TYPE IS '类型';

-- ----------------------------
-- Indexes structure for table T_PUB_APP
-- ----------------------------

-- ----------------------------
-- Checks structure for table T_PUB_APP
-- ----------------------------
ALTER TABLE T_PUB_APP ADD CHECK (CJSJ IS NOT NULL);
ALTER TABLE T_PUB_APP ADD CHECK (GXSJ IS NOT NULL);
ALTER TABLE T_PUB_APP ADD CHECK (YYID IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table T_PUB_APP
-- ----------------------------
ALTER TABLE T_PUB_APP ADD PRIMARY KEY (YYID);

-- ----------------------------
-- Indexes structure for table T_PUB_AUDIT
-- ----------------------------

-- ----------------------------
-- Checks structure for table T_PUB_AUDIT
-- ----------------------------
ALTER TABLE T_PUB_AUDIT ADD CHECK (SJID IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table T_PUB_AUDIT
-- ----------------------------
ALTER TABLE T_PUB_AUDIT ADD PRIMARY KEY (SJID);

-- ----------------------------
-- Indexes structure for table T_PUB_AUTH
-- ----------------------------

-- ----------------------------
-- Checks structure for table T_PUB_AUTH
-- ----------------------------
ALTER TABLE T_PUB_AUTH ADD CHECK (SQID IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table T_PUB_AUTH
-- ----------------------------
ALTER TABLE T_PUB_AUTH ADD PRIMARY KEY (SQID);

-- ----------------------------
-- Indexes structure for table T_PUB_FILE
-- ----------------------------

-- ----------------------------
-- Checks structure for table T_PUB_FILE
-- ----------------------------
ALTER TABLE T_PUB_FILE ADD CHECK (CCLJ IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table T_PUB_FILE
-- ----------------------------
ALTER TABLE T_PUB_FILE ADD PRIMARY KEY (CCLJ);

-- ----------------------------
-- Indexes structure for table T_PUB_GPSSBXX
-- ----------------------------

-- ----------------------------
-- Checks structure for table T_PUB_GPSSBXX
-- ----------------------------
ALTER TABLE T_PUB_GPSSBXX ADD CHECK (SBBH IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table T_PUB_GPSSBXX
-- ----------------------------
ALTER TABLE T_PUB_GPSSBXX ADD PRIMARY KEY (SBBH);

-- ----------------------------
-- Indexes structure for table T_PUB_JQXZDM
-- ----------------------------

-- ----------------------------
-- Checks structure for table T_PUB_JQXZDM
-- ----------------------------
ALTER TABLE T_PUB_JQXZDM ADD CHECK (JQXZBH IS NOT NULL);
ALTER TABLE T_PUB_JQXZDM ADD CHECK (CJSJ IS NOT NULL);
ALTER TABLE T_PUB_JQXZDM ADD CHECK (GXSJ IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table T_PUB_JQXZDM
-- ----------------------------
ALTER TABLE T_PUB_JQXZDM ADD PRIMARY KEY (JQXZBH);

-- ----------------------------
-- Indexes structure for table T_PUB_JQXZSY
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table T_PUB_JQXZSY
-- ----------------------------
ALTER TABLE T_PUB_JQXZSY ADD PRIMARY KEY (JQXZSYID);

-- ----------------------------
-- Indexes structure for table T_PUB_LOG
-- ----------------------------

-- ----------------------------
-- Checks structure for table T_PUB_LOG
-- ----------------------------
ALTER TABLE T_PUB_LOG ADD CHECK (RZID IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table T_PUB_LOG
-- ----------------------------
ALTER TABLE T_PUB_LOG ADD PRIMARY KEY (RZID);

-- ----------------------------
-- Indexes structure for table T_PUB_PARAM
-- ----------------------------

-- ----------------------------
-- Checks structure for table T_PUB_PARAM
-- ----------------------------
ALTER TABLE T_PUB_PARAM ADD CHECK (CSM IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table T_PUB_PARAM
-- ----------------------------
ALTER TABLE T_PUB_PARAM ADD PRIMARY KEY (CSM);

-- ----------------------------
-- Indexes structure for table T_PUB_PDTTHZXX
-- ----------------------------

-- ----------------------------
-- Checks structure for table T_PUB_PDTTHZXX
-- ----------------------------
ALTER TABLE T_PUB_PDTTHZXX ADD CHECK (THZBH IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table T_PUB_PDTTHZXX
-- ----------------------------
ALTER TABLE T_PUB_PDTTHZXX ADD PRIMARY KEY (THZBH);

-- ----------------------------
-- Checks structure for table T_PUB_QTDWSBXX
-- ----------------------------
ALTER TABLE T_PUB_QTDWSBXX ADD CHECK (SBBH IS NOT NULL);

-- ----------------------------
-- Indexes structure for table T_PUB_RES
-- ----------------------------

-- ----------------------------
-- Checks structure for table T_PUB_RES
-- ----------------------------
ALTER TABLE T_PUB_RES ADD CHECK (ZYID IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table T_PUB_RES
-- ----------------------------
ALTER TABLE T_PUB_RES ADD PRIMARY KEY (ZYID);

-- ----------------------------
-- Indexes structure for table T_PUB_ROLE
-- ----------------------------

-- ----------------------------
-- Checks structure for table T_PUB_ROLE
-- ----------------------------
ALTER TABLE T_PUB_ROLE ADD CHECK (JSID IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table T_PUB_ROLE
-- ----------------------------
ALTER TABLE T_PUB_ROLE ADD PRIMARY KEY (JSID);

-- ----------------------------
-- Indexes structure for table T_PUB_ROLE_RES
-- ----------------------------

-- ----------------------------
-- Checks structure for table T_PUB_ROLE_RES
-- ----------------------------
ALTER TABLE T_PUB_ROLE_RES ADD CHECK (ID IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table T_PUB_ROLE_RES
-- ----------------------------
ALTER TABLE T_PUB_ROLE_RES ADD PRIMARY KEY (ID);

-- ----------------------------
-- Indexes structure for table T_PUB_RYXX
-- ----------------------------

-- ----------------------------
-- Checks structure for table T_PUB_RYXX
-- ----------------------------
ALTER TABLE T_PUB_RYXX ADD CHECK (RYBH IS NOT NULL);
ALTER TABLE T_PUB_RYXX ADD CHECK (CJSJ IS NOT NULL);
ALTER TABLE T_PUB_RYXX ADD CHECK (GXSJ IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table T_PUB_RYXX
-- ----------------------------
ALTER TABLE T_PUB_RYXX ADD PRIMARY KEY (RYBH);

-- ----------------------------
-- Indexes structure for table T_PUB_SCHEDULE
-- ----------------------------

-- ----------------------------
-- Checks structure for table T_PUB_SCHEDULE
-- ----------------------------
ALTER TABLE T_PUB_SCHEDULE ADD CHECK (RWID IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table T_PUB_SCHEDULE
-- ----------------------------
ALTER TABLE T_PUB_SCHEDULE ADD PRIMARY KEY (RWID);

-- ----------------------------
-- Indexes structure for table T_PUB_SCHLOG
-- ----------------------------

-- ----------------------------
-- Checks structure for table T_PUB_SCHLOG
-- ----------------------------
ALTER TABLE T_PUB_SCHLOG ADD CHECK (RWZXID IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table T_PUB_SCHLOG
-- ----------------------------
ALTER TABLE T_PUB_SCHLOG ADD PRIMARY KEY (RWZXID);

-- ----------------------------
-- Indexes structure for table T_PUB_USER
-- ----------------------------

-- ----------------------------
-- Checks structure for table T_PUB_USER
-- ----------------------------
ALTER TABLE T_PUB_USER ADD CHECK (YHBH IS NOT NULL);
ALTER TABLE T_PUB_USER ADD CHECK (YHZH IS NOT NULL);
ALTER TABLE T_PUB_USER ADD CHECK (YHMM IS NOT NULL);
ALTER TABLE T_PUB_USER ADD CHECK (YHMC IS NOT NULL);
ALTER TABLE T_PUB_USER ADD CHECK (XZQH IS NOT NULL) DISABLE;
ALTER TABLE T_PUB_USER ADD CHECK (CJSJ IS NOT NULL);
ALTER TABLE T_PUB_USER ADD CHECK (GXSJ IS NOT NULL) DISABLE;

-- ----------------------------
-- Primary Key structure for table T_PUB_USER
-- ----------------------------
ALTER TABLE T_PUB_USER ADD PRIMARY KEY (YHBH);

-- ----------------------------
-- Indexes structure for table T_PUB_XTZD
-- ----------------------------

-- ----------------------------
-- Checks structure for table T_PUB_XTZD
-- ----------------------------
ALTER TABLE T_PUB_XTZD ADD CHECK (BH IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table T_PUB_XTZD
-- ----------------------------
ALTER TABLE T_PUB_XTZD ADD PRIMARY KEY (BH);

-- ----------------------------
-- Checks structure for table T_PUB_ZZJG
-- ----------------------------
ALTER TABLE T_PUB_ZZJG ADD CHECK (DWDM IS NOT NULL);
ALTER TABLE T_PUB_ZZJG ADD CHECK (CJSJ IS NOT NULL);
ALTER TABLE T_PUB_ZZJG ADD CHECK (GXSJ IS NOT NULL);

-- ----------------------------
-- Indexes structure for table T_XDH_COPY
-- ----------------------------

-- ----------------------------
-- Checks structure for table T_XDH_COPY
-- ----------------------------
ALTER TABLE T_XDH_COPY ADD CHECK (ID IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table T_XDH_COPY
-- ----------------------------
ALTER TABLE T_XDH_COPY ADD PRIMARY KEY (ID);

--rollback DROP TABLE T_PUB_APP;
--rollback DROP TABLE T_PUB_AUDIT;
--rollback DROP TABLE T_PUB_AUTH;
--rollback DROP TABLE T_PUB_FILE;
--rollback DROP TABLE T_PUB_GPSSBXX;
--rollback DROP TABLE T_PUB_USER;
--rollback DROP TABLE T_PUB_SQXXB;
--rollback DROP TABLE T_PUB_SCHLOG;
--rollback DROP TABLE T_PUB_SCHEDULE;
--rollback DROP TABLE T_PUB_RYXX;
--rollback DROP TABLE T_PUB_ROLE_RES;
--rollback DROP TABLE T_PUB_ROLE;
--rollback DROP TABLE T_PUB_RES;
--rollback DROP TABLE T_PUB_QTDWSBXX;
--rollback DROP TABLE T_PUB_PDTTHZXX;
--rollback DROP TABLE T_PUB_PARAM;
--rollback DROP TABLE T_PUB_LOG;
--rollback DROP TABLE T_PUB_JQXZDM;
--rollback DROP TABLE T_PUB_JQXZSY;
--rollback DROP TABLE T_PUB_XTZD;
--rollback DROP TABLE T_PUB_ZZJG;
--rollback DROP TABLE T_PUB_ZZJGSY;
--rollback DROP TABLE T_XDH_COPY;