	import {
		createRouter,
		createWebHashHistory
	} from 'vue-router'
	import yonghu from '@/views/yonghu/list'
	import chat from '@/views/chat/list'
	import discussmeishixinxi from '@/views/discussmeishixinxi/list'
	import meishixinxi from '@/views/meishixinxi/list'
	import meishileixing from '@/views/meishileixing/list'
	import benditese from '@/views/benditese/list'
	import storeup from '@/views/storeup/list'
	import config from '@/views/config/list'
	import users from '@/views/users/list'
	import meishizhuanfa from '@/views/meishizhuanfa/list'
	import meishipengren from '@/views/meishipengren/list'

export const routes = [{
		path: '/login',
		name: 'login',
		component: () => import('../views/login.vue')
	},{
		path: '/',
		name: '首页',
		component: () => import('../views/index'),
		children: [{
			path: '/',
			name: '首页Home',
			component: () => import('../views/HomeView.vue'),
			meta: {
				affix: true
			}
		}, {
			path: '/updatepassword',
			name: '修改密码',
			component: () => import('../views/updatepassword.vue')
		}
		
		,{
			path: '/yonghu',
			name: '用户',
			component: yonghu
		}
		,{
			path: '/chat',
			name: '客服聊天',
			component: chat
		}
		,{
			path: '/discussmeishixinxi',
			name: '美食信息评论',
			component: discussmeishixinxi
		}
		,{
			path: '/meishixinxi',
			name: '美食信息',
			component: meishixinxi
		}
		,{
			path: '/meishileixing',
			name: '美食类型',
			component: meishileixing
		}
		,{
			path: '/benditese',
			name: '本地特色',
			component: benditese
		}
		,{
			path: '/storeup',
			name: '我的收藏',
			component: storeup
		}
		,{
			path: '/config',
			name: '轮播图',
			component: config
		}
		,{
			path: '/users',
			name: '管理员',
			component: users
		}
		,{
			path: '/meishizhuanfa',
			name: '美食转发',
			component: meishizhuanfa
		}
		,{
			path: '/meishipengren',
			name: '美食烹饪',
			component: meishipengren
		}
		]
	},
]

const router = createRouter({
	history: createWebHashHistory(process.env.BASE_URL),
	routes
})

export default router
