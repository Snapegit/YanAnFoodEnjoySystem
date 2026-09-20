<template>
	<div>
		<div class="forget_view">
			<el-form :model="forgetForm" class="forget_box">
				<div class="forget_title">圣地延安美食乐享系统{{pageType==1?'找回密码':pageType==2?'输入密保':'重置密码'}}</div>
				<div class="tab_view">
					<div class="tab" :class="pageType==1?'tab_active':''">找回密码</div>
					<div class="tab" :class="pageType==2?'tab_active tab_active1':''">输入密保</div>
					<div class="tab" :class="pageType==3?'tab_active tab_active1 tab_active2':''">重置密码</div>
				</div>
			</el-form>
		</div>
	</div>
</template>
<script setup>
	import {
		ref,
		getCurrentInstance,
		nextTick,
	} from 'vue';
	const context = getCurrentInstance()?.appContext.config.globalProperties;
	const pageType = ref(1)
	const forgetForm = ref({})
	const userForm = ref({})
	//返回登录
	const close = () => {
		context?.$router.push({
			path: "/login"
		});
	}
</script>

<style lang="scss" scoped>
	.forget_view {
		background-repeat: no-repeat;
		flex-direction: column;
		background-size: cover;
		background: url(http://clfile.zggen.cn/20231228/a7535fc2ae104c83aee60a4be56b9c3d.jpg);
		display: flex;
		min-height: 100vh;
		justify-content: center;
		align-items: center;
		position: relative;
		background-position: center center;
		// 表单盒子
		.forget_box {
			border-radius: 30px;
			padding: 30px 60px 40px 20px;
			margin: 20px 0;
			background: rgba(255,255,255,.8);
			display: block;
			width: 600px;
			min-height: 500px;
			justify-content: center;
			align-items: flex-start;
			flex-wrap: wrap;
			// 标题
			.forget_title {
				padding: 0 0 30px;
				margin: 0 0 0 120px;
				color: #3f3f3f;
				background: none;
				width: calc(100% - 120px);
				font-size: 24px;
				text-align: center;
			}
			// tab
			// 盒子
			.tab_view {
				padding: 0 0 0 120px;
				margin: 0 0 20px;
				display: flex;
				width: 100%;
				align-items: center;
				// 默认样式
				.tab {
					padding: 10px 20px;
					margin: 0 20px 0 0;
					clip-path: polygon(90% 0, 100% 50%, 90% 100%, 0% 100%, 10% 53%, 0% 0%);
					width: auto;
					font-size: 14px;
					box-sizing: border-box;
					text-align: center;
				}
				// 选中样式一
				.tab_active {
					border-radius: 0px;
					color: #fff;
					background: #ff8798;
					border-color: #ff8798;
					border-width: 0 0 0px;
					border-style: solid;
				}
				// 选中样式二
				.tab_active1 {
					color: #fff;
					background: #ff8798;
				}
				// 选中样式三
				.tab_active2 {
					color: #fff;
					background: #ff8798;
				}
			}
			// item
			.list_item {
				margin: 10px auto 30px;
				display: flex;
				width: 100%;
				justify-content: flex-start;
				align-items: center;
				// label
				.item_label {
					color: #333;
					width: 120px;
					font-size: 14px;
					box-sizing: border-box;
					text-align: right;
				}
				// 输入框
				:deep(.list_inp) {
					border: 0px solid #f6a5a1;
					border-radius: 0px;
					padding: 0 10px;
					color: #666;
					background: #fff;
					width: calc(100% - 120px);
					border-width: 0 0 1px;
					line-height: 40px;
					box-sizing: border-box;
					height: 40px;
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
				//下拉框样式
				:deep(.list_sel) {
					border: 0px solid #f6a5a1;
					border-radius: 0px;
					padding: 0 10px;
					color: #666;
					background: #fff;
					width: calc(100% - 120px);
					border-width: 0 0 1px;
					line-height: 40px;
					box-sizing: border-box;
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
			// 按钮盒子
			.list_btn {
				margin: 30px 0 0;
				display: flex;
				width: 100%;
				justify-content: center;
				align-items: center;
				flex-wrap: wrap;
				// 获取密保
				:deep(.el-button--success) {
					border: 0;
					cursor: pointer;
					border-radius: 20px;
					padding: 0 0px;
					margin: 0 0px 0 120px;
					outline: none;
					color: #fff;
					background: #ff8798;
					width: 100px;
					font-size: 14px;
					height: 40px;
				}
				// 获取密保悬浮
				:deep(.el-button--success:hover) {
				}
				// 确认密保
				:deep(.el-button--primary) {
					border: 0;
					cursor: pointer;
					border-radius: 20px;
					padding: 0 0px;
					margin: 0 0px 0 120px;
					outline: none;
					color: #fff;
					background: #ff8798;
					width: 100px;
					font-size: 14px;
					height: 40px;
				}
				// 确认密保悬浮
				:deep(.el-button--primary:hover) {
				}
				// 重置密码
				:deep(.el-button--warning) {
					border: 0;
					cursor: pointer;
					border-radius: 20px;
					padding: 0 0px;
					margin: 0 0px 0 120px;
					outline: none;
					color: #fff;
					background: #ff8798;
					width: 100px;
					font-size: 14px;
					height: 40px;
				}
				// 重置密码悬浮
				:deep(.el-button--warning:hover) {
				}
				.r-login {
					cursor: pointer;
					padding: 0;
					margin: 20px 0 0 120px;
					color: #999;
					width: calc(100% - 120px);
					font-size: 13px;
					text-align: right;
				}
			}
		}
	}
</style>
