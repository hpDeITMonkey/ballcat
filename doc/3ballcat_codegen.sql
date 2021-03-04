SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for gen_data_source_config
-- ----------------------------
DROP TABLE IF EXISTS `gen_data_source_config`;
CREATE TABLE `gen_data_source_config`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数据源名称',
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '数据库用户名',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '数据库密码',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数据库连接',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '数据源' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for gen_template_directory_entry
-- ----------------------------
DROP TABLE IF EXISTS `gen_template_directory_entry`;
CREATE TABLE `gen_template_directory_entry`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NULL DEFAULT NULL COMMENT '模板组Id',
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文件夹路径/模板文件名称（支持占位符）',
  `type` tinyint(1) NULL DEFAULT NULL COMMENT '文件类型 1：文件夹 2：模板文件',
  `parent_id` int(11) NULL DEFAULT NULL COMMENT '父级Id',
  `deleted` bigint(255) NULL DEFAULT NULL COMMENT '逻辑删除标识',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_name_parent_id`(`deleted`, `group_id`, `parent_id`, `file_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '模板文件目录项' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_template_directory_entry
-- ----------------------------
INSERT INTO `ballcat_codegen`.`gen_template_directory_entry`(`id`, `group_id`, `file_name`, `type`, `parent_id`, `deleted`, `create_time`, `update_time`) VALUES (202, 10, 'ballcat-ui-vue.src', 1, 0, 0, '2021-01-25 13:11:55', NULL);
INSERT INTO `ballcat_codegen`.`gen_template_directory_entry`(`id`, `group_id`, `file_name`, `type`, `parent_id`, `deleted`, `create_time`, `update_time`) VALUES (203, 10, 'ballcat.src.main', 1, 0, 0, '2021-01-25 13:11:55', NULL);
INSERT INTO `ballcat_codegen`.`gen_template_directory_entry`(`id`, `group_id`, `file_name`, `type`, `parent_id`, `deleted`, `create_time`, `update_time`) VALUES (204, 10, '{className}.sql', 2, 0, 0, '2021-01-25 13:11:55', NULL);
INSERT INTO `ballcat_codegen`.`gen_template_directory_entry`(`id`, `group_id`, `file_name`, `type`, `parent_id`, `deleted`, `create_time`, `update_time`) VALUES (205, 10, 'java', 1, 203, 0, '2021-01-25 13:11:55', NULL);
INSERT INTO `ballcat_codegen`.`gen_template_directory_entry`(`id`, `group_id`, `file_name`, `type`, `parent_id`, `deleted`, `create_time`, `update_time`) VALUES (206, 10, 'resources', 1, 203, 0, '2021-01-25 13:11:55', NULL);
INSERT INTO `ballcat_codegen`.`gen_template_directory_entry`(`id`, `group_id`, `file_name`, `type`, `parent_id`, `deleted`, `create_time`, `update_time`) VALUES (207, 10, '{packageName}.{moduleName}', 1, 205, 0, '2021-01-25 13:11:55', NULL);
INSERT INTO `ballcat_codegen`.`gen_template_directory_entry`(`id`, `group_id`, `file_name`, `type`, `parent_id`, `deleted`, `create_time`, `update_time`) VALUES (208, 10, 'controller', 1, 207, 0, '2021-01-25 13:11:55', NULL);
INSERT INTO `ballcat_codegen`.`gen_template_directory_entry`(`id`, `group_id`, `file_name`, `type`, `parent_id`, `deleted`, `create_time`, `update_time`) VALUES (209, 10, 'mapper', 1, 207, 0, '2021-01-25 13:11:55', NULL);
INSERT INTO `ballcat_codegen`.`gen_template_directory_entry`(`id`, `group_id`, `file_name`, `type`, `parent_id`, `deleted`, `create_time`, `update_time`) VALUES (210, 10, 'model', 1, 207, 0, '2021-01-25 13:11:55', NULL);
INSERT INTO `ballcat_codegen`.`gen_template_directory_entry`(`id`, `group_id`, `file_name`, `type`, `parent_id`, `deleted`, `create_time`, `update_time`) VALUES (211, 10, 'service', 1, 207, 0, '2021-01-25 13:11:55', NULL);
INSERT INTO `ballcat_codegen`.`gen_template_directory_entry`(`id`, `group_id`, `file_name`, `type`, `parent_id`, `deleted`, `create_time`, `update_time`) VALUES (212, 10, '{className}Controller.java', 2, 208, 0, '2021-01-25 13:11:55', NULL);
INSERT INTO `ballcat_codegen`.`gen_template_directory_entry`(`id`, `group_id`, `file_name`, `type`, `parent_id`, `deleted`, `create_time`, `update_time`) VALUES (213, 10, 'impl', 1, 211, 0, '2021-01-25 13:11:55', NULL);
INSERT INTO `ballcat_codegen`.`gen_template_directory_entry`(`id`, `group_id`, `file_name`, `type`, `parent_id`, `deleted`, `create_time`, `update_time`) VALUES (214, 10, '{className}Service.java', 2, 211, 0, '2021-01-25 13:11:55', NULL);
INSERT INTO `ballcat_codegen`.`gen_template_directory_entry`(`id`, `group_id`, `file_name`, `type`, `parent_id`, `deleted`, `create_time`, `update_time`) VALUES (215, 10, '{className}ServiceImpl.java', 2, 213, 0, '2021-01-25 13:11:55', NULL);
INSERT INTO `ballcat_codegen`.`gen_template_directory_entry`(`id`, `group_id`, `file_name`, `type`, `parent_id`, `deleted`, `create_time`, `update_time`) VALUES (216, 10, '{className}Mapper.java', 2, 209, 0, '2021-01-25 13:11:55', NULL);
INSERT INTO `ballcat_codegen`.`gen_template_directory_entry`(`id`, `group_id`, `file_name`, `type`, `parent_id`, `deleted`, `create_time`, `update_time`) VALUES (217, 10, 'entity', 1, 210, 0, '2021-01-25 13:11:55', NULL);
INSERT INTO `ballcat_codegen`.`gen_template_directory_entry`(`id`, `group_id`, `file_name`, `type`, `parent_id`, `deleted`, `create_time`, `update_time`) VALUES (218, 10, 'qo', 1, 210, 0, '2021-01-25 13:11:55', NULL);
INSERT INTO `ballcat_codegen`.`gen_template_directory_entry`(`id`, `group_id`, `file_name`, `type`, `parent_id`, `deleted`, `create_time`, `update_time`) VALUES (219, 10, 'vo', 1, 210, 0, '2021-01-25 13:11:55', NULL);
INSERT INTO `ballcat_codegen`.`gen_template_directory_entry`(`id`, `group_id`, `file_name`, `type`, `parent_id`, `deleted`, `create_time`, `update_time`) VALUES (220, 10, '{className}.java', 2, 217, 0, '2021-01-25 13:11:55', NULL);
INSERT INTO `ballcat_codegen`.`gen_template_directory_entry`(`id`, `group_id`, `file_name`, `type`, `parent_id`, `deleted`, `create_time`, `update_time`) VALUES (221, 10, '{className}QO.java', 2, 218, 0, '2021-01-25 13:11:55', NULL);
INSERT INTO `ballcat_codegen`.`gen_template_directory_entry`(`id`, `group_id`, `file_name`, `type`, `parent_id`, `deleted`, `create_time`, `update_time`) VALUES (222, 10, '{className}VO.java', 2, 219, 0, '2021-01-25 13:11:55', NULL);
INSERT INTO `ballcat_codegen`.`gen_template_directory_entry`(`id`, `group_id`, `file_name`, `type`, `parent_id`, `deleted`, `create_time`, `update_time`) VALUES (223, 10, 'mapper', 1, 206, 0, '2021-01-25 13:11:55', NULL);
INSERT INTO `ballcat_codegen`.`gen_template_directory_entry`(`id`, `group_id`, `file_name`, `type`, `parent_id`, `deleted`, `create_time`, `update_time`) VALUES (224, 10, '{moduleName}', 1, 223, 0, '2021-01-25 13:11:55', NULL);
INSERT INTO `ballcat_codegen`.`gen_template_directory_entry`(`id`, `group_id`, `file_name`, `type`, `parent_id`, `deleted`, `create_time`, `update_time`) VALUES (225, 10, '{className}Mapper.xml', 2, 224, 0, '2021-01-25 13:11:55', NULL);
INSERT INTO `ballcat_codegen`.`gen_template_directory_entry`(`id`, `group_id`, `file_name`, `type`, `parent_id`, `deleted`, `create_time`, `update_time`) VALUES (226, 10, 'api', 1, 202, 0, '2021-01-25 13:11:55', NULL);
INSERT INTO `ballcat_codegen`.`gen_template_directory_entry`(`id`, `group_id`, `file_name`, `type`, `parent_id`, `deleted`, `create_time`, `update_time`) VALUES (227, 10, 'views', 1, 202, 0, '2021-01-25 13:11:55', NULL);
INSERT INTO `ballcat_codegen`.`gen_template_directory_entry`(`id`, `group_id`, `file_name`, `type`, `parent_id`, `deleted`, `create_time`, `update_time`) VALUES (228, 10, '{moduleName}', 1, 226, 0, '2021-01-25 13:11:55', NULL);
INSERT INTO `ballcat_codegen`.`gen_template_directory_entry`(`id`, `group_id`, `file_name`, `type`, `parent_id`, `deleted`, `create_time`, `update_time`) VALUES (229, 10, '{moduleName}.{pathName}', 1, 227, 0, '2021-01-25 13:11:55', NULL);
INSERT INTO `ballcat_codegen`.`gen_template_directory_entry`(`id`, `group_id`, `file_name`, `type`, `parent_id`, `deleted`, `create_time`, `update_time`) VALUES (230, 10, '{pathName}.js', 2, 228, 0, '2021-01-25 13:11:55', NULL);
INSERT INTO `ballcat_codegen`.`gen_template_directory_entry`(`id`, `group_id`, `file_name`, `type`, `parent_id`, `deleted`, `create_time`, `update_time`) VALUES (231, 10, '{className}Form.vue', 2, 229, 0, '2021-01-25 13:11:55', NULL);
INSERT INTO `ballcat_codegen`.`gen_template_directory_entry`(`id`, `group_id`, `file_name`, `type`, `parent_id`, `deleted`, `create_time`, `update_time`) VALUES (232, 10, '{className}Page.vue', 2, 229, 0, '2021-01-25 13:11:55', NULL);


-- ----------------------------
-- Table structure for gen_template_group
-- ----------------------------
DROP TABLE IF EXISTS `gen_template_group`;
CREATE TABLE `gen_template_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '名称',
  `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '模板组' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_template_group
-- ----------------------------
INSERT INTO `gen_template_group` VALUES (10, 'ballcat（0.0.8）', 'v0.0.8 版本', '2020-07-03 16:39:03', NULL);

-- ----------------------------
-- Table structure for gen_template_info
-- ----------------------------
DROP TABLE IF EXISTS `gen_template_info`;
CREATE TABLE `gen_template_info`  (
  `directory_entry_id` int(11) NOT NULL COMMENT '目录项ID',
  `group_id` int(11) NULL DEFAULT NULL COMMENT '模板组ID',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '模板标题',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '模板内容',
  `engine_type` tinyint(1) NULL DEFAULT NULL COMMENT '模板引擎类型 1：velocity',
  `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `deleted` bigint(20) NULL DEFAULT NULL COMMENT '逻辑删除',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`directory_entry_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '模板信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_template_info
-- ----------------------------
INSERT INTO `ballcat_codegen`.`gen_template_info`(`directory_entry_id`, `group_id`, `title`, `content`, `engine_type`, `remarks`, `deleted`, `create_time`, `update_time`) VALUES (204, 10, 'permissionSql', '## 备注： 变量的使用方法，是mysql语法，基础生成部分是全数据库通用，若数据源非mysql，请只执行基础生成sql\nSTART TRANSACTION;\n\n-- 目录ID\nset @pId = 目录ID;\n-- 菜单ID\nset @menuId = 菜单ID;\n\n## -----------------基础生成部分start-------------\n-- 插入菜单\nINSERT INTO `sys_permission`\n    (`id`, `parent_id`, `title`, `code`, `path`, `router_name`, `component`, `redirect`,  `icon`, `sort`, `keep_alive`, `hidden`, `type`, `deleted`, `create_time`, `update_time`)\nVALUES\n    (@menuId, @pId, \'${comments}\', NULL, \'/${moduleName}/${pathName}\', \'${classname}\', \'${moduleName}/${pathName}/${className}Page\', NULL, NULL, 1, 0, 0, 1, 0, NULL, \'2019-10-13 22:00:24\');\n\n\n-- 菜单对应按钮SQL\nINSERT INTO `sys_permission` ( `id`, `parent_id`,`title`, `code`, `sort`, `type`, `deleted`, `create_time`, `update_time` )\nVALUES\n( @menuId + 1, @menuId, \'${comments}查询\', \'${moduleName}:${pathName}:read\',  0, 2, 0, \'2019-10-13 22:00:24\', NULL );\n\n\nINSERT INTO `sys_permission` ( `id`, `parent_id`,`title`, `code`, `sort`, `type`, `deleted`, `create_time`, `update_time` )\nVALUES\n( @menuId + 2, @menuId, \'${comments}新增\', \'${moduleName}:${pathName}:add\',  1, 2, 0, \'2019-10-13 22:00:24\', NULL );\n\nINSERT INTO `sys_permission` ( `id`, `parent_id`,`title`, `code`, `sort`, `type`, `deleted`, `create_time`, `update_time` )\nVALUES\n( @menuId + 3, @menuId, \'${comments}修改\', \'${moduleName}:${pathName}:edit\', 2, 2, 0, \'2019-10-13 22:00:24\', NULL );\n\nINSERT INTO `sys_permission` ( `id`, `parent_id`,`title`, `code`, `sort`, `type`, `deleted`, `create_time`, `update_time` )\nVALUES\n( @menuId + 4, @menuId, \'${comments}删除\', \'${moduleName}:${pathName}:del\', 3, 2, 0, \'2019-10-13 22:00:24\', NULL );\n\n## -----------------基础生成部分end-------------\n\n-- 清空变量\nset @menuId = null;\nset @pId = null;\n\nCOMMIT;', 1, '权限sql', 0, '2021-01-25 13:11:56', NULL);
INSERT INTO `ballcat_codegen`.`gen_template_info`(`directory_entry_id`, `group_id`, `title`, `content`, `engine_type`, `remarks`, `deleted`, `create_time`, `update_time`) VALUES (212, 10, 'Controller', 'package ${packageName}.${moduleName}.controller;\n\nimport ${packageName}.${moduleName}.model.entity.${className};\nimport ${packageName}.${moduleName}.model.qo.${className}QO;\nimport ${packageName}.${moduleName}.model.vo.${className}VO;\nimport ${packageName}.${moduleName}.service.${className}Service;\nimport com.hccake.ballcat.commom.log.operation.annotation.CreateOperationLogging;\nimport com.hccake.ballcat.commom.log.operation.annotation.DeleteOperationLogging;\nimport com.hccake.ballcat.commom.log.operation.annotation.UpdateOperationLogging;\nimport com.hccake.ballcat.common.core.domain.PageParam;\nimport com.hccake.ballcat.common.core.domain.PageResult;\nimport com.hccake.ballcat.common.core.result.R;\nimport com.hccake.ballcat.common.core.result.BaseResultCode;\nimport org.springframework.security.access.prepost.PreAuthorize;\nimport io.swagger.annotations.Api;\nimport io.swagger.annotations.ApiOperation;\nimport lombok.RequiredArgsConstructor;\nimport org.springframework.web.bind.annotation.*;\n\n\n/**\n * ${comments}\n *\n * @author ${author} ${currentTime}\n */\n@RestController\n@RequiredArgsConstructor\n@RequestMapping(\"/${moduleName}/${pathName}\" )\n@Api(value = \"${pathName}\", tags = \"${comments}管理\")\npublic class ${className}Controller {\n\n    private final  ${className}Service ${classname}Service;\n\n    /**\n     * 分页查询\n     * @param page 分页对象\n     * @param ${classname}QO ${comments}查询对象\n     * @return R 通用返回体\n     */\n    @ApiOperation(value = \"分页查询\", notes = \"分页查询\")\n    @GetMapping(\"/page\" )\n    @PreAuthorize(\"@per.hasPermission(\'${moduleName}:${pathName}:read\')\" )\n    public R<PageResult<${className}VO>> get${className}Page(\n            PageParam pageParam, ${className}QO ${classname}QO) {\n        return R.ok(${classname}Service.queryPage(pageParam, ${classname}QO));\n    }\n\n    /**\n     * 新增${comments}\n     * @param ${classname} ${comments}\n     * @return R 通用返回体\n     */\n    @ApiOperation(value = \"新增${comments}\", notes = \"新增${comments}\")\n    @CreateOperationLogging(msg = \"新增${comments}\" )\n    @PostMapping\n    @PreAuthorize(\"@per.hasPermission(\'${moduleName}:${pathName}:add\')\" )\n    public R<?> save(@RequestBody ${className} ${classname}) {\n        return ${classname}Service.save(${classname}) ?\n                R.ok() : R.failed(BaseResultCode.UPDATE_DATABASE_ERROR, \"新增${comments}失败\");\n    }\n\n    /**\n     * 修改${comments}\n     * @param ${classname} ${comments}\n     * @return R 通用返回体\n     */\n    @ApiOperation(value = \"修改${comments}\", notes = \"修改${comments}\")\n    @UpdateOperationLogging(msg = \"修改${comments}\" )\n    @PutMapping\n    @PreAuthorize(\"@per.hasPermission(\'${moduleName}:${pathName}:edit\')\" )\n    public R<?> updateById(@RequestBody ${className} ${classname}) {\n        return ${classname}Service.updateById(${classname}) ?\n                R.ok() : R.failed(BaseResultCode.UPDATE_DATABASE_ERROR, \"修改${comments}失败\");\n    }\n\n    /**\n     * 通过id删除${comments}\n     * @param ${pk.attrName} id\n     * @return R 通用返回体\n     */\n    @ApiOperation(value = \"通过id删除${comments}\", notes = \"通过id删除${comments}\")\n    @DeleteOperationLogging(msg = \"通过id删除${comments}\" )\n    @DeleteMapping(\"/{${pk.attrName}}\" )\n    @PreAuthorize(\"@per.hasPermission(\'${moduleName}:${pathName}:del\')\" )\n    public R<?> removeById(@PathVariable ${pk.attrType} ${pk.attrName}) {\n        return ${classname}Service.removeById(${pk.attrName}) ?\n                R.ok() : R.failed(BaseResultCode.UPDATE_DATABASE_ERROR, \"通过id删除${comments}失败\");\n    }\n\n}', 1, '控制层', 0, '2021-01-25 13:11:56', '2021-01-25 13:17:23');
INSERT INTO `ballcat_codegen`.`gen_template_info`(`directory_entry_id`, `group_id`, `title`, `content`, `engine_type`, `remarks`, `deleted`, `create_time`, `update_time`) VALUES (214, 10, 'Service', 'package ${packageName}.${moduleName}.service;\n\nimport com.hccake.ballcat.common.core.domain.PageParam;\nimport com.hccake.ballcat.common.core.domain.PageResult;\nimport com.hccake.extend.mybatis.plus.service.ExtendService;\nimport ${packageName}.${moduleName}.model.entity.${className};\nimport ${packageName}.${moduleName}.model.vo.${className}VO;\nimport ${packageName}.${moduleName}.model.qo.${className}QO;\n\n/**\n * ${comments}\n *\n * @author ${author} ${currentTime}\n */\npublic interface ${className}Service extends ExtendService<${className}> {\n\n    /**\n    *  根据QueryObeject查询分页数据\n    * @param pageParam 分页参数\n    * @param qo 查询参数对象\n    * @return PageResult<${className}VO> 分页数据\n    */\n    PageResult<${className}VO> queryPage(PageParam pageParam, ${className}QO qo);\n\n}', 1, '业务逻辑层', 0, '2021-01-25 13:11:56', '2021-01-25 13:22:05');
INSERT INTO `ballcat_codegen`.`gen_template_info`(`directory_entry_id`, `group_id`, `title`, `content`, `engine_type`, `remarks`, `deleted`, `create_time`, `update_time`) VALUES (215, 10, 'ServiceImpl', 'package ${packageName}.${moduleName}.service.impl;\n\nimport cn.hutool.core.util.ObjectUtil;\nimport ${packageName}.${moduleName}.model.entity.${className};\nimport ${packageName}.${moduleName}.model.vo.${className}VO;\nimport ${packageName}.${moduleName}.model.qo.${className}QO;\nimport ${packageName}.${moduleName}.mapper.${className}Mapper;\nimport ${packageName}.${moduleName}.service.${className}Service;\nimport com.hccake.ballcat.common.core.domain.PageParam;\nimport com.hccake.ballcat.common.core.domain.PageResult;\nimport com.hccake.extend.mybatis.plus.service.impl.ExtendServiceImpl;\nimport org.springframework.stereotype.Service;\n\n/**\n * ${comments}\n *\n * @author ${author} ${currentTime}\n */\n@Service\npublic class ${className}ServiceImpl extends ExtendServiceImpl<${className}Mapper, ${className}> implements ${className}Service {\n\n    /**\n    *  根据QueryObeject查询分页数据\n    * @param pageParam 分页参数\n    * @param qo 查询参数对象\n    * @return PageResult<${className}VO> 分页数据\n    */\n    @Override\n    public PageResult<${className}VO> queryPage(PageParam pageParam, ${className}QO qo) {\n        return baseMapper.queryPage(pageParam, wrapper);\n    }\n\n}\n', 1, '业务逻辑层实现类', 0, '2021-01-25 13:11:56', '2021-01-25 13:21:58');
INSERT INTO `ballcat_codegen`.`gen_template_info`(`directory_entry_id`, `group_id`, `title`, `content`, `engine_type`, `remarks`, `deleted`, `create_time`, `update_time`) VALUES (216, 10, 'Mapper', 'package ${packageName}.${moduleName}.mapper;\n\nimport com.baomidou.mybatisplus.core.metadata.IPage;\nimport com.baomidou.mybatisplus.core.toolkit.Constants;\nimport ${packageName}.${moduleName}.model.entity.${className};\nimport ${packageName}.${moduleName}.model.vo.${className}VO;\nimport com.hccake.ballcat.common.core.domain.PageParam;\nimport com.hccake.ballcat.common.core.domain.PageResult;\nimport com.hccake.extend.mybatis.plus.conditions.query.LambdaQueryWrapperX;\nimport com.hccake.extend.mybatis.plus.mapper.ExtendMapper;\nimport com.hccake.extend.mybatis.plus.toolkit.WrappersX;\n\n/**\n * ${comments}\n *\n * @author ${author} ${currentTime}\n */\npublic interface ${className}Mapper extends ExtendMapper<${className}> {\n\n    /**\n    * 分页查询\n    * @param pageParam 分页参数\n    * @param qo 查询参数\n    * @return PageResult<${className}VO> VO分页数据\n    */\n   default PageResult<${className}VO> selectPageVo(PageParam pageParam, , ${className}QO qo){\n   		IPage<${className}VO> page = this.prodPage(pageParam);\n		LambdaQueryWrapperX<${className}> wrapper = WrappersX.lambdaQueryX(${className}.class);\n        this.selectByPage(page, wrapper);\n		return new PageResult<>(page.getRecords(), page.getTotal());\n   }\n}', 1, '数据访问层', 0, '2021-01-25 13:11:56', '2021-01-25 13:28:03');
INSERT INTO `ballcat_codegen`.`gen_template_info`(`directory_entry_id`, `group_id`, `title`, `content`, `engine_type`, `remarks`, `deleted`, `create_time`, `update_time`) VALUES (220, 10, 'Entity', 'package ${packageName}.${moduleName}.model.entity;\n\nimport com.baomidou.mybatisplus.annotation.FieldFill;\nimport com.baomidou.mybatisplus.annotation.TableField;\nimport com.baomidou.mybatisplus.annotation.TableId;\nimport com.baomidou.mybatisplus.annotation.TableName;\nimport com.baomidou.mybatisplus.extension.activerecord.Model;\nimport io.swagger.annotations.ApiModel;\nimport io.swagger.annotations.ApiModelProperty;\nimport lombok.Data;\nimport lombok.EqualsAndHashCode;\nimport java.io.Serializable;\nimport java.time.LocalDateTime;\n\n/**\n * ${comments}\n *\n * @author ${author} ${currentTime}\n */\n@Data\n@TableName(\"${tableName}\")\n@ApiModel(value = \"${comments}\")\npublic class ${className} {\nprivate static final long serialVersionUID = 1L;\n\n#foreach ($column in $columns)\n  /**\n   * $column.comments\n   */\n    #if($column.columnName == $pk.columnName)\n    @TableId\n    #elseif($column.columnName == \'create_time\')\n    @TableField(fill = FieldFill.INSERT)\n    #elseif($column.columnName == \'update_time\')\n    @TableField(fill = FieldFill.INSERT_UPDATE)\n    #end\n	@ApiModelProperty(value=\"$column.comments\")\n	private $column.attrType $column.attrName;\n#end\n}\n', 1, '数据实体', 0, '2021-01-25 13:11:56', NULL);
INSERT INTO `ballcat_codegen`.`gen_template_info`(`directory_entry_id`, `group_id`, `title`, `content`, `engine_type`, `remarks`, `deleted`, `create_time`, `update_time`) VALUES (221, 10, 'QO', 'package ${packageName}.${moduleName}.model.qo;\n\nimport io.swagger.annotations.ApiModel;\nimport io.swagger.annotations.ApiModelProperty;\nimport lombok.Data;\n\n/**\n * ${comments} 查询对象\n *\n * @author ${author} ${currentTime}\n */\n@Data\n@ApiModel(value = \"${comments}查询对象\")\npublic class ${className}QO  {\n    private static final long serialVersionUID = 1L;\n\n    #foreach ($column in $columns)\n        /**\n         * $column.comments\n         */\n        #if($column.columnName == $pk.columnName)\n            @ApiModelProperty(value=\"$column.comments\")\n            private $column.attrType $column.attrName;\n            #break\n        #end\n    #end\n}', 1, '默认数据查询对象', 0, '2021-01-25 13:11:56', NULL);
INSERT INTO `ballcat_codegen`.`gen_template_info`(`directory_entry_id`, `group_id`, `title`, `content`, `engine_type`, `remarks`, `deleted`, `create_time`, `update_time`) VALUES (222, 10, 'VO', 'package ${packageName}.${moduleName}.model.vo;\n\nimport com.baomidou.mybatisplus.extension.activerecord.Model;\nimport io.swagger.annotations.ApiModel;\nimport io.swagger.annotations.ApiModelProperty;\nimport lombok.Data;\nimport lombok.EqualsAndHashCode;\n    #if(${hasBigDecimal})\n    import java.math.BigDecimal;\n    #end\nimport java.io.Serializable;\nimport java.time.LocalDateTime;\n\n/**\n * ${comments}\n *\n * @author ${author} ${currentTime}\n */\n@Data\n@ApiModel(value = \"${comments}\")\npublic class ${className}VO {\n    private static final long serialVersionUID = 1L;\n\n    #foreach ($column in $columns)\n        /**\n         * $column.comments\n         */\n        @ApiModelProperty(value=\"$column.comments\")\n        private $column.attrType $column.attrName;\n    #end\n}', 1, '默认数据视图对象', 0, '2021-01-25 13:11:56', NULL);
INSERT INTO `ballcat_codegen`.`gen_template_info`(`directory_entry_id`, `group_id`, `title`, `content`, `engine_type`, `remarks`, `deleted`, `create_time`, `update_time`) VALUES (225, 10, 'Mapper.xml', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<!DOCTYPE mapper PUBLIC \"-//mybatis.org//DTD Mapper 3.0//EN\" \"http://mybatis.org/dtd/mybatis-3-mapper.dtd\">\n<mapper namespace=\"${packageName}.${moduleName}.mapper.${className}Mapper\">\n\n  <resultMap id=\"${classname}Map\" type=\"${packageName}.${moduleName}.model.entity.${className}\">\n    #foreach($column in $columns)\n      #if($column.attrName==$pk.attrName)\n        <id property=\"${pk.attrName}\" column=\"${pk.columnName}\"/>\n      #else\n        <result property=\"${column.attrName}\" column=\"${column.columnName}\"/>\n      #end\n    #end\n  </resultMap>\n\n  <sql id=\"Base_Column_List\" >\n    #foreach($column in $columns)${column.columnName}#if($foreach.hasNext), #end#end\n  </sql>\n\n  <sql id=\"Base_Alias_Column_List\">\n    #foreach($column in $columns)${tableAlias}.${column.columnName}#if( $foreach.hasNext ), #end#end\n  </sql>\n\n  <select id=\"selectPageVo\" resultType=\"${packageName}.${moduleName}.model.vo.${className}VO\">\n    SELECT\n    <include refid=\"Base_Alias_Column_List\"/>\n    FROM\n    ${tableName} ${tableAlias}\n    ${ew.customSqlSegment}\n  </select>\n</mapper>', 1, 'Mybatis Mapper Xml', 0, '2021-01-25 13:11:56', NULL);
INSERT INTO `ballcat_codegen`.`gen_template_info`(`directory_entry_id`, `group_id`, `title`, `content`, `engine_type`, `remarks`, `deleted`, `create_time`, `update_time`) VALUES (230, 10, 'api.js', 'import request from \'@/utils/request\'\n\nexport function getPage(query) {\n  return request({\n    url: \'/${moduleName}/${pathName}/page\',\n    method: \'get\',\n    params: query\n  })\n}\n\nexport function addObj(obj) {\n  return request({\n    url: \'/${moduleName}/${pathName}\',\n    method: \'post\',\n    data: obj\n  })\n}\n\nexport function delObj(id) {\n  return request({\n    url: \'/${moduleName}/${pathName}/\' + id,\n    method: \'delete\'\n  })\n}\n\nexport function putObj(obj) {\n  return request({\n    url: \'/${moduleName}/${pathName}\',\n    method: \'put\',\n    data: obj\n  })\n}', 1, 'Axios 访问方法', 0, '2021-01-25 13:11:56', NULL);
INSERT INTO `ballcat_codegen`.`gen_template_info`(`directory_entry_id`, `group_id`, `title`, `content`, `engine_type`, `remarks`, `deleted`, `create_time`, `update_time`) VALUES (231, 10, 'Form.vue', '<template>\n  <a-form @submit=\"handleSubmit\" :form=\"form\" :labelCol=labelCol :wrapperCol=wrapperCol>\n    #foreach ($column in $columns)\n      #if($column.columnName == $pk.attrName)\n        <a-form-item v-if=\"formAction === this.FORM_ACTION.UPDATE\" style=\"display: none\">\n          <a-input v-decorator=\"[\'${pk.attrName}\']\"/>\n        </a-form-item>\n\n      #elseif($column.columnName != \"create_time\" && $column.columnName != \"update_time\")\n        <a-form-item label=\"$column.comments\">\n          <a-input placeholder=\"$column.comments\" v-decorator=\"[\'$column.attrName\']\" />\n        </a-form-item>\n        \n      #end\n    #end\n\n    <div v-show=\"formAction === this.FORM_ACTION.UPDATE\">\n      <a-form-item label=\"创建时间\">\n        <span>{{ displayData.createTime }}</span>\n      </a-form-item>\n      <a-form-item label=\"修改时间\">\n        <span>{{ displayData.updateTime }}</span>\n      </a-form-item>\n    </div>\n    \n    <a-form-item :wrapperCol=\"{offset: 7 }\">\n      <a-button htmlType=\"submit\" type=\"primary\" :loading=\"submitLoading\">提交</a-button>\n      <a-button style=\"margin-left: 8px\" @click=\"backToPage(false)\">取消</a-button>\n    </a-form-item>\n  </a-form>\n</template>\n\n<script>\n  import { FormPageMixin } from \'@/mixins\'\n  import { addObj, putObj } from \'@/api/${moduleName}/${pathName}\'\n\n  export default {\n    name: \'${className}FormPage\',\n    mixins: [FormPageMixin],\n    data () {\n      return {\n        reqFunctions: {\n          create: addObj,\n          update: putObj\n        },\n\n        // 校验配置\n        decoratorOptions: {},\n      }\n    },\n    methods: {\n    }\n  }\n</script>', 1, '新建和修改使用的表单页面', 0, '2021-01-25 13:11:56', NULL);
INSERT INTO `ballcat_codegen`.`gen_template_info`(`directory_entry_id`, `group_id`, `title`, `content`, `engine_type`, `remarks`, `deleted`, `create_time`, `update_time`) VALUES (232, 10, 'Page.vue', '<template>\n  <div class=\"ant-pro-page-container-children-content\">\n    <div v-show=\"tableShow\">\n      <!-- 查询条件 -->\n      <div class=\"ant-pro-table-search\">\n        <a-form v-bind=\"searchFormLayout\">\n          <a-row :gutter=\"16\">\n            <a-col :md=\"8\" :sm=\"24\">\n              <a-form-item label=\"ID\">\n                <a-input v-model=\"queryParam.${pk.attrName}\" placeholder=\"\"/>\n              </a-form-item>\n            </a-col>\n\n            <!-- <template v-if=\"advanced\">\n             </template>-->\n          <a-col :md=\"8\" :sm=\"24\" class=\"table-page-search-wrapper\">\n            <div class=\"table-page-search-submitButtons\">\n              <a-button type=\"primary\" @click=\"reloadTable\">查询</a-button>\n              <a-button style=\"margin-left: 8px\" @click=\"resetSearchForm\">重置</a-button>\n                <!--<a @click=\"toggleAdvanced\" style=\"margin-left: 8px\">\n                  {{ advanced ? \'收起\' : \'展开\' }}\n                  <a-icon :type=\"advanced ? \'up\' : \'down\'\"/>\n                </a>-->\n              </div>\n            </a-col>\n          </a-row>\n        </a-form>\n      </div>\n\n    <a-card :bordered=\"false\" :bodyStyle=\"{padding: 0}\">\n      <!-- 操作按钮区域 -->\n      <div class=\"ant-pro-table-toolbar\">\n        <div class=\"ant-pro-table-toolbar-title\">${comments}</div>\n        <div class=\"ant-pro-table-toolbar-option\">\n          <a-button v-has=\"\'${moduleName}:${pathName}:add\'\" type=\"primary\" icon=\"plus\" @click=\"handleAdd()\">新建</a-button>\n        </div>\n      </div>\n\n      <!--数据表格区域-->\n      <div class=\"ant-pro-table-wrapper\">\n        <a-table\n          ref=\"table\"\n          size=\"middle\"\n          :rowKey=\"rowKey\"\n          :columns=\"columns\"\n          :dataSource=\"dataSource\"\n          :pagination=\"pagination\"\n          :loading =\"loading\"\n          @change=\"handleTableChange\"\n        >\n          <template #action-slot=\"text, record\">\n            <a v-has=\"\'${moduleName}:${pathName}:edit\'\" @click=\"handleEdit(record)\">编辑</a>\n            <a-divider type=\"vertical\"/>\n            <a-popconfirm v-has=\"\'${moduleName}:${pathName}:del\'\"\n                          title=\"确认要删除吗？\"\n                          @confirm=\"() => handleDel(record)\">\n              <a href=\"javascript:\">删除</a>\n            </a-popconfirm>\n          </template>\n        </a-table>\n      </div>\n    </a-card>\n	</div>\n    \n    <!--表单页面-->\n    <a-card v-if=\"formInited\" :bordered=\"false\" :title=\"cardTitle\" v-show=\"!tableShow\">\n      <form-page  ref=\"formPage\" @backToPage=\"backToPage\"></form-page>\n    </a-card>\n\n  </div>\n</template>\n\n<script>\n  import { getPage, delObj } from \'@/api/${moduleName}/${pathName}\'\n  import FormPage from \'./${className}Form\'\n  import { TablePageMixin } from \'@/mixins\'\n\n  export default {\n    name: \'${className}Page\',\n    mixins: [TablePageMixin],\n    components: { FormPage },\n    data () {\n      return {\n        getPage: getPage,\n        delObj: delObj,\n\n        columns: [\n          #foreach ($column in $columns)\n            #if($column.columnName != \'create_time\' && $column.columnName != \'update_time\')\n              #if($column.columnName == \'id\')\n                {\n                  title: \'#\',\n                  dataIndex: \'$column.attrName\',\n                },\n              #else\n                {\n                  title: \'$column.comments\',\n                  dataIndex: \'$column.attrName\',\n                },\n              #end\n            #end\n          #end\n          {\n            title: \'创建时间\',\n            dataIndex: \'createTime\',\n            width: \'150px\',\n            sorter: true\n          },\n          {\n            title: \'更新时间\',\n            dataIndex: \'updateTime\',\n            width: \'150px\',\n            sorter: true\n          },\n          {\n            title: \'操作\',\n            dataIndex: \'action\',\n            width: \'150px\',\n            scopedSlots: { customRender: \'action-slot\' }\n          }\n        ],\n      }\n    },\n    methods: {\n\n    }\n  }\n</script>', 1, '查询页面', 0, '2021-01-25 13:11:56', NULL);


-- ----------------------------
-- Table structure for gen_template_property
-- ----------------------------
DROP TABLE IF EXISTS `gen_template_property`;
CREATE TABLE `gen_template_property`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `group_id` int(11) NULL DEFAULT NULL COMMENT '模板组ID',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '标题',
  `prop_key` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '属性键',
  `default_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '默认值',
  `required` tinyint(1) NULL DEFAULT NULL COMMENT '必填，1：是，0：否',
  `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注信息',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_group_id_prop_key`(`group_id`, `prop_key`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '模板属性配置' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_template_property
-- ----------------------------
INSERT INTO `ballcat_codegen`.`gen_template_property`(`id`, `group_id`, `title`, `prop_key`, `default_value`, `required`, `remarks`, `create_time`, `update_time`) VALUES (19, 10, '作者', 'author', 'hccake', 1, NULL, '2021-01-25 13:11:56', NULL);
INSERT INTO `ballcat_codegen`.`gen_template_property`(`id`, `group_id`, `title`, `prop_key`, `default_value`, `required`, `remarks`, `create_time`, `update_time`) VALUES (20, 10, '模块名', 'moduleName', NULL, 1, '纯字母', '2021-01-25 13:11:56', NULL);
INSERT INTO `ballcat_codegen`.`gen_template_property`(`id`, `group_id`, `title`, `prop_key`, `default_value`, `required`, `remarks`, `create_time`, `update_time`) VALUES (21, 10, '包名', 'packageName', 'com.hccake.ballcat', 1, NULL, '2021-01-25 13:11:56', NULL);

SET FOREIGN_KEY_CHECKS = 1;
