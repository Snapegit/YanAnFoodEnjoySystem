<template>
	<div class="app-contain" :style='{"minHeight":"100vh","padding":"0 0 40px","margin":"0 auto","overflow":"hidden","borderRadius":"4px","textAlign":"center","background":"#fff","width":"80%","position":"relative"}'>
		<div class="bread_view">
			<el-breadcrumb separator=">" class="breadcrumb">
				<el-breadcrumb-item class="first_breadcrumb" :to="{ path: '/' }">首页</el-breadcrumb-item>
				<el-breadcrumb-item class="second_breadcrumb" v-for="(item,index) in breadList" :key="index">{{item.name}}</el-breadcrumb-item>
			</el-breadcrumb>
		</div>
		<div class="back_view" v-if="centerType">
			<el-button class="back_btn" @click="backClick" type="primary">返回</el-button>
		</div>
		<el-form :inline="true" :model="searchQuery" class="list_search">
			<div class="search_view">
				<div class="search_label">
					美食类型：
				</div>
				<div class="search_box">
					<el-input class="search_inp" v-model="searchQuery.meishileixing" placeholder="美食类型"
						clearable>
					</el-input>
				</div>
			</div>
			<div class="search_btn_view">
				<el-button class="search_btn" type="primary" @click="searchClick">搜索</el-button>
				<el-button class="add_btn" type="success" v-if="btnAuth('meishileixing','新增')" @click="addClick">新增</el-button>
			</div>
		</el-form>
		<div class="list_bottom">
			<div class="data_box">
				<div class="data_view">
					<div class="data_item" v-for="(item,index) in list" :key="index" @click.stop="detailClick(item.id)" >
						<div class="data_content">
						</div>
					</div>
				</div>
				<el-pagination
					background 
					:layout="layouts.join(',')"
					:total="total" 
					:page-size="listQuery.limit"
					prev-text="上一页"
					next-text="下一页"
					:hide-on-single-page="false"
					:style='{"border":"0px solid #eee","padding":"4px 0","margin":"10px 0 20px","whiteSpace":"nowrap","color":"#333","textAlign":"center","flexWrap":"wrap","background":"none","display":"flex","width":"100%","fontWeight":"500","justifyContent":"center"}'
					@size-change="sizeChange"
					@current-change="currentChange" 
					@prev-click="prevClick"
					@next-click="nextClick"  />
			</div>
		</div>
		<el-dialog v-model="preViewVisible" :title="'查看大图'" width="60%" destroy-on-close>
			<img :src="preViewUrl" style="width: 100%;" alt="">
		</el-dialog>
	</div>
</template>

<script setup>
	import {
		ref,
		getCurrentInstance,
		nextTick,
	} from 'vue';
	import {
		useRoute,
		useRouter
	} from 'vue-router';
	const context = getCurrentInstance()?.appContext.config.globalProperties;
	const router = useRouter()
	const route = useRoute()
	//基础信息
	const tableName = 'meishileixing'
	const formName = '美食类型'
	//基础信息
	const breadList = ref([{
		name: formName
	}])
	const list = ref([])
	const listQuery = ref({
		page: 1,
		limit: Number(8)
	})
	const total = ref(0)
	const listLoading = ref(false)
	//权限验证
	const btnAuth = (e,a)=>{
		if(centerType.value){
			return context?.$toolUtil.isBackAuth(e,a)
		}else{
			return context?.$toolUtil.isAuth(e,a)
		}
	}
	const addClick = () => {
		router.push('/index/meishileixingAdd')
	}
	//判断是否从个人中心跳转
	const centerType = ref(false)
	//返回
	const backClick = () => {
		router.push(`/index/${context?.$toolUtil.storageGet('frontSessionTable')}Center`)
	}
	const init = () => {
		if(route.query.centerType){
			centerType.value = true
		}
		getList()
	}
	//搜索
	const searchQuery = ref({})
	//下拉列表
	const searchClick = () => {
		listQuery.value.page = 1
		getList()
	}
	//分页
	const layouts = ref(["total","prev","pager","next","sizes"])
	const sizeChange = (size) => {
		listQuery.value.limit = size
		getList()
	}
	const currentChange = (page) => {
		listQuery.value.page = page
		getList()
	}
	const prevClick = () => {
		listQuery.value.page = listQuery.value.page - 1
		getList()
	}
	const nextClick = () => {
		listQuery.value.page = listQuery.value.page + 1
		getList()
	}
	//分页
	//列表
	const getList = () => {
		listLoading.value = true
		let params = JSON.parse(JSON.stringify(listQuery.value))
		if(searchQuery.value.meishileixing&&searchQuery.value.meishileixing!=''){
			params.meishileixing = '%' + searchQuery.value.meishileixing + '%'
		}
		context?.$http({
			url: `${tableName}/${centerType.value?'page':'list'}`,
			method: 'get',
			params: params
		}).then(res => {
			listLoading.value = false
			list.value = res.data.data.list
			total.value = Number(res.data.data.total)
		})
	}
	const detailClick = (id) => {
		router.push('meishileixingDetail?id=' + id + (centerType.value?'&&centerType=1':''))
	}
	//下载文件
	const download = (file) =>{
		if(!file){
			context?.$toolUtil.message('文件不存在','error')
		}
		const a = document.createElement('a');
		a.style.display = 'none';
		a.setAttribute('target', '_blank');
		file && a.setAttribute('download', file);
		a.href = context?.$config.url + file;
		document.body.appendChild(a);
		a.click();
		document.body.removeChild(a);
	}
	// 查看大图
	const preViewUrl = ref('')
	const preViewVisible = ref(false)
	const preViewClick = (url) =>{
		preViewUrl.value = url
		preViewVisible.value = true
	}
	init()
</script>
<style lang="scss" scoped>
	// 返回盒子
	.back_view {
		border-radius: 0px;
		padding: 0 20px;
		margin: 0 auto 20px;
		background: none;
		display: block;
		width: 100%;
		text-align: right;
		// 返回按钮
		.back_btn {
			border: 1px solid #ddd;
			cursor: pointer;
			border-radius: 0px;
			padding: 0 30px;
			outline: none;
			color: #666;
			background: #f9f9f9;
			width: auto;
			font-size: 14px;
			height: 32px;
		}
		// 返回按钮-悬浮
		.back_btn:hover {
		}
	}
	.bread_view {
		border-radius: 0px;
		padding: 12px 20px;
		margin: 0px auto;
		background: none;
		width: 100%;
		border-color: #eee;
		border-width: 0 0 0px;
		position: relative;
		border-style: solid;
		:deep(.breadcrumb) {
			font-size: 14px;
			line-height: 1;
			.el-breadcrumb__separator {
				margin: 0 9px;
				color: #999;
				font-weight: 500;
			}
			.first_breadcrumb {
				.el-breadcrumb__inner {
					color: #333;
					display: inline-block;
				}
			}
			.second_breadcrumb {
				.el-breadcrumb__inner {
					color: #999;
					display: inline-block;
				}
			}
		}
	}
	// 分类盒子
	.category_view {
		border: 1px solid #ff879850;
		border-radius: 50px;
		padding: 0 20px;
		margin: 20px auto 0;
		background: linear-gradient(270deg, rgba(255,255,255,1) 0%, rgba(255,232,235,1) 50%, rgba(255,255,255,1) 100%);
		display: inline-block;
		width: auto;
		justify-content: center;
		align-items: center;
		flex-wrap: wrap;
		text-align: center;
		// 分类item
		.category {
			cursor: pointer;
			padding: 10px 20px;
			margin: 0px 20px 0 0;
			color: #595959;
			display: inline-block;
			font-size: 15px;
			border-color: #c9c9c9;
			box-sizing: border-box;
			transition: all 0.3s;
			border-radius: 0px;
			background: none;
			width: auto;
			border-width: 0px;
			border-style: solid;
			text-align: center;
			min-width: 80px;
		}
		// item-悬浮
		.category:hover {
			color: #ed5e6f;
			background: none;
			font-weight: 600;
			border-color: #113961;
			border-width: 0px;
			opacity: 1;
			border-style: solid;
		}
		// item-选中
		.categoryActive {
			color: #ed5e6f;
			background: none;
			font-weight: 600;
			font-size: 15px;
			border-color: #113961;
			border-width: 0px;
			opacity: 1;
			border-style: solid;
		}
	}

	//搜索
	.list_search {
		border: 0px solid #ddd;
		padding: 20px 0 0 20px;
		margin: 0 auto;
		background: none;
		display: flex;
		width: calc(100% - 0px);
		justify-content: center;
		align-items: center;
		.search_view {
			margin: 0 10px 0 0;
			display: flex;
			align-items: center;
			.search_label {
				margin: 0 10px 0 0;
				color: #333;
				font-weight: 500;
				display: inline-block;
				font-size: 14px;
				line-height: 40px;
				height: 40px;
			}
			.search_box {
				display: flex;
				width: calc(100% - 100px);
				// 输入框
				:deep(.search_inp) {
					border-radius: 20px;
					padding: 0 10px;
					background: #fff;
					width: 100%;
					border-color: #ff879880;
					border-width: 1px;
					line-height: 36px;
					box-sizing: border-box;
					border-style: solid;
					min-width: 200px;
					height: 36px;
					//去掉默认样式
					.el-input__wrapper{
						border: none;
						box-shadow: none;
						background: none;
						border-radius: 0;
						height: 100%;
						padding: 0;
					}
					.is-focus {
						box-shadow: none !important;
					}
				}
			}
		}
		.search_btn_view {
			margin: 20px 0;
			display: flex;
			// 搜索按钮
			.search_btn {
				border: 0;
				cursor: pointer;
				border-radius: 20px;
				padding: 0 20px;
				outline: none;
				margin: 0 10px 0 0;
				color: #fff;
				background: #ff8798;
				width: auto;
				font-size: 14px;
				transition: all 0.3s;
				height: 36px;
			}
			// 搜索按钮-悬浮
			.search_btn:hover {
			}
			// 新增按钮
			.add_btn {
				border: 0px solid #333;
				cursor: pointer;
				border-radius: 20px;
				padding: 0 20px;
				margin: 0 10px 0 0;
				outline: none;
				color: #333;
				background: #ff879830;
				width: auto;
				font-size: 14px;
				transition: all 0.3s;
				height: 36px;
			}
			// 新增按钮-悬浮
			.add_btn:hover {
			}
		}
	}

	// 数据盒子
	.list_bottom {
		border-radius: 0;
		padding: 20px 0 0;
		margin: 20px 0 0;
		background: none;
		display: flex;
		width: calc(100% - 0px);
		align-items: flex-start;
		flex-wrap: wrap;
		//列表
		.data_box {
			border: 0px solid #ddd;
			padding: 0;
			background: none;
			width: 100%;
			.data_view {
				border: 1px solid #ff879820;
				padding: 20px 0 20px 20px;
				overflow: hidden;
				background: url(http://clfile.zggen.cn/20231227/e37b342fb6134027a8da45e5dfc11468.jpg) no-repeat center top / 100% 100%;
				display: flex;
				width: 100%;
				flex-wrap: wrap;
				.data_item:nth-of-type(2n - 1) {
					cursor: pointer;
					margin: 0px 10px 0;
					width: calc(100% / 3 - 20px);
					position: relative;
					transition: all 0.3s;
					text-align: center;
					// 图片盒子
					.data_img_box {
						margin: 0 auto 10px;
						width: 320px;
						position: relative;
						height: 320px;
						// 图片
						.data_img {
							border: 10px solid #fff;
							border-radius: 100%;
							object-fit: cover;
							width: 100%;
							height: 100%;
						}
					}
					// 内容盒子
					.data_content {
						margin: 0 auto;
						color: #fff;
						width: 60%;
						line-height: 36px;
						// 价格
						.data_price {
							color: #f00;
						}
						// 标题1
						.data_title1 {
							border-radius: 20px;
							margin: 0 0 10px;
							background: #ff8798;
							width: 100%;
							text-align: center;
						}
						// 标题2
						.data_title2 {
							border-radius: 20px;
							margin: 0 0 10px;
							background: #ff8798;
							width: 100%;
							text-align: center;
						}
						// 标题3
						.data_title3 {
							border-radius: 20px;
							margin: 0 0 10px;
							background: #ff8798;
							width: 100%;
							text-align: center;
						}
						// 标题4
						.data_title4 {
							border-radius: 20px;
							margin: 0 0 10px;
							background: #ff8798;
							width: 100%;
							text-align: center;
						}
						// 标题5
						.data_title5 {
							border-radius: 20px;
							margin: 0 0 10px;
							background: #ff8798;
							width: 100%;
							text-align: center;
						}
						// 底部栏
						.data_operate_box {
							display: flex;
							justify-content: center;
							align-items: center;
							// 点赞数
							.data_like {
								margin: 0 10px 0 0;
								color: #0266b5;
								display: flex;
								font-size: 16px;
								align-items: center;
								.like_icon {
									margin: 0 4px 0 0;
									color: inherit;
								}
								.like_num {
									color: inherit;
								}
							}
							// 收藏数
							.data_collect {
								margin: 0 10px 0 0;
								color: #ee7810;
								display: flex;
								font-size: 16px;
								align-items: center;
								.el-icon {
									margin: 0 4px 0 0;
									color: inherit;
								}
								.collect_num {
									color: inherit;
								}
							}
							// 点击数
							.data_clickNum {
								margin: 0 10px 0 0;
								color: #4aac26;
								display: flex;
								font-size: 16px;
								align-items: center;
								.el-icon {
									margin: 0 4px 0 0;
									color: inherit;
								}
								.clickNum_num {
									color: inherit;
								}
							}
						}
					}
				}
				.data_item:nth-of-type(2n) {
					cursor: pointer;
					margin: 0 10px 30px;
					width: calc(100% / 3 - 20px);
					position: relative;
					transition: all 0.3s;
					// 图片盒子
					.data_img_box {
						margin: 0 auto 10px;
						width: 320px;
						position: relative;
						height: 320px;
						// 图片
						.data_img {
							border: 10px solid #fff;
							border-radius: 100%;
							object-fit: cover;
							width: 100%;
							height: 100%;
						}
					}
					// 内容盒子
					.data_content {
						margin: 0 auto;
						color: #fff;
						width: 60%;
						line-height: 36px;
						// 价格
						.data_price {
							color: #f00;
						}
						// 标题1
						.data_title1 {
							border-radius: 20px;
							margin: 0 0 10px;
							background: #ff8798;
							width: 100%;
							text-align: center;
						}
						// 标题2
						.data_title2 {
							border-radius: 20px;
							margin: 0 0 10px;
							background: #ff8798;
							width: 100%;
							text-align: center;
						}
						// 标题3
						.data_title3 {
							border-radius: 20pc;
							margin: 0 0 10px;
							background: #ff8798;
							width: 100%;
							text-align: center;
						}
						// 标题4
						.data_title4 {
							border-radius: 20px;
							margin: 0 0 10px;
							background: #ff8798;
							width: 100%;
							text-align: center;
						}
						// 标题5
						.data_title5 {
							border-radius: 20px;
							margin: 0 0 10px;
							background: #ff8798;
							width: 100%;
							text-align: center;
						}
						// 底部栏
						.data_operate_box {
							display: flex;
							justify-content: center;
							align-items: center;
							// 点赞数
							.data_like {
								margin: 0 10px 0 0;
								color: #0266b5;
								display: flex;
								font-size: 16px;
								align-items: center;
								.like_icon {
									margin: 0 4px 0 0;
									color: inherit;
								}
								.like_num {
									color: inherit;
								}
							}
							// 收藏数
							.data_collect {
								margin: 0 10px 0 0;
								color: #ee7810;
								display: flex;
								font-size: 16px;
								align-items: center;
								.el-icon {
									margin: 0 4px 0 0;
									color: inherit;
								}
								.collect_num {
									color: inherit;
								}
							}
							// 点击数
							.data_clickNum {
								margin: 0 10px 0 0;
								color: #4aac26;
								display: flex;
								font-size: 16px;
								align-items: center;
								.el-icon {
									margin: 0 4px 0 0;
									color: inherit;
								}
								.clickNum_num {
									color: inherit;
								}
							}
						}
					}
				}
				.data_item:nth-of-type(2n - 1):hover {
					transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, -10px, 0px);
					// 图片盒子
					.data_img_box {
						// 图片
						.data_img {
						}
					}
					// 内容盒子
					.data_content {
						// 价格
						.data_price {
						}
						// 标题1
						.data_title1 {
						}
						// 标题2
						.data_title2 {
						}
						// 标题3
						.data_title3 {
						}
						// 标题4
						.data_title4 {
						}
						// 标题5
						.data_title5 {
						}
						// 底部栏
						.data_operate_box {
							// 点赞数
							.data_like {
								.like_icon {
								}
								.like_num {
								}
							}
							// 收藏数
							.data_collect {
								.el-icon {
								}
								.collect_num {
								}
							}
							// 点击数
							.data_clickNum {
								.el-icon {
								}
								.clickNum_num {
								}
							}
						}
					}
				}
				.data_item:nth-of-type(2n):hover {
					transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, -10px, 0px);
					// 图片盒子
					.data_img_box {
						// 图片
						.data_img {
						}
					}
					// 内容盒子
					.data_content {
						// 价格
						.data_price {
						}
						// 标题1
						.data_title1 {
						}
						// 标题2
						.data_title2 {
						}
						// 标题3
						.data_title3 {
						}
						// 标题4
						.data_title4 {
						}
						// 标题5
						.data_title5 {
						}
						// 底部栏
						.data_operate_box {
							// 点赞数
							.data_like {
								.like_icon {
								}
								.like_num {
								}
							}
							// 收藏数
							.data_collect {
								.el-icon {
								}
								.collect_num {
								}
							}
							// 点击数
							.data_clickNum {
								.el-icon {
								}
								.clickNum_num {
								}
							}
						}
					}
				}
			}
		}
	}

	// animation
	.animation_box {
		transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
		z-index: initial;
	}
	.animation_box:hover {
		transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
		-webkit-perspective: 1000px;
		perspective: 1000px;
		transition: 0.3s;
	}
	.animation_box img {
		transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
		z-index: initial;
	}
	.animation_box img:hover {
		transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
		-webkit-perspective: 1000px;
		perspective: 1000px;
		transition: 0.3s;
	}
	// animation

	// 分页器
	.el-pagination {
		// 总页码
		:deep(.el-pagination__total) {
			margin: 0 10px 0;
			color: #666;
			font-weight: 400;
			display: inline-block;
			vertical-align: top;
			font-size: 13px;
			line-height: 28px;
			height: 28px;
		}
		// 上一页
		:deep(.btn-prev) {
			border: 1px solid #eee;
			border-radius: 2px;
			padding: 0 4px;
			margin: 0 2px;
			color: #666;
			background: #fff;
			display: inline-block;
			vertical-align: top;
			font-size: 13px;
			line-height: 28px;
			min-width: 28px;
			height: 28px;
		}
		// 下一页
		:deep(.btn-next) {
			border: 1px solid #eee;
			border-radius: 2px;
			padding: 0 4px;
			margin: 0 2px;
			color: #666;
			background: #fff;
			display: inline-block;
			vertical-align: top;
			font-size: 14px;
			line-height: 28px;
			min-width: 28px;
			height: 28px;
		}
		// 上一页禁用
		:deep(.btn-prev:disabled) {
			border: 1px solid #eee;
			cursor: not-allowed;
			padding: 0 4px;
			margin: 0 2px;
			color: #C0C4CC;
			display: inline-block;
			vertical-align: top;
			font-size: 14px;
			line-height: 28px;
			border-radius: 2px;
			background: none;
			min-width: 28px;
			height: 28px;
		}
		// 下一页禁用
		:deep(.btn-next:disabled) {
			border: 1px solid #eee;
			cursor: not-allowed;
			padding: 0 4px;
			margin: 0 2px;
			color: #C0C4CC;
			display: inline-block;
			vertical-align: top;
			font-size: 14px;
			line-height: 28px;
			border-radius: 2px;
			background: none;
			min-width: 28px;
			height: 28px;
		}
		// 页码
		:deep(.el-pager) {
			padding: 0;
			margin: 0;
			display: inline-block;
			vertical-align: top;
			// 数字
			.number {
				cursor: pointer;
				padding: 0 4px;
				margin: 0 5px;
				color: #666;
				display: inline-block;
				vertical-align: top;
				font-size: 13px;
				line-height: 28px;
				border-radius: 2px;
				background: #f4f4f5;
				text-align: center;
				min-width: 28px;
				height: 28px;
			}
			// 数字悬浮
			.number:hover {
				cursor: pointer;
				padding: 0 4px;
				margin: 0 5px;
				color: #fff;
				display: inline-block;
				vertical-align: top;
				font-size: 13px;
				line-height: 28px;
				border-radius: 2px;
				background: #ff8798;
				text-align: center;
				min-width: 28px;
				height: 28px;
			}
			// 选中
			.number.is-active {
				cursor: default;
				padding: 0 4px;
				margin: 0 5px;
				color: #fff;
				display: inline-block;
				vertical-align: top;
				font-size: 13px;
				line-height: 28px;
				border-radius: 2px;
				background: #ff8798;
				text-align: center;
				min-width: 28px;
				height: 28px;
			}
		}
		// sizes
		:deep(.el-pagination__sizes) {
			box-shadow: none;
			margin: 0 0 0 5px;
			display: inline-block;
			vertical-align: top;
			font-size: 13px;
			line-height: 28px;
			height: 28px;
			.el-select {
				border: 0px solid #DCDFE6;
				cursor: pointer;
				padding: 0;
				color: #606266;
				display: inline-block;
				font-size: 13px;
				line-height: 28px;
				border-radius: 2px;
				outline: 0;
				background: #f4f4f5;
				width: 100%;
				text-align: center;
				height: 28px;
				//去掉默认样式
				.select-trigger{
					height: 100%;
					.el-input{
						height: 100%;
						.el-input__wrapper{
							border: none;
							box-shadow: none;
							background: none;
							border-radius: 0;
							height: 100%;
							padding: 0;
						}
						.is-focus {
							box-shadow: none !important;
						}
					}
				}
			}
		}
		// 跳页
		:deep(.el-pagination__jump) {
			margin: 0 0 0 24px;
			color: #606266;
			display: inline-block;
			vertical-align: top;
			font-size: 13px;
			line-height: 28px;
			height: 28px;
			// 输入框
			.el-input {
				border: 1px solid #eee;
				cursor: pointer;
				padding: 0 3px;
				margin: 0 6px;
				color: #606266;
				display: inline-block;
				font-size: 14px;
				line-height: 28px;
				border-radius: 3px;
				outline: 0;
				background: #fff;
				width: 38px;
				text-align: center;
				height: 28px;
				//去掉默认样式
				.el-input__wrapper{
					border: none;
					box-shadow: none;
					background: none;
					border-radius: 0;
					height: 100%;
					padding: 0;
				}
				.is-focus {
					box-shadow: none !important;
				}
			}
		}
	}
	
	// 热门信息盒子
	.hot_view {
		border: 0px solid #ddd;
		padding: 0;
		margin: 0px auto;
		background: none;
		width: 100%;
		// 标题
		.hot_title {
			padding: 4px 30px 8px;
			margin: 20px auto;
			color: #ff8798;
			background: linear-gradient(270deg, rgba(255,255,255,1) 0%, rgba(255,232,235,1) 50%, rgba(255,255,255,1) 100%),#fff;
			font-weight: 500;
			width: calc(100% - 0px);
			font-size: 22px;
			border-color: #113961;
			border-width: 0px;
			border-style: solid;
			text-align: center;
		}

		.hot_list {
			padding: 0 0 0 2%;
			margin: 30px 0 0;
			display: flex;
			width: 100%;
			flex-wrap: wrap;
			// item
			.hot {
				cursor: pointer;
				border: 0px solid #eee;
				padding: 10px 0px 0;
				margin: 0 2% 20px 0;
				background: #fff;
				width: 23%;
				box-sizing: border-box;
				//图片盒子
				.hot_img_view {
					margin: 0 0 2px;
					width: 100%;
					font-size: 0;
					height: 240px;
					// 图片
					.hot_img {
						border: 0px solid #2da065;
						padding: 0px;
						object-fit: cover;
						width: 100%;
						height: 100%;
					}
				}
				// 内容盒子
				.hot_content {
					// 名称
					.hot_text {
					padding: 0 16px;
					margin: 0 0 0px;
					overflow: hidden;
					color: #333;
					white-space: nowrap;
					background: none;
					font-size: 14px;
					line-height: 30px;
					text-overflow: ellipsis;
					text-align: center;
					height: 30px;
					}
				}
			}
		}
	}
</style>