import { createRouter, createWebHashHistory } from 'vue-router'
import index from '../views'
import home from '../views/pages/home.vue'
import login from '../views/pages/login.vue'
import yonghuList from '@/views/pages/yonghu/list'
import yonghuDetail from '@/views/pages/yonghu/formModel'
import yonghuAdd from '@/views/pages/yonghu/formAdd'
import yonghuRegister from '@/views/pages/yonghu/register'
import yonghuCenter from '@/views/pages/yonghu/center'
import meishileixingList from '@/views/pages/meishileixing/list'
import meishileixingDetail from '@/views/pages/meishileixing/formModel'
import meishileixingAdd from '@/views/pages/meishileixing/formAdd'
import meishixinxiList from '@/views/pages/meishixinxi/list'
import meishixinxiDetail from '@/views/pages/meishixinxi/formModel'
import meishixinxiAdd from '@/views/pages/meishixinxi/formAdd'
import benditeseList from '@/views/pages/benditese/list'
import benditeseDetail from '@/views/pages/benditese/formModel'
import benditeseAdd from '@/views/pages/benditese/formAdd'
import storeupList from '@/views/pages/storeup/list'
import meishizhuanfaList from '@/views/pages/meishizhuanfa/list'
import meishizhuanfaDetail from '@/views/pages/meishizhuanfa/formModel'
import meishizhuanfaAdd from '@/views/pages/meishizhuanfa/formAdd'
import meishipengrenList from '@/views/pages/meishipengren/list'
import meishipengrenDetail from '@/views/pages/meishipengren/formModel'
import meishipengrenAdd from '@/views/pages/meishipengren/formAdd'
import menuList from '@/views/pages/menu/list'
import menuDetail from '@/views/pages/menu/formModel'
import menuAdd from '@/views/pages/menu/formAdd'
import discussmeishixinxiList from '@/views/pages/discussmeishixinxi/list'
import discussmeishixinxiDetail from '@/views/pages/discussmeishixinxi/formModel'
import discussmeishixinxiAdd from '@/views/pages/discussmeishixinxi/formAdd'

const routes = [{
		path: '/',
		redirect: '/index/home'
	},
	{
		path: '/index',
		component: index,
		children: [{
			path: 'home',
			component: home
		}
		, {
			path: 'yonghuList',
			component: yonghuList
		}, {
			path: 'yonghuDetail',
			component: yonghuDetail
		}, {
			path: 'yonghuAdd',
			component: yonghuAdd
		}
		, {
			path: 'yonghuCenter',
			component: yonghuCenter
		}
		, {
			path: 'meishileixingList',
			component: meishileixingList
		}, {
			path: 'meishileixingDetail',
			component: meishileixingDetail
		}, {
			path: 'meishileixingAdd',
			component: meishileixingAdd
		}
		, {
			path: 'meishixinxiList',
			component: meishixinxiList
		}, {
			path: 'meishixinxiDetail',
			component: meishixinxiDetail
		}, {
			path: 'meishixinxiAdd',
			component: meishixinxiAdd
		}
		, {
			path: 'benditeseList',
			component: benditeseList
		}, {
			path: 'benditeseDetail',
			component: benditeseDetail
		}, {
			path: 'benditeseAdd',
			component: benditeseAdd
		}
		, {
			path: 'storeupList',
			component: storeupList
		}
		, {
			path: 'meishizhuanfaList',
			component: meishizhuanfaList
		}, {
			path: 'meishizhuanfaDetail',
			component: meishizhuanfaDetail
		}, {
			path: 'meishizhuanfaAdd',
			component: meishizhuanfaAdd
		}
		, {
			path: 'meishipengrenList',
			component: meishipengrenList
		}, {
			path: 'meishipengrenDetail',
			component: meishipengrenDetail
		}, {
			path: 'meishipengrenAdd',
			component: meishipengrenAdd
		}
		, {
			path: 'menuList',
			component: menuList
		}, {
			path: 'menuDetail',
			component: menuDetail
		}, {
			path: 'menuAdd',
			component: menuAdd
		}
		, {
			path: 'discussmeishixinxiList',
			component: discussmeishixinxiList
		}, {
			path: 'discussmeishixinxiDetail',
			component: discussmeishixinxiDetail
		}, {
			path: 'discussmeishixinxiAdd',
			component: discussmeishixinxiAdd
		}
		]
	},
	{
		path: '/login',
		component: login
	}
	,{
		path: '/yonghuRegister',
		component: yonghuRegister
	}
]

const router = createRouter({
  history: createWebHashHistory(process.env.BASE_URL),
  routes
})

export default router
