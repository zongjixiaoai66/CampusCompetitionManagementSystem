const base = {
    get() {
        return {
            url : "http://localhost:8080/xiaoyuanjingsai/",
            name: "xiaoyuanjingsai",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/xiaoyuanjingsai/front/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "校园竞赛管理系统"
        } 
    }
}
export default base
