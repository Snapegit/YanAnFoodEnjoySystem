const config = {
    get() {
        return {
            url : process.env.VUE_APP_BASE_API_URL + process.env.VUE_APP_BASE_API + '/',
            name: process.env.VUE_APP_BASE_API,
			menuList:[
				{
					name: '本地特色管理',
					icon: '${frontMenu.fontClass}',
					child:[
						{
							name:'本地特色',
							url:'/index/benditeseList'
						},
					]
				},
				{
					name: '美食信息管理',
					icon: '${frontMenu.fontClass}',
					child:[
						{
							name:'美食信息',
							url:'/index/meishixinxiList'
						},
					]
				},
				{
					name: '美食烹饪管理',
					icon: '${frontMenu.fontClass}',
					child:[
						{
							name:'美食烹饪',
							url:'/index/meishipengrenList'
						},
					]
				},
				{
					name: '客服聊天管理',
					icon: '${frontMenu.fontClass}',
					child:[
						{
							name:'客服聊天',
							url:'chat'
						},
					]
				},
			]
        }
    },
    getProjectName(){
        return {
            projectName: "圣地延安美食乐享系统"
        } 
    }
}
export default config
