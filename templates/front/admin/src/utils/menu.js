const menu = {
    list() {
        return [{"backMenu":[{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"学生","menuJump":"列表","tableName":"xuesheng"}],"menu":"学生管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"学院信息","menuJump":"列表","tableName":"xueyuanxinxi"}],"menu":"学院信息管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"专业信息","menuJump":"列表","tableName":"zhuanyexinxi"}],"menu":"专业信息管理"},{"child":[{"buttons":["新增","查看","修改","删除","入住学生"],"menu":"宿舍信息","menuJump":"列表","tableName":"sushexinxi"}],"menu":"宿舍信息管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"学生入住","menuJump":"列表","tableName":"xueshengruzhu"}],"menu":"学生入住管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"宿管员","menuJump":"列表","tableName":"suguanyuan"}],"menu":"宿管员管理"},{"child":[{"buttons":["新增","查看","修改","删除","审核"],"menu":"设备报修","menuJump":"列表","tableName":"shebeibaoxiu"}],"menu":"设备报修管理"}],"frontMenu":[],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"管理员","tableName":"users"},{"backMenu":[{"child":[{"buttons":["查看","设备报修"],"menu":"学生入住","menuJump":"列表","tableName":"xueshengruzhu"}],"menu":"学生入住管理"},{"child":[{"buttons":["查看","删除","修改"],"menu":"设备报修","menuJump":"列表","tableName":"shebeibaoxiu"}],"menu":"设备报修管理"}],"frontMenu":[],"hasBackLogin":"是","hasBackRegister":"是","hasFrontLogin":"是","hasFrontRegister":"是","roleName":"学生","tableName":"xuesheng"}]
    }
}
export default menu;