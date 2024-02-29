const base = {
    get() {
                return {
            url : "http://localhost:8080/ricky/",
            name: "ricky",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/ricky/front/index.html'
        };
            },
    getProjectName(){
        return {
            projectName: "学生宿舍管理系统"
        } 
    }
}
export default base
