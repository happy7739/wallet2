/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50553
 Source Host           : localhost:3306
 Source Schema         : wallet

 Target Server Type    : MySQL
 Target Server Version : 50553
 File Encoding         : 65001

 Date: 14/09/2020 00:22:44
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin_logs
-- ----------------------------
DROP TABLE IF EXISTS `admin_logs`;
CREATE TABLE `admin_logs`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `log` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `before_data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `after_data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `create_time` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 86 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '管理员操作日志' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_logs
-- ----------------------------
INSERT INTO `admin_logs` VALUES (33, '编辑角色', '{\"id\":5,\"role_name\":\"测试角色2\",\"introduce\":\"哇哈哈啊哈\",\"create_time\":1598943191,\"delete_time\":null,\"is_default\":0}', '{\"role_name\":\"测试角色2\",\"introduce\":\"哇哈哈啊哈123\"}', 1598945585, 1);
INSERT INTO `admin_logs` VALUES (34, '登录系统', '[]', '[]', 1598950262, 1);
INSERT INTO `admin_logs` VALUES (35, '角色授权', '[9,8,7,5,4,3,2,1]', '[1,2,5,6,7,8,9,10]', 1598952042, 1);
INSERT INTO `admin_logs` VALUES (36, '删除角色', '{\"id\":5,\"role_name\":\"测试角色2\",\"introduce\":\"哇哈哈啊哈123\",\"create_time\":1598943191,\"delete_time\":1598953009,\"is_default\":0}', '[]', 1598953009, 1);
INSERT INTO `admin_logs` VALUES (37, '新增管理员', '[]', '{\"username\":\"xiaoziyan\",\"password\":\"hs46bCan6jdJF8+9aiCiwbvWzfpI+\\/hRBQPu37kms3a2vJJwUO9VLzXa2qXMXMcb9D7gEer6yDB\\/76nxmuSXR9RFR2xWxSXtyM0fNqxq0g+ZOU0MEY4EFxrzjuAvDpnAHxVScqb1WCCM87QdbJBGNee++8IWFHvachC3z+P8Pa8=\",\"nickname\":\"华尚科技\",\"telephone\":\"13433323221\",\"email\":\"\",\"role_id\":\"4\",\"create_time\":\"2020-09-01 17:48\",\"id\":\"2\"}', 1598953717, 1);
INSERT INTO `admin_logs` VALUES (38, '登录系统', '[]', '[]', 1599209612, 1);
INSERT INTO `admin_logs` VALUES (32, '新增角色', '[]', '{\"role_name\":\"测试角色2\",\"introduce\":\"哇哈哈啊哈\",\"is_default\":0,\"create_time\":\"2020-09-01 14:53\",\"id\":\"5\"}', 1598943191, 1);
INSERT INTO `admin_logs` VALUES (39, '登录系统', '[]', '[]', 1599446258, 1);
INSERT INTO `admin_logs` VALUES (40, '登录系统', '[]', '[]', 1599446297, 1);
INSERT INTO `admin_logs` VALUES (41, '角色授权', '[10,9,8,7,6,5,2,1]', '[1,2,5,6,7,8,9,10]', 1599446346, 1);
INSERT INTO `admin_logs` VALUES (42, '角色授权', '[10,9,8,7,6,5,2,1]', '[1,2,5,6,7,8,9,10]', 1599446353, 1);
INSERT INTO `admin_logs` VALUES (43, '登录系统', '[]', '[]', 1599529940, 2);
INSERT INTO `admin_logs` VALUES (44, '登录系统', '[]', '[]', 1599529959, 2);
INSERT INTO `admin_logs` VALUES (45, '登录系统', '[]', '[]', 1599531305, 2);
INSERT INTO `admin_logs` VALUES (46, '登录系统', '[]', '[]', 1599531316, 2);
INSERT INTO `admin_logs` VALUES (47, '登录系统', '[]', '[]', 1599531393, 2);
INSERT INTO `admin_logs` VALUES (48, '登录系统', '[]', '[]', 1599533594, 2);
INSERT INTO `admin_logs` VALUES (49, '登录系统', '[]', '[]', 1599551504, 2);
INSERT INTO `admin_logs` VALUES (50, '退出系统', '[]', '[]', 1599552066, 2);
INSERT INTO `admin_logs` VALUES (51, '登录系统', '[]', '[]', 1599552083, 1);
INSERT INTO `admin_logs` VALUES (52, '编辑管理员', '{\"id\":2,\"username\":\"xiaoziyan\",\"password\":\"hs46bCan6jdJF8+9aiCiwbvWzfpI+\\/hRBQPu37kms3a2vJJwUO9VLzXa2qXMXMcb9D7gEer6yDB\\/76nxmuSXR9RFR2xWxSXtyM0fNqxq0g+ZOU0MEY4EFxrzjuAvDpnAHxVScqb1WCCM87QdbJBGNee++8IWFHvachC3z+P8Pa8=\",\"nickname\":\"华尚科技\",\"telephone\":\"13433323221\",\"email\":\"\",\"status\":0,\"create_time\":1598953717,\"delete_time\":null,\"is_default\":0,\"role_id\":4}', '{\"id\":\"2\",\"username\":\"xiaoziyan\",\"nickname\":\"华尚科技\",\"role_id\":\"4\",\"telephone\":\"13433323225\",\"email\":\"\",\"token\":\"5445BD4C1EE741A012728F17317EC3A9\",\"sign\":\"jEW7OXg9zUVTVFoStkgS96blzTuATQcF8VoGwvMASwrT2wvjDY0LOVp2OMSsg5abR+mNk88k3aKjmlDDQC0uSP7qgAtTecnGFlX9p4bF2pF0e\\/sTEQOxOYqhFaN5zQtcN2ZBpqOYkMRNnzi\\/Q4QlqS\\/lVV4ZISqjJ\\/sn+ecYo9w=\"}', 1599553896, 1);
INSERT INTO `admin_logs` VALUES (53, '编辑管理员', '{\"id\":2,\"username\":\"xiaoziyan\",\"password\":\"hs46bCan6jdJF8+9aiCiwbvWzfpI+\\/hRBQPu37kms3a2vJJwUO9VLzXa2qXMXMcb9D7gEer6yDB\\/76nxmuSXR9RFR2xWxSXtyM0fNqxq0g+ZOU0MEY4EFxrzjuAvDpnAHxVScqb1WCCM87QdbJBGNee++8IWFHvachC3z+P8Pa8=\",\"nickname\":\"华尚科技\",\"telephone\":\"13433323225\",\"email\":\"\",\"status\":0,\"create_time\":1598953717,\"delete_time\":null,\"is_default\":0,\"role_id\":4}', '{\"id\":\"2\",\"username\":\"xiaoziyan\",\"nickname\":\"华尚科技\",\"role_id\":\"4\",\"telephone\":\"13433323221\",\"email\":\"\",\"token\":\"5445BD4C1EE741A012728F17317EC3A9\",\"sign\":\"Bm4B6epVsirqc1nCmJz+sR3Xu5gqPZsdL9u92kpcH2JyqyP7BUGYwHNzZcL6YbjZbpY+pM1yR4DFd3b4RGwG03FI5R8mmfrDgf18E2ROjB8ykKOMUlMouz0fzldjyDdQ+WkYXOHS9UuFK7aLbvk65HujjeNmCDR4j62k+IwqVmA=\"}', 1599555750, 1);
INSERT INTO `admin_logs` VALUES (54, '角色授权', '[10,9,8,7,6,5,2,1]', '[1,2,5,6,7,8,9,10]', 1599558218, 1);
INSERT INTO `admin_logs` VALUES (55, '角色授权', '[10,9,8,7,6,5,2,1]', '[1,2,5,6,7,8,9,10]', 1599558225, 1);
INSERT INTO `admin_logs` VALUES (56, '角色授权', '[10,9,8,7,6,5,2,1]', '[10]', 1599558241, 1);
INSERT INTO `admin_logs` VALUES (57, '角色授权', '[10]', '[10]', 1599558249, 1);
INSERT INTO `admin_logs` VALUES (58, '角色授权', '[10]', '[10]', 1599559625, 1);
INSERT INTO `admin_logs` VALUES (59, '角色授权', '[10]', '[10]', 1599559638, 1);
INSERT INTO `admin_logs` VALUES (60, '角色授权', '[10]', '[10]', 1599560026, 1);
INSERT INTO `admin_logs` VALUES (61, '角色授权', '[10]', '[10]', 1599560077, 1);
INSERT INTO `admin_logs` VALUES (62, '角色授权', '[10]', '[1,2,3,4,5,6,7,8,9,10]', 1599560109, 1);
INSERT INTO `admin_logs` VALUES (63, '登录系统', '[]', '[]', 1599613497, 1);
INSERT INTO `admin_logs` VALUES (64, '登录系统', '[]', '[]', 1599615846, 1);
INSERT INTO `admin_logs` VALUES (65, '编辑用户', '{\"id\":1,\"username\":\"admin\",\"password\":\"L\\/v1WQD0dlHmFh78DyotVfu2POao400AevjG2G7uFLQej5pSIHuFRdOAu3eVc+DqrXBba88u1xaOb4JTZdcIjv96nhouUmK0uRns+lTeLgEgGZDtqulZyMUtI5XizaLYvxzIiyzhf5yiZE90PyieR53zpY70b+2Uql6qdNAVyFo=\",\"nickname\":\"小明\",\"telephone\":\"1591355123\",\"email\":\"fripside@126.com\",\"img\":null,\"status\":0,\"create_time\":1598926248,\"delete_time\":null}', '{\"status\":1}', 1599618909, 1);
INSERT INTO `admin_logs` VALUES (66, '编辑用户', '{\"id\":1,\"username\":\"admin\",\"password\":\"L\\/v1WQD0dlHmFh78DyotVfu2POao400AevjG2G7uFLQej5pSIHuFRdOAu3eVc+DqrXBba88u1xaOb4JTZdcIjv96nhouUmK0uRns+lTeLgEgGZDtqulZyMUtI5XizaLYvxzIiyzhf5yiZE90PyieR53zpY70b+2Uql6qdNAVyFo=\",\"nickname\":\"小明\",\"telephone\":\"1591355123\",\"email\":\"fripside@126.com\",\"img\":null,\"status\":1,\"create_time\":1598926248,\"delete_time\":null}', '{\"status\":0}', 1599619181, 1);
INSERT INTO `admin_logs` VALUES (67, '编辑用户', '{\"id\":1,\"username\":\"admin\",\"password\":\"L\\/v1WQD0dlHmFh78DyotVfu2POao400AevjG2G7uFLQej5pSIHuFRdOAu3eVc+DqrXBba88u1xaOb4JTZdcIjv96nhouUmK0uRns+lTeLgEgGZDtqulZyMUtI5XizaLYvxzIiyzhf5yiZE90PyieR53zpY70b+2Uql6qdNAVyFo=\",\"nickname\":\"小明\",\"telephone\":\"1591355123\",\"email\":\"fripside@126.com\",\"img\":null,\"status\":0,\"create_time\":1598926248,\"delete_time\":null}', '{\"status\":1}', 1599619185, 1);
INSERT INTO `admin_logs` VALUES (68, '退出系统', '[]', '[]', 1599623908, 1);
INSERT INTO `admin_logs` VALUES (69, '登录系统', '[]', '[]', 1599623920, 1);
INSERT INTO `admin_logs` VALUES (70, '登录系统', '[]', '[]', 1599629921, 1);
INSERT INTO `admin_logs` VALUES (71, '登录系统', '[]', '[]', 1599629958, 1);
INSERT INTO `admin_logs` VALUES (72, '编辑用户', '{\"id\":1,\"username\":\"admin\",\"password\":\"L\\/v1WQD0dlHmFh78DyotVfu2POao400AevjG2G7uFLQej5pSIHuFRdOAu3eVc+DqrXBba88u1xaOb4JTZdcIjv96nhouUmK0uRns+lTeLgEgGZDtqulZyMUtI5XizaLYvxzIiyzhf5yiZE90PyieR53zpY70b+2Uql6qdNAVyFo=\",\"nickname\":\"小明\",\"telephone\":\"1591355123\",\"email\":\"fripside@126.com\",\"img\":null,\"status\":1,\"create_time\":1598926248,\"delete_time\":null}', '{\"status\":0}', 1599630048, 1);
INSERT INTO `admin_logs` VALUES (73, '编辑用户', '{\"id\":2,\"username\":\"xiaoziyan\",\"password\":\"hs46bCan6jdJF8+9aiCiwbvWzfpI+\\/hRBQPu37kms3a2vJJwUO9VLzXa2qXMXMcb9D7gEer6yDB\\/76nxmuSXR9RFR2xWxSXtyM0fNqxq0g+ZOU0MEY4EFxrzjuAvDpnAHxVScqb1WCCM87QdbJBGNee++8IWFHvachC3z+P8Pa8=\",\"nickname\":\"小海\",\"telephone\":\"13433323221\",\"email\":\"\",\"img\":null,\"status\":0,\"create_time\":1598953717,\"delete_time\":null}', '{\"id\":\"2\",\"username\":\"xiaoziyan\",\"nickname\":\"小海\",\"telephone\":\"13433323221\",\"email\":\"\",\"file\":\"\",\"img\":\"\\/storage\\/img\\/20200909\\/8ccb8601ff480bdc0a5e98a77d7129ac.jpg\",\"token\":\"D69744C8D403B2F85926050D13D1692C\",\"sign\":\"zYx9BY58gsLlawtSx0IMDMVQWZuH+ifTH7QeGUvgSTngzErhmi1bIDKcrldhav\\/BIDgGQ3QqlEU5V6QtV5r3rswhmQUvWVRpZKfiylia7FfbB9kjExnnnf+zdsrQISnbV9JivbbUhjDTnG0+MiI51N0npi+Cp\\/BrgYegE4EGdDQ=\"}', 1599639465, 1);
INSERT INTO `admin_logs` VALUES (74, '新增用户', '[]', '{\"username\":\"root\",\"password\":\"wZuS1+IF6dQO7X63IzATi+\\/mP\\/fysZuwlwAs7xWeC36CYXimxyadloCBOws8wFrJRYUve8wBm80SQxJkAXDbtpR+igtp3aglulHIBnGi26MqTHPJFszABAJ+7pMRATErnQUPGV\\/CslszzihZb+7fvNNd2EXZ5fwMM+K6EC4VhlI=\",\"nickname\":\"测试\",\"telephone\":\"\",\"email\":\"\",\"img\":\"\\/storage\\/img\\/20200909\\/b8f900727501753321a7b1dde7eb78a8.jpg\",\"create_time\":\"2020-09-09 17:03\",\"id\":\"3\"}', 1599642202, 1);
INSERT INTO `admin_logs` VALUES (75, '编辑用户', '{\"id\":1,\"username\":\"admin\",\"password\":\"L\\/v1WQD0dlHmFh78DyotVfu2POao400AevjG2G7uFLQej5pSIHuFRdOAu3eVc+DqrXBba88u1xaOb4JTZdcIjv96nhouUmK0uRns+lTeLgEgGZDtqulZyMUtI5XizaLYvxzIiyzhf5yiZE90PyieR53zpY70b+2Uql6qdNAVyFo=\",\"nickname\":\"小明\",\"telephone\":\"1591355123\",\"email\":\"fripside@126.com\",\"img\":null,\"status\":0,\"create_time\":1598926248,\"delete_time\":null}', '{\"status\":1}', 1599643261, 1);
INSERT INTO `admin_logs` VALUES (76, '编辑用户', '{\"id\":2,\"username\":\"xiaoziyan\",\"password\":\"hs46bCan6jdJF8+9aiCiwbvWzfpI+\\/hRBQPu37kms3a2vJJwUO9VLzXa2qXMXMcb9D7gEer6yDB\\/76nxmuSXR9RFR2xWxSXtyM0fNqxq0g+ZOU0MEY4EFxrzjuAvDpnAHxVScqb1WCCM87QdbJBGNee++8IWFHvachC3z+P8Pa8=\",\"nickname\":\"小海\",\"telephone\":\"13433323221\",\"email\":\"\",\"img\":\"\\/storage\\/img\\/20200909\\/8ccb8601ff480bdc0a5e98a77d7129ac.jpg\",\"status\":0,\"create_time\":1598953717,\"delete_time\":null}', '{\"id\":\"2\",\"username\":\"xiaoziyan\",\"nickname\":\"小海\",\"telephone\":\"13433323221\",\"email\":\"\",\"file\":\"\",\"img\":\"\\/storage\\/img\\/20200909\\/7555054d1f3971abd2182a9b80eb0f2a.jpg\",\"token\":\"D69744C8D403B2F85926050D13D1692C\",\"sign\":\"Q6hHiC3VWlc8mDBUoYjqaaDGKWqpJxgecVL1ZorDDrx1pVtq50QyyQQX6gXgrCG1j7RrABWx0Pzfin46KDhys98SR8xHe+EDM19H9OPttBtLrjEs0I6cSDJYwEHkbAk4cZfp0pDDnLcXFz8RfC1NIAH0r0tY5q6iy9qbpF55egI=\"}', 1599643518, 1);
INSERT INTO `admin_logs` VALUES (77, '删除用户', '{\"id\":3,\"username\":\"root\",\"password\":\"wZuS1+IF6dQO7X63IzATi+\\/mP\\/fysZuwlwAs7xWeC36CYXimxyadloCBOws8wFrJRYUve8wBm80SQxJkAXDbtpR+igtp3aglulHIBnGi26MqTHPJFszABAJ+7pMRATErnQUPGV\\/CslszzihZb+7fvNNd2EXZ5fwMM+K6EC4VhlI=\",\"nickname\":\"测试\",\"telephone\":\"\",\"email\":\"\",\"img\":\"\\/storage\\/img\\/20200909\\/b8f900727501753321a7b1dde7eb78a8.jpg\",\"status\":0,\"create_time\":1599642202,\"delete_time\":1599644117}', '[]', 1599644117, 1);
INSERT INTO `admin_logs` VALUES (78, '删除用户', '{\"id\":3,\"username\":\"root\",\"password\":\"wZuS1+IF6dQO7X63IzATi+\\/mP\\/fysZuwlwAs7xWeC36CYXimxyadloCBOws8wFrJRYUve8wBm80SQxJkAXDbtpR+igtp3aglulHIBnGi26MqTHPJFszABAJ+7pMRATErnQUPGV\\/CslszzihZb+7fvNNd2EXZ5fwMM+K6EC4VhlI=\",\"nickname\":\"测试\",\"telephone\":\"\",\"email\":\"\",\"img\":\"\\/storage\\/img\\/20200909\\/b8f900727501753321a7b1dde7eb78a8.jpg\",\"status\":0,\"create_time\":1599642202,\"delete_time\":1599644165}', '[]', 1599644165, 1);
INSERT INTO `admin_logs` VALUES (79, '新增用户', '[]', '{\"username\":\"test\",\"password\":\"SoMeN9tsDQlBoVwO\\/yGUedfnLNZz+BVgCy5dB3P2+TNb+hJALflJTKn+QmvTA0c8D7z1pOCNONcZGLtq6jEJeCbQfxUOT1TzOpAfk9b7FtpQ7qPQOOSAX1ymxS2VhEu5WOhBBsejXIzlDg0ruXQwMIpmFIBzAaFUYfLuh1dRLOo=\",\"nickname\":\"测试角色\",\"telephone\":\"\",\"email\":\"\",\"img\":\"\\/storage\\/img\\/20200909\\/9ccf531d3945ed96380886566a6f8fe3.jpg\",\"create_time\":\"2020-09-09 18:26\",\"id\":\"4\"}', 1599647177, 1);
INSERT INTO `admin_logs` VALUES (80, '登录系统', '[]', '[]', 1599699296, 1);
INSERT INTO `admin_logs` VALUES (81, '登录系统', '[]', '[]', 1599705247, 1);
INSERT INTO `admin_logs` VALUES (82, '登录系统', '[]', '[]', 1599705662, 1);
INSERT INTO `admin_logs` VALUES (83, '新增用户', '[]', '{\"username\":\"123\",\"password\":\"gNJvJUjDJFJQ59FgB4X4quHLS8Cu2VzFnFi\\/A8zOD88kWZo0+GWoWXEw2TLZ1DeUYUAGvm0sLxQd\\/YeclUvQI7JxZ09LZPGPprmLeFI+3elJ1jsaqYY1qITRDJeaFzJBYT9aoDYmdQ9n+SKRT2z0n3RK01y1LjvppucPQBlj\\/cE=\",\"nickname\":\"asd\",\"telephone\":\"\",\"email\":\"\",\"img\":\"\",\"create_time\":\"2020-09-10 10:43\",\"id\":\"5\"}', 1599705788, 1);
INSERT INTO `admin_logs` VALUES (84, '删除用户', '{\"id\":5,\"username\":\"123\",\"password\":\"gNJvJUjDJFJQ59FgB4X4quHLS8Cu2VzFnFi\\/A8zOD88kWZo0+GWoWXEw2TLZ1DeUYUAGvm0sLxQd\\/YeclUvQI7JxZ09LZPGPprmLeFI+3elJ1jsaqYY1qITRDJeaFzJBYT9aoDYmdQ9n+SKRT2z0n3RK01y1LjvppucPQBlj\\/cE=\",\"nickname\":\"asd\",\"telephone\":\"\",\"email\":\"\",\"img\":\"\",\"status\":0,\"create_time\":1599705788,\"delete_time\":1599705857}', '[]', 1599705857, 1);
INSERT INTO `admin_logs` VALUES (85, '登录系统', '[]', '[]', 1599728399, 1);

-- ----------------------------
-- Table structure for admins
-- ----------------------------
DROP TABLE IF EXISTS `admins`;
CREATE TABLE `admins`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '账号',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '密码',
  `nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '姓名',
  `telephone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '联系邮箱',
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '状态',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `delete_time` int(11) NULL DEFAULT NULL,
  `is_default` int(11) NOT NULL DEFAULT 0,
  `role_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '管理员' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admins
-- ----------------------------
INSERT INTO `admins` VALUES (1, 'admin', 'L/v1WQD0dlHmFh78DyotVfu2POao400AevjG2G7uFLQej5pSIHuFRdOAu3eVc+DqrXBba88u1xaOb4JTZdcIjv96nhouUmK0uRns+lTeLgEgGZDtqulZyMUtI5XizaLYvxzIiyzhf5yiZE90PyieR53zpY70b+2Uql6qdNAVyFo=', '梓潼', '1591355123', 'fripside@126.com', 0, 1598926248, NULL, 1, 1);
INSERT INTO `admins` VALUES (2, 'xiaoziyan', 'hs46bCan6jdJF8+9aiCiwbvWzfpI+/hRBQPu37kms3a2vJJwUO9VLzXa2qXMXMcb9D7gEer6yDB/76nxmuSXR9RFR2xWxSXtyM0fNqxq0g+ZOU0MEY4EFxrzjuAvDpnAHxVScqb1WCCM87QdbJBGNee++8IWFHvachC3z+P8Pa8=', '华尚科技', '13433323221', '', 0, 1598953717, NULL, 0, 4);

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `k` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `introduce` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `v_cn` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `v_us` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `group_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统配置' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for contract
-- ----------------------------
DROP TABLE IF EXISTS `contract`;
CREATE TABLE `contract`  (
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `price` decimal(10, 2) NOT NULL COMMENT '投资金额',
  `cycle` int(11) NOT NULL COMMENT '合约周期天数',
  `profit` decimal(4, 2) NOT NULL COMMENT '收益率',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `end_time` int(11) NOT NULL COMMENT '结束时间',
  `frequency` int(11) NOT NULL COMMENT '期数',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '合约记录表' ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for dynamic
-- ----------------------------
DROP TABLE IF EXISTS `dynamic`;
CREATE TABLE `dynamic`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `edition` int(10) NOT NULL COMMENT '代数',
  `branch` int(10) NOT NULL COMMENT '直推人数',
  `profit` decimal(10, 2) NOT NULL COMMENT '收益率',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `del_time` int(11) NULL DEFAULT NULL COMMENT '删除时间',
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '动态收益设置表' ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of dynamic
-- ----------------------------
INSERT INTO `dynamic` VALUES (1, 1, 1, 50.00, 1599990645, NULL, 0);
INSERT INTO `dynamic` VALUES (2, 3, 2, 20.00, 1599990706, NULL, 0);
INSERT INTO `dynamic` VALUES (3, 5, 3, 10.00, 1599990722, NULL, 0);
INSERT INTO `dynamic` VALUES (4, 7, 4, 10.00, 1599990739, NULL, 0);
INSERT INTO `dynamic` VALUES (5, 9, 5, 10.00, 1599990746, NULL, 0);
INSERT INTO `dynamic` VALUES (6, 11, 6, 5.00, 1599990764, NULL, 0);
INSERT INTO `dynamic` VALUES (7, 11, 6, 99.00, 1599990832, 1599990917, 0);

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `level` int(11) NOT NULL DEFAULT 1,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pid` int(11) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `is_show` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '菜单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES (1, '系统设置', NULL, 1, NULL, 0, 0, 1);
INSERT INTO `menu` VALUES (2, '权限管理', NULL, 1, NULL, 0, 6, 1);
INSERT INTO `menu` VALUES (3, '基本设置', NULL, 2, 'config/config', 1, 0, 1);
INSERT INTO `menu` VALUES (4, '管理员管理', NULL, 2, 'admin/lists', 2, 0, 1);
INSERT INTO `menu` VALUES (5, '角色管理', NULL, 2, 'role/lists', 2, 1, 1);
INSERT INTO `menu` VALUES (6, '操作日志', NULL, 2, 'log/admin', 2, 2, 1);
INSERT INTO `menu` VALUES (7, '收益设置', NULL, 1, NULL, 0, 0, 1);
INSERT INTO `menu` VALUES (8, '静态收益', NULL, 2, 'profit/lists', 7, 0, 1);
INSERT INTO `menu` VALUES (11, '动态收益', NULL, 2, 'dynamic/lists', 7, 1, 1);
INSERT INTO `menu` VALUES (12, '团队收益', NULL, 2, 'team/lists', 7, 2, 1);

-- ----------------------------
-- Table structure for powers
-- ----------------------------
DROP TABLE IF EXISTS `powers`;
CREATE TABLE `powers`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '权限名称',
  `controller` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '控制器',
  `action` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '方法',
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '请求方式',
  `menu_id` int(11) NULL DEFAULT NULL COMMENT '关联菜单',
  `is_default` int(11) NULL DEFAULT 1 COMMENT '新增角色的默认权限',
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '权限码（菜单ID+操作码）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 77 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '权限' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of powers
-- ----------------------------
INSERT INTO `powers` VALUES (1, '查看管理员', 'Admins', 'lists', 'get', 4, 1, '0400');
INSERT INTO `powers` VALUES (2, '添加管理员', 'Admins', 'add', 'post', 4, 1, '0401');
INSERT INTO `powers` VALUES (3, '编辑管理员', 'Admins', 'modify', 'post', 4, 1, '0402');
INSERT INTO `powers` VALUES (4, '删除管理员', 'Admins', 'del', 'post', 4, 1, '0403');
INSERT INTO `powers` VALUES (5, '查看角色', 'Roles', 'lists', 'get', 5, 1, '0500');
INSERT INTO `powers` VALUES (6, '添加角色', 'Roles', 'add', 'post', 5, 1, '0501');
INSERT INTO `powers` VALUES (7, '编辑角色', 'Roles', 'modify', 'post', 5, 1, '0502');
INSERT INTO `powers` VALUES (8, '删除角色', 'Roles', 'del', 'post', 5, 1, '0503');
INSERT INTO `powers` VALUES (9, '角色授权', 'Roles', 'authorization', 'post', 5, 1, '0504');
INSERT INTO `powers` VALUES (10, '查看操作日志', 'Logs', 'admins', 'get', 6, 1, '0600');
INSERT INTO `powers` VALUES (61, '静态收益', 'Profit', 'lists', 'get', 8, 1, '0800');
INSERT INTO `powers` VALUES (62, '静态收益状态', 'Profit', 'status', 'post', 8, 1, '0801');
INSERT INTO `powers` VALUES (64, '编辑静态收益', 'Profit', 'modify', 'post', 8, 1, '0803');
INSERT INTO `powers` VALUES (65, '添加静态收益', 'Profit', 'add', 'post', 8, 1, '0804');
INSERT INTO `powers` VALUES (66, '删除静态收益', 'Profit', 'del', 'post', 8, 1, '0805');
INSERT INTO `powers` VALUES (67, '动态收益', 'Dynamic', 'lists', 'get', 11, 1, '1101');
INSERT INTO `powers` VALUES (68, '动态收益状态', 'Dynamic', 'status', 'post', 11, 1, '1102');
INSERT INTO `powers` VALUES (69, '编辑动态收益', 'Dynamic', 'modify', 'post', 11, 1, '1103');
INSERT INTO `powers` VALUES (70, '添加动态收益', 'Dynamic', 'add', 'post', 11, 1, '1104');
INSERT INTO `powers` VALUES (71, '删除动态收益', 'Dynamic', 'del', 'post', 11, 1, '1105');
INSERT INTO `powers` VALUES (72, '团队收益', 'Team', 'lists', 'post', 12, 1, '1201');
INSERT INTO `powers` VALUES (73, '团队收益状态', 'Team', 'status', 'post', 12, 1, '1202');
INSERT INTO `powers` VALUES (74, '编辑团队收益', 'Team', 'modify', 'post', 12, 1, '1203');
INSERT INTO `powers` VALUES (75, '添加团队收益', 'Team', 'add', 'poat', 12, 1, '1204');
INSERT INTO `powers` VALUES (76, '删除团队收益', 'Team', 'del', 'poat', 12, 1, '1205');

-- ----------------------------
-- Table structure for profit
-- ----------------------------
DROP TABLE IF EXISTS `profit`;
CREATE TABLE `profit`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price` decimal(10, 2) NOT NULL COMMENT '金额',
  `cycle` int(10) NOT NULL COMMENT '周期天数',
  `profit` decimal(10, 2) NOT NULL COMMENT '收益率',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `del_time` int(11) NULL DEFAULT NULL COMMENT '删除时间',
  `edit_time` int(11) NULL DEFAULT NULL COMMENT '编辑时间',
  `status` tinyint(1) NOT NULL COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '收益设置表' ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of profit
-- ----------------------------
INSERT INTO `profit` VALUES (1, 100.00, 12, 3.60, 1599981664, NULL, NULL, 0);
INSERT INTO `profit` VALUES (2, 500.00, 12, 5.60, 1599981948, NULL, NULL, 0);
INSERT INTO `profit` VALUES (3, 1000.00, 12, 7.60, 1599981960, NULL, NULL, 0);
INSERT INTO `profit` VALUES (4, 5000.00, 12, 9.60, 1599981973, NULL, NULL, 0);
INSERT INTO `profit` VALUES (5, 10000.00, 12, 11.60, 1599981983, 1599982367, NULL, 0);
INSERT INTO `profit` VALUES (6, 20000.00, 30, 12.00, 1599983080, NULL, NULL, 0);

-- ----------------------------
-- Table structure for relationship
-- ----------------------------
DROP TABLE IF EXISTS `relationship`;
CREATE TABLE `relationship`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `sp_id` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '关系格式：,A_id,B_id,C_id,(上级所有ID)',
  `stratum` int(11) NOT NULL COMMENT '层级',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '会员关系表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of relationship
-- ----------------------------
INSERT INTO `relationship` VALUES (1, 1, 0, '', 0);
INSERT INTO `relationship` VALUES (2, 2, 1, ',1,', 1);
INSERT INTO `relationship` VALUES (3, 3, 2, ',1,2,', 2);
INSERT INTO `relationship` VALUES (4, 4, 3, ',1,2,3,', 3);
INSERT INTO `relationship` VALUES (5, 5, 0, '', 0);
INSERT INTO `relationship` VALUES (6, 6, 5, ',5,', 1);
INSERT INTO `relationship` VALUES (7, 7, 5, ',5,', 1);
INSERT INTO `relationship` VALUES (8, 8, 7, ',5,7,', 2);
INSERT INTO `relationship` VALUES (9, 9, 8, ',5,7,8,', 3);

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `introduce` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `create_time` int(11) NOT NULL,
  `delete_time` int(11) NULL DEFAULT NULL,
  `is_default` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES (1, '超级管理员', '最高管理员', 1598926865, NULL, 1);
INSERT INTO `roles` VALUES (4, '测试角色', '123456', 1598942979, NULL, 0);
INSERT INTO `roles` VALUES (5, '测试角色2', '哇哈哈啊哈123', 1598943191, 1598953009, 0);

-- ----------------------------
-- Table structure for roles_power
-- ----------------------------
DROP TABLE IF EXISTS `roles_power`;
CREATE TABLE `roles_power`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `power_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 91 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '权限分配' ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of roles_power
-- ----------------------------
INSERT INTO `roles_power` VALUES (88, 4, 8);
INSERT INTO `roles_power` VALUES (87, 4, 7);
INSERT INTO `roles_power` VALUES (86, 4, 6);
INSERT INTO `roles_power` VALUES (85, 4, 5);
INSERT INTO `roles_power` VALUES (84, 4, 4);
INSERT INTO `roles_power` VALUES (83, 4, 3);
INSERT INTO `roles_power` VALUES (82, 4, 2);
INSERT INTO `roles_power` VALUES (81, 4, 1);
INSERT INTO `roles_power` VALUES (11, 5, 1);
INSERT INTO `roles_power` VALUES (12, 5, 2);
INSERT INTO `roles_power` VALUES (13, 5, 3);
INSERT INTO `roles_power` VALUES (14, 5, 4);
INSERT INTO `roles_power` VALUES (15, 5, 5);
INSERT INTO `roles_power` VALUES (16, 5, 6);
INSERT INTO `roles_power` VALUES (17, 5, 7);
INSERT INTO `roles_power` VALUES (18, 5, 8);
INSERT INTO `roles_power` VALUES (19, 5, 9);
INSERT INTO `roles_power` VALUES (20, 5, 10);
INSERT INTO `roles_power` VALUES (89, 4, 9);
INSERT INTO `roles_power` VALUES (90, 4, 10);

-- ----------------------------
-- Table structure for team
-- ----------------------------
DROP TABLE IF EXISTS `team`;
CREATE TABLE `team`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `level` int(11) NOT NULL COMMENT '团队等级',
  `price` decimal(10, 2) NOT NULL COMMENT '团队业绩总金额',
  `branch` int(11) NOT NULL COMMENT '直推人数',
  `upper` int(11) NOT NULL COMMENT '上一团队等级个数',
  `profit` decimal(10, 2) NOT NULL COMMENT '收益率',
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '状态',
  `create_time` int(11) NOT NULL COMMENT '添加时间',
  `del_time` int(11) NULL DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `level`(`level`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '团队收益设置表' ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of team
-- ----------------------------
INSERT INTO `team` VALUES (1, 1, 50000.00, 6, 0, 10.00, 0, 1599994953, 1599996145);
INSERT INTO `team` VALUES (2, 2, 100000.00, 6, 2, 20.00, 0, 1599995196, 1599996145);
INSERT INTO `team` VALUES (3, 3, 300000.00, 6, 2, 30.00, 0, 1599995274, NULL);
INSERT INTO `team` VALUES (4, 4, 1000000.00, 6, 2, 40.00, 0, 1599995280, NULL);
INSERT INTO `team` VALUES (5, 5, 3000000.00, 6, 2, 45.00, 0, 1599995287, NULL);

-- ----------------------------
-- Table structure for transaction
-- ----------------------------
DROP TABLE IF EXISTS `transaction`;
CREATE TABLE `transaction`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(2) NOT NULL COMMENT '1静态收益,2动态收益,3团队收益',
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0未发放,1已发放',
  `price` decimal(10, 2) NOT NULL COMMENT '发放金额',
  `create_time` int(11) NOT NULL,
  `fulfil_time` int(11) NULL DEFAULT NULL COMMENT '发放时间',
  `contract_id` int(11) NOT NULL COMMENT '合约id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '收益发放记录表' ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '邮箱即登录账号',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `pid` int(11) UNSIGNED NOT NULL COMMENT '上级id',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `del_time` int(11) NULL DEFAULT NULL COMMENT '删除时间',
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '状态',
  `transaction` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '交易密码',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `登录账号`(`email`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, '784976173@qq.com', 'oB2mRGWMJNZ2k+TEvAmmb0C603zdIyHUsfy8YxCTkikrGvTTPlagFKcWy7vSTHSd5Fpkf1ba/AcU7xr6RWojiBa8KhhHtm3H+wsHB3XReJ7f3H+ng4w/9F1e/8uwwuciICvfrQdpyANjRQ3LUdMhAXuDK4KPov0v5m4nfetimu4=', 0, 1599793472, NULL, 0, NULL);
INSERT INTO `users` VALUES (2, '773900102@qq.com', 'Oe2VBBkvljbNAhMhxW/WlkHmqOx6hFNK2F8MdMjXB2hr3ns13LG1DK1E8ZuA/gn8q4XwDj//3Un6GIX5XgLwP4pv7abvywd1BirYDLg3t1ILYqiI9ndKBG9Np4/W95ImWjs/cCazFkQSwoQrI+032SQ7FjZ4EPgHPkKe9qljMtU=', 1, 1599810077, 1599812399, 1, 'vWbqt7NKcMQwR8Ckh9gc0I3UZCTQQuU73mcDnHfv42ki0jL0DvkxZHnQoNUACbPNPp96BHQrVGgDqtV7Hxx0knWpBhlEDfw3G3Xl6gNUgxSnHM0hNWC3ihsqzBVqPb0l9gdG4WghR2uFZ+7JPJOuZPdAy5KwjoGgRBWVIEZq4PI=');
INSERT INTO `users` VALUES (3, '773900203@qq.com', 'jBKEZpfTKRu6hCPjwgweRnqmzp9PHUfAYMrQTw/DkPOxoHhWupbdv8yMAKln35wBqIFAe0Asj7H/CPETALsEQeji3O5Bn7+BIKBnarHFYL3VtnVkNluLGwYMr430MYkOLfoXnZkFFH5621PDHbNargnlZ46vMfN0eV6uxxr4Idc=', 2, 1599810383, NULL, 0, NULL);
INSERT INTO `users` VALUES (4, '773900304@qq.com', 'pt6TnkQWF1v5YITsKe6EDi9SJHy1PhkhKHhhsEc09IfuMqRTbo6KVUJI0D+CRE4jgoWso/mdL+5sC9/CNTQ6axPnJRyHutCrShW+qjDAzxRXDZll3vTMECCYss+CmQ0dNDlumszC2FXM+RrAyx6L4m7PilFxjbjFCXe0YAOI36E=', 3, 1599810455, NULL, 0, NULL);
INSERT INTO `users` VALUES (5, '439900001@qq.com', 'WxApC6YPB402JqC+ftMxk/xJHvf6arM6f4dRfvv4N1fKpmga9ovWflLLRNRjGmzFRSrgBU8egzAidAkMtUxvEOCB0yUaAwdxH1nsKRZafKYV+TG43Jmi1AOnZZUszEvE9r4xhcJq4H38IuNhl0H55S/LjsGEEdGEfFn0Ep2Ajgg=', 0, 1599814807, NULL, 0, NULL);
INSERT INTO `users` VALUES (6, '773900506@qq.com', 'XYh9SQ0tUxu6nKtCoXpHhehhaqdwj3oE08PsC9avlAxZueKbOVOQCXPic0tU6EEeGaelG+b4cAUfqIejh1bxoUGZZTRXnlZPT1Z1Lsd/5DH5K9UTAeWTQPvFnkHOcmvfO/pENY7GT0qwEfOwUp/Rftm2amGctr8sL31X8hWz4LE=', 5, 1599814876, NULL, 0, NULL);
INSERT INTO `users` VALUES (7, '773900507@qq.com', 'CeOqmH7kr6SKzEgTqpnduFxmXdsDz0tpBF//CoDOR+C2CdhaJUzE7FNf3kepAkCvjvfoP9QLF2bBvcqXYk6l/VeheZFZcBar8kIEnzD7+1QafEuEYbPx0hYM9IC425FPyQoRqGh2vKghgNm1/8MuPo1up33dcA8CWsNDgnIK1G8=', 5, 1599815078, NULL, 0, NULL);
INSERT INTO `users` VALUES (8, '773900708@qq.com', 'hEXyAJSUXz/vfWACbIXezwy2RHd5Ho0WWA+7QFIgPcKY3Y3FnX9poO9lA43QveR+bCpSSN3P5uFygOG1P+bDQDCr/cJxN5PlM7AcTZZnzC/+oaAPCDb4p//zX08fDns+RyNoF79O5Hccfan58/gxeU8GaCaUdqsMCPSh5FOkOmE=', 7, 1599815297, NULL, 0, NULL);
INSERT INTO `users` VALUES (9, '773900809@qq.com', 'ptTaDHSaxKozRx/2nfV0BeGkS/tlG3E5qEbxiRyXlwkZvJ8OIP6EvWs92VV9s239mlzyNh6dRY+P+oGt0Ywuu8JEiG2hxA2qyR4e3X/Sq7f+MAZLB1g3rkCgTDta3QMZ1g6PJ9vwr/WTQtbmgdqU256fgKIt/D2gglABJYg1kP8=', 8, 1599815376, NULL, 0, NULL);

SET FOREIGN_KEY_CHECKS = 1;
