<template>
	<div>
		<div class="home_box">
			<!-- 美食信息推荐 -->
			<div class="recomList_view">
				<div class="recomList_title">美食信息推荐</div>
				<div class="recommend_list_one">
					<div class="recommend_item animation_box" v-for="(item,index) in meishixinxiRecomList" :key="index" @click="detailClick('meishixinxi',item.id)">
						<div class="recommend_img_box">
							<img class="recommend_img" v-if="isHttp(item.meishitupian)" :src="item.meishitupian.split(',')[0]" alt="">
							<img class="recommend_img" v-else :src="item.meishitupian?$config.url + item.meishitupian.split(',')[0]:''" alt="">
						</div>
						<div class="recommend_content">
							<div class="recommend_title">
								美食名称：{{item.meishimingcheng}}
							</div>
							<div class="recommend_title">
								{{item.meishileixing}}
							</div>
							<div class="recommend_one_bottom">
								<div class="recommend_like" v-if="item.thumbsupnum">
									<span class="iconfont icon-thumb-up-line1 like_icon"></span>
									<div class="like_num">{{item.thumbsupnum}}</div>
								</div>
								<div class="recommend_collect" v-if="item.storeupnum">
									<el-icon><StarFilled /></el-icon>
									<div class="collect_num">{{item.storeupnum}}</div>
								</div>
								<div class="recommend_clickNum" v-if="item.clicknum">
									<el-icon><View /></el-icon>
									<div class="clickNum_num">{{item.clicknum}}</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="recommend_more_view" @click="moreClick('meishixinxi')">
					<span class="recommend_more_text">全部产品</span>
					<el-icon><DArrowRight /></el-icon>
				</div>
			</div>
			<!-- 本地特色首页展示 -->
			<div class="homeList_view">
				<div class="homeList_title">本地特色展示</div>
				<div class="home_list_five">
					<div v-for="(item,index) in benditeseHomeList" :class="'home_list_five_item' + (Number(index) + 1)">
						<div class="img_box">
							<img class="home_img" v-if="isHttp(item.meishitupian)" :src="item.meishitupian.split(',')[0]" alt="">
							<img class="home_img" v-else :src="item.meishitupian?$config.url + item.meishitupian.split(',')[0]:''" alt="">
						</div>
						<div class="homeList_content">
							<div class="homeList_title1">
								美食名称：{{item.meishimingcheng}}
							</div>
						</div>
					</div>
				</div>
				<div class="homeList_more_view" @click="moreClick('benditese')">
					<span class="homeList_more_text">MORE</span>
					<el-icon><DArrowRight /></el-icon>
				</div>
			</div>
		</div>
	</div>
</template>

<script setup>
	import {
		ref,
		getCurrentInstance
	} from 'vue';
	import {
		useRouter
	} from 'vue-router';
	const context = getCurrentInstance()?.appContext.config.globalProperties;
	const router = useRouter()
	//美食信息推荐
	const meishixinxiRecomList = ref([])
	const getmeishixinxiRecomList = () => {
		let autoSortUrl = 'meishixinxi/autoSort'
		context?.$http({
			url: autoSortUrl,
			method: 'get',
			params: {
				sfsh: '是',
				page: 1,
				limit: 6
			}
		}).then(res => {
			meishixinxiRecomList.value = res.data.data.list
		})
	}
	//本地特色首页展示
	const benditeseHomeList = ref([])
	const getbenditeseHomeList = () => {
		context?.$http({
			url: 'benditese/list',
			method: 'get',
			params: {
				page: 1,
				limit: 4
			}
		}).then(res => {
			benditeseHomeList.value = res.data.data.list
		})
	}
	//判断图片链接是否带http
	const isHttp = (str) => {
        return str && str.substr(0,4)=='http';
    }
	//跳转详情
	const detailClick = (table,id) => {
		router.push(`/index/${table}Detail?id=${id}`)
	}
	const moreClick = (table) => {
		router.push(`/index/${table}List`)
	}
	const init = () => {
		//美食信息推荐
		getmeishixinxiRecomList()
		//本地特色首页展示
		getbenditeseHomeList()
	}
	init()
</script>

<style lang="scss">
	.home_box {
		padding: 0;
		margin: 0 auto;
		background: #fff;
		display: flex;
		width: 100%;
		justify-content: space-between;
		align-items: flex-start;
		flex-wrap: wrap;
	}
	
	// 推荐
	.recomList_view {
		padding: 30px 0 30px;
		margin: 0 auto;
		background: url(http://clfile.zggen.cn/20231227/e37b342fb6134027a8da45e5dfc11468.jpg) no-repeat center top / 100% 100%;
		width: 100%;
		position: relative;
		order: 0;
		.recomList_title {
			padding: 0;
			margin: 0px 0 40px;
			color: #ff8798;
			font-weight: 500;
			width: auto;
			font-size: 30px;
			border-color: #2da065;
			border-width: 0 0 0px;
			border-style: solid;
			text-align: center;
		}
		// list
		.recommend_list_one {
			padding: 0;
			margin: 12px auto 0;
			display: flex;
			width: 80%;
			justify-content: space-between;
			flex-wrap: wrap;
			.recommend_item {
				cursor: pointer;
				border: 0px solid #eee;
				padding: 6px;
				margin: 0 0px 20px;
				background: none;
				width: 32%;
			}
			.recommend_img_box {
				margin: 0 auto 10px;
				width: 100%;
				text-align: center;
				.recommend_img {
					border: 10px solid #fff;
					border-radius: 100%;
					margin: 0 auto;
					object-fit: cover;
					width: 365px;
					height: 365px;
				}
			}
			.recommend_content {
				margin: 0 auto;
				display: flex;
				width: 60%;
				justify-content: space-between;
				flex-wrap: wrap;
				.recommend_title {
					padding: 0 16px;
					margin: 0 0 10px;
					color: #fff;
					white-space: nowrap;
					font-weight: 500;
					font-size: 14px;
					line-height: 36px;
					text-overflow: ellipsis;
					border-radius: 20px;
					overflow: hidden;
					background: #ff8798;
					width: 100%;
					text-align: center;
					height: 36px;
				}
				.recommend_price {
					color: #d46f6f;
					width: auto;
					font-size: 14px;
					line-height: 40px;
					text-align: right;
					order: 2;
				}
				.recommend_one_bottom {
					padding: 0 0px;
					flex: 1;
					display: flex;
					width: auto;
					justify-content: center;
					align-items: center;
					.recommend_like {
						margin: 0 10px 0 0;
						color: inherit;
						display: flex;
						font-size: 14px;
						align-items: center;
						.like_icon {
							margin: 0 4px 0 0;
							color: #0266b5;
						}
						.like_num {
							color: #999;
						}
					}
					.recommend_collect {
						margin: 0 10px 0 0;
						color: #999;
						display: flex;
						font-size: 14px;
						align-items: center;
						.el-icon {
							margin: 0 4px 0 0;
							color: #ee7810;
						}
						.collect_num {
							color: inherit;
						}
					}
					.recommend_clickNum {
						margin: 0 10px 0 0;
						color: #999;
						display: flex;
						font-size: 14px;
						align-items: center;
						.el-icon {
							margin: 0 4px 0 0;
							color: #4aac26;
						}
						.clickNum_num {
							color: inherit;
						}
					}
				}
			}
		}
		// list
		// animation
		.animation_box {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			z-index: initial;
		}
		.animation_box:hover {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, -10px, 0px);
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
		// 更多
		.recommend_more_view {
			cursor: pointer;
			border: 0px solid #ddd;
			border-radius: 0px;
			padding: 0;
			margin: 30px auto;
			color: #fff;
			background: none;
			display: none;
			width: 120px;
			line-height: 34px;
			text-align: center;
			.recommend_more_text {
				padding: 0px;
				color: #333;
				background: none;
				font-size: 16px;
			}
			.el-icon {
				color: #333;
			}
		}
	}
	// 推荐
	// 新闻资讯
	.newsList_view {
		padding: 50px 10% 20px;
		margin: 0 auto;
		background: #fff;
		display: block;
		width: 100%;
		position: relative;
		order: 1;
		height: auto;

		.newsList_title {
			padding: 0 0 8px;
			margin: 0 auto 40px;
			color: #ff8798;
			background: none;
			font-weight: 500;
			width: auto;
			font-size: 30px;
			border-color: #999;
			border-width: 0 0 0px;
			border-style: dashed;
			text-align: center;
		}
		// list
		.news_list_six {
			color: #fff;
			display: flex;
			justify-content: space-between;
			flex-wrap: wrap;
			.news_list_six_item1 {
				cursor: pointer;
				margin: 0;
				overflow: hidden;
				width: calc(100% - 0px);
				position: relative;
				transition: all 0.3s;
				.img_box {
					width: 50%;
					float: left;
					height: 300px;
					.news_img {
						object-fit: cover;
						width: 100%;
						height: 100%;
					}
				}
				.content {
					flex-direction: column;
					color: #333;
					background: none;
					display: flex;
					width: 48%;
					float: right;
					flex-wrap: wrap;
					transition: all 0.3s;
					height: 100%;
					.news_title {
						margin: 20px 0 0;
						overflow: hidden;
						color: #ff8790;
						white-space: nowrap;
						font-weight: 600;
						width: 100%;
						font-size: 16px;
						line-height: 30px;
						text-overflow: ellipsis;
					}
					.news_text {
						overflow: hidden;
						color: #595959;
						font-size: 14px;
						line-height: 24px;
						height: 196px;
						order: 3;
					}
					.news_time {
						color: #999;
						width: 100%;
						line-height: 24px;
					}
				}
			}
			.news_list_six_item1:hover {
				.img_box {
					img {
					}
				}
				.content {
					.news_title {
					}
					.news_text {
					}
					.news_time {
					}
				}
			}
			.news_list_six_item2 {
				cursor: pointer;
				margin: 0;
				overflow: hidden;
				width: calc(100% - 0px);
				position: relative;
				transition: all 0.3s;
				.img_box {
					width: 50%;
					float: right;
					height: 300px;
					img {
						object-fit: cover;
						width: 100%;
						height: 100%;
					}
				}
				.content {
					flex-direction: column;
					color: #333;
					background: none;
					display: flex;
					width: 48%;
					float: left;
					flex-wrap: wrap;
					transition: all 0.3s;
					height: 100%;
					.news_title {
						margin: 20px 0 0;
						overflow: hidden;
						color: #ff8790;
						white-space: nowrap;
						font-weight: 600;
						width: 100%;
						font-size: 16px;
						line-height: 30px;
						text-overflow: ellipsis;
					}
					.news_text {
						overflow: hidden;
						color: #595959;
						font-size: 14px;
						line-height: 24px;
						height: 196px;
						order: 3;
					}
					.news_time {
						color: #999;
						width: 100%;
						line-height: 24px;
					}
				}
			}
			.news_list_six_item2:hover {
				.img_box {
					img {
					}
				}
				.content {
					.news_title {
					}
					.news_text {
					}
					.news_time {
					}
				}
			}
			.news_list_six_item3 {
				margin: 0 5px 10px;
				overflow: hidden;
				display: none;
				width: calc(25% - 10px);
				position: relative;
				transition: all 0.3s;
				.img_box {
					width: 100%;
					font-size: 0;
					height: 350px;
					img {
						object-fit: cover;
						width: 100%;
						height: 100%;
					}
				}
				.content {
					top: 100%;
					left: 0;
					background: rgba(0,0,0,.3);
					width: 100%;
					position: absolute;
					transition: all 0.3s;
					height: 100%;
					.news_title {
					}
					.news_text {
					}
					.news_time {
					}
				}
			}
			.news_list_six_item3:hover {
				.img_box {
					img {
					}
				}
				.content {
					.news_title {
					}
					.news_text {
					}
					.news_time {
					}
				}
			}
			.news_list_six_item4 {
				margin: 0 5px 10px;
				overflow: hidden;
				display: none;
				width: calc(25% - 10px);
				position: relative;
				transition: all 0.3s;
				.img_box {
					width: 100%;
					font-size: 0;
					height: 350px;
					img {
						object-fit: cover;
						width: 100%;
						height: 100%;
					}
				}
				.content {
					top: 100%;
					left: 0;
					background: rgba(0,0,0,.3);
					width: 100%;
					position: absolute;
					transition: all 0.3s;
					height: 100%;
					.news_title {
					}
					.news_text {
					}
					.news_time {
					}
				}
			}
			.news_list_six_item4:hover {
				.img_box {
					img {
					}
				}
				.content {
					.news_title {
					}
					.news_text {
					}
					.news_time {
					}
				}
			}
			.news_list_six_item5 {
				margin: 0 5px 10px;
				overflow: hidden;
				display: none;
				width: calc(25% - 10px);
				position: relative;
				transition: all 0.3s;
				.img_box {
					width: 100%;
					font-size: 0;
					height: 350px;
					img {
						object-fit: cover;
						width: 100%;
						height: 100%;
					}
				}
				.content {
					top: 100%;
					left: 0;
					background: rgba(0,0,0,.3);
					width: 100%;
					position: absolute;
					transition: all 0.3s;
					height: 100%;
					.news_title {
					}
					.news_text {
					}
					.news_time {
					}
				}
			}
			.news_list_six_item5:hover {
				.img_box {
					img {
					}
				}
				.content {
					.news_title {
					}
					.news_text {
					}
					.news_time {
					}
				}
			}
			.news_list_six_item6 {
				margin: 0 5px 10px;
				overflow: hidden;
				display: none;
				width: calc(25% - 10px);
				position: relative;
				transition: all 0.3s;
				.img_box {
					width: 100%;
					font-size: 0;
					height: 350px;
					img {
						object-fit: cover;
						width: 100%;
						height: 100%;
					}
				}
				.content {
					top: 100%;
					left: 0;
					background: rgba(0,0,0,.3);
					width: 100%;
					position: absolute;
					transition: all 0.3s;
					height: 100%;
					.news_title {
					}
					.news_text {
					}
					.news_time {
					}
				}
			}
			.news_list_six_item6:hover {
				.img_box {
					img {
					}
				}
				.content {
					.news_title {
					}
					.news_text {
					}
					.news_time {
					}
				}
			}
			.news_list_six_item7 {
				margin: 0 5px 10px;
				overflow: hidden;
				display: none;
				width: calc(25% - 10px);
				position: relative;
				transition: all 0.3s;
				.img_box {
					width: 100%;
					font-size: 0;
					height: 350px;
					img {
						object-fit: cover;
						width: 100%;
						height: 100%;
					}
				}
				.content {
					top: 100%;
					left: 0;
					background: rgba(0,0,0,.3);
					width: 100%;
					position: absolute;
					transition: all 0.3s;
					height: 100%;
					.news_title {
					}
					.news_text {
					}
					.news_time {
					}
				}
			}
			.news_list_six_item7:hover {
				.img_box {
					img {
					}
				}
				.content {
					.news_title {
					}
					.news_text {
					}
					.news_time {
					}
				}
			}
			.news_list_six_item8 {
				margin: 0 5px 10px;
				overflow: hidden;
				display: none;
				width: calc(25% - 10px);
				position: relative;
				transition: all 0.3s;
				.img_box {
					width: 100%;
					font-size: 0;
					height: 350px;
					img {
						object-fit: cover;
						width: 100%;
						height: 100%;
					}
				}
				.content {
					top: 100%;
					left: 0;
					background: rgba(0,0,0,.3);
					width: 100%;
					position: absolute;
					transition: all 0.3s;
					height: 100%;
					.news_title {
					}
					.news_text {
					}
					.news_time {
					}
				}
			}
			.news_list_six_item8:hover {
				.img_box {
					img {
					}
				}
				.content {
					.news_title {
					}
					.news_text {
					}
					.news_time {
					}
				}
			}
		}
		// list
		// animation
		.animation_box {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			z-index: initial;
		}
		.animation_box:hover {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(10px, 0px, 0px);
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
		// 更多
		.news_more_view {
			cursor: pointer;
			border: 0px solid #ddd;
			border-radius: 30px;
			padding: 0 10px;
			margin: 20px auto;
			top: 26px;
			background: #ff8bbc;
			width: auto;
			line-height: 34px;
			position: absolute;
			right: 10%;
			text-align: center;
			.news_more_text {
				color: #fff;
				display: inline-block;
				font-size: 14px;
			}
			.el-icon {
				color: #fff;
				display: inline-block;
			}
		}
	}
	// 新闻资讯
	// 首页展示
	.homeList_view {
		padding: 20px 10%;
		margin: 30px 0 0;
		background: none;
		width: 100%;
		position: relative;
		text-align: center;
		order: 8;

		.homeList_title {
			padding: 0px;
			margin: 0;
			color: #ed5e6f;
			background: none;
			font-weight: 500;
			width: 100%;
			font-size: 30px;
			border-color: #eee;
			border-width: 0px;
			border-style: solid;
			text-align: center;
		}
		// list
		.home_list_five {
			margin: 30px 0 0;
			display: flex;
			width: 100%;
			align-items: flex-start;
			flex-wrap: wrap;
			.home_list_five_item1 {
				cursor: pointer;
				margin: 0 30px 20px 0;
				width: calc(25% - 30px);
				transition: all 0.3s;
				text-align: center;
				.img_box {
					margin: 0 auto 10px;
					width: 250px;
					height: 250px;
					.home_img {
						border: 6px solid #eee;
						border-radius: 100%;
						object-fit: cover;
						width: 100%;
						height: 100%;
					}
				}
				.homeList_content {
					padding: 0px;
					margin: 0 auto;
					color: #fff;
					background: none;
					display: flex;
					width: 68%;
					font-size: 14px;
					line-height: 36px;
					flex-wrap: wrap;
					text-align: center;
					.homeList_title1 {
						border-radius: 20px;
						margin: 0 0 5px;
						background: #ff8798;
						width: 100%;
					}
					.homeList_title2 {
						border-radius: 20px;
						margin: 0 0 5px;
						background: #ff8798;
						width: 100%;
					}
					.homeList_title3 {
						border-radius: 20px;
						margin: 0 0 5px;
						background: #ff8798;
						width: 100%;
					}
					.homeList_title4 {
						border-radius: 20px;
						margin: 0 0 5px;
						background: #ff8798;
						width: 100%;
					}
					.homeList_title5 {
						border-radius: 20px;
						margin: 0 0 5px;
						background: #ff8798;
						width: 100%;
					}
				}
			}
			.home_list_five_item1:hover {
				transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, -10px, 0px);
				.img_box {
					.home_img {
					}
				}
				.homeList_content {
					.homeList_title1 {
					}
					.homeList_title2 {
					}
					.homeList_title3 {
					}
					.homeList_title4 {
					}
					.homeList_title5 {
					}
				}
			}
			.home_list_five_item2 {
				cursor: pointer;
				margin: 0 30px 20px 0;
				width: calc(25% - 30px);
				transition: all 0.3s;
				.img_box {
					margin: 0 auto 10px;
					width: 250px;
					height: 250px;
					.home_img {
						border: 6px solid #eee;
						border-radius: 100%;
						object-fit: cover;
						width: 100%;
						height: 100%;
					}
				}
				.homeList_content {
					padding: 0;
					margin: 0 auto;
					color: #fff;
					background: none;
					display: flex;
					width: 68%;
					line-height: 36px;
					flex-wrap: wrap;
					text-align: center;
					.homeList_title1 {
						border-radius: 24px;
						margin: 0 0 5px;
						background: #ff8798;
						width: 100%;
					}
					.homeList_title2 {
						border-radius: 20px;
						margin: 0 0 5px;
						background: #ff8798;
						width: 100%;
					}
					.homeList_title3 {
						border-radius: 20px;
						margin: 0 0 5px;
						background: #ff8798;
						width: 100%;
					}
					.homeList_title4 {
						border-radius: 20px;
						margin: 0 0 5px;
						background: #ff8798;
						width: 100%;
					}
					.homeList_title5 {
						border-radius: 20px;
						margin: 0 0 5px;
						background: #ff8798;
						width: 100%;
					}
				}
			}
			.home_list_five_item2:hover {
				transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, -10px, 0px);
				.img_box {
					.home_img {
					}
				}
				.homeList_content {
					.homeList_title1 {
					}
					.homeList_title2 {
					}
					.homeList_title3 {
					}
					.homeList_title4 {
					}
					.homeList_title5 {
					}
				}
			}
			.home_list_five_item3 {
				cursor: pointer;
				margin: 0 30px 20px 0;
				width: calc(25% - 30px);
				transition: all 0.3s;
				.img_box {
					margin: 0 auto 10px;
					width: 250px;
					height: 250px;
					.home_img {
						border: 6px solid #eee;
						border-radius: 100%;
						object-fit: cover;
						width: 100%;
						height: 100%;
					}
				}
				.homeList_content {
					padding: 0;
					margin: 0 auto;
					color: #fff;
					background: none;
					display: flex;
					width: 68%;
					line-height: 36px;
					flex-wrap: wrap;
					text-align: center;
					.homeList_title1 {
						border-radius: 20px;
						margin: 0 0 5px;
						background: #ff8798;
						width: 100%;
					}
					.homeList_title2 {
						border-radius: 20px;
						margin: 0 0 5px;
						background: #ff8798;
						width: 100%;
					}
					.homeList_title3 {
						border-radius: 20px;
						margin: 0 0 5px;
						background: #ff8798;
						width: 100%;
					}
					.homeList_title4 {
						border-radius: 20px;
						margin: 0 0 5px;
						background: #ff8798;
						width: 100%;
					}
					.homeList_title5 {
						border-radius: 20px;
						margin: 0 0 5px;
						background: #ff8798;
						width: 100%;
					}
				}
			}
			.home_list_five_item3:hover {
				transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, -10px, 0px);
				.img_box {
					.home_img {
					}
				}
				.homeList_content {
					.homeList_title1 {
					}
					.homeList_title2 {
					}
					.homeList_title3 {
					}
					.homeList_title4 {
					}
					.homeList_title5 {
					}
				}
			}
			.home_list_five_item4 {
				cursor: pointer;
				margin: 0 0 20px 0;
				width: calc(25% - 0px);
				transition: all 0.3s;
				.img_box {
					margin: 0 auto 10px;
					width: 250px;
					height: 250px;
					.home_img {
						border: 6px solid #eee;
						border-radius: 100%;
						object-fit: cover;
						width: 100%;
						height: 100%;
					}
				}
				.homeList_content {
					padding: 0;
					margin: 0 auto;
					color: #fff;
					background: none;
					display: flex;
					width: 68%;
					line-height: 36px;
					flex-wrap: wrap;
					text-align: center;
					.homeList_title1 {
						border-radius: 20px;
						margin: 0 0 5px;
						background: #ff8798;
						width: 100%;
					}
					.homeList_title2 {
						border-radius: 20px;
						margin: 0 0 5px;
						background: #ff8798;
						width: 100%;
					}
					.homeList_title3 {
						border-radius: 20px;
						margin: 0 0 5px;
						background: #ff8798;
						width: 100%;
					}
					.homeList_title4 {
						border-radius: 20px;
						margin: 0 0 5px;
						background: #ff8798;
						width: 100%;
					}
					.homeList_title5 {
						border-radius: 20px;
						margin: 0 0 5px;
						background: #ff8798;
						width: 100%;
					}
				}
			}
			.home_list_five_item4:hover {
				transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, -10px, 0px);
				.img_box {
					.home_img {
					}
				}
				.homeList_content {
					.homeList_title1 {
					}
					.homeList_title2 {
					}
					.homeList_title3 {
					}
					.homeList_title4 {
					}
					.homeList_title5 {
					}
				}
			}
			.home_list_five_item5 {
				margin: 0 30px 20px 0;
				width: calc(25% - 30px);
				.img_box {
					width: 100%;
					height: 380px;
					.home_img {
						object-fit: cover;
						width: 100%;
						height: 100%;
					}
				}
				.homeList_content {
					padding: 0;
					background: none;
					display: flex;
					flex-wrap: wrap;
					text-align: left;
					.homeList_title1 {
						width: 100%;
					}
					.homeList_title2 {
						width: 100%;
					}
					.homeList_title3 {
						width: 100%;
					}
					.homeList_title4 {
						width: 100%;
					}
					.homeList_title5 {
						width: 100%;
					}
				}
			}
			.home_list_five_item5:hover {
				transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, -10px, 0px);
				.img_box {
					.home_img {
					}
				}
				.homeList_content {
					.homeList_title1 {
					}
					.homeList_title2 {
					}
					.homeList_title3 {
					}
					.homeList_title4 {
					}
					.homeList_title5 {
					}
				}
			}
			.home_list_five_item6 {
				margin: 0 30px 20px 0;
				width: calc(25% - 30px);
				.img_box {
					width: 100%;
					height: 380px;
					.home_img {
						object-fit: cover;
						width: 100%;
						height: 100%;
					}
				}
				.homeList_content {
					padding: 0;
					background: none;
					display: flex;
					flex-wrap: wrap;
					text-align: left;
					.homeList_title1 {
						width: 100%;
					}
					.homeList_title2 {
						width: 100%;
					}
					.homeList_title3 {
						width: 100%;
					}
					.homeList_title4 {
						width: 100%;
					}
					.homeList_title5 {
						width: 100%;
					}
				}
			}
			.home_list_five_item6:hover {
				transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, -10px, 0px);
				.img_box {
					.home_img {
					}
				}
				.homeList_content {
					.homeList_title1 {
					}
					.homeList_title2 {
					}
					.homeList_title3 {
					}
					.homeList_title4 {
					}
					.homeList_title5 {
					}
				}
			}
			.home_list_five_item7 {
				margin: 0 30px 20px 0;
				width: calc(25% - 30px);
				.img_box {
					width: 100%;
					height: 380px;
					.home_img {
						object-fit: cover;
						width: 100%;
						height: 100%;
					}
				}
				.homeList_content {
					padding: 0;
					background: none;
					display: flex;
					flex-wrap: wrap;
					text-align: left;
					.homeList_title1 {
						width: 100%;
					}
					.homeList_title2 {
						width: 100%;
					}
					.homeList_title3 {
						width: 100%;
					}
					.homeList_title4 {
						width: 100%;
					}
					.homeList_title5 {
						width: 100%;
					}
				}
			}
			.home_list_five_item7:hover {
				transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, -10px, 0px);
				.img_box {
					.home_img {
					}
				}
				.homeList_content {
					.homeList_title1 {
					}
					.homeList_title2 {
					}
					.homeList_title3 {
					}
					.homeList_title4 {
					}
					.homeList_title5 {
					}
				}
			}
			.home_list_five_item8 {
				margin: 0 0px 20px 0;
				width: calc(25% - 0px);
				.img_box {
					width: 100%;
					height: 380px;
					.home_img {
						object-fit: cover;
						width: 100%;
						height: 100%;
					}
				}
				.homeList_content {
					padding: 0;
					background: none;
					display: flex;
					flex-wrap: wrap;
					text-align: left;
					.homeList_title1 {
						width: 100%;
					}
					.homeList_title2 {
						width: 100%;
					}
					.homeList_title3 {
						width: 100%;
					}
					.homeList_title4 {
						width: 100%;
					}
					.homeList_title5 {
						width: 100%;
					}
				}
			}
			.home_list_five_item8:hover {
				transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, -10px, 0px);
				.img_box {
					.home_img {
					}
				}
				.homeList_content {
					.homeList_title1 {
					}
					.homeList_title2 {
					}
					.homeList_title3 {
					}
					.homeList_title4 {
					}
					.homeList_title5 {
					}
				}
			}
		}
		// list
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
		// 更多
		.homeList_more_view {
			cursor: pointer;
			border-radius: 30px;
			padding: 0 10px;
			margin: 0 auto;
			top: 30px;
			background: #ff8bbc;
			display: inline-block;
			width: auto;
			line-height: 34px;
			position: absolute;
			right: 10%;
			text-align: center;
			.homeList_more_text {
				padding: 0px;
				color: #fff;
				display: inline-block;
				font-size: 14px;
			}
			.el-icon {
				color: #fff;
				display: inline-block;
			}
		}
	}
	// 首页展示
</style>