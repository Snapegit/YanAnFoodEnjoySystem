package com.cl.controller;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Map;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

import com.cl.utils.ValidatorUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.cl.annotation.IgnoreAuth;

import com.cl.entity.MeishipengrenEntity;
import com.cl.entity.view.MeishipengrenView;

import com.cl.service.MeishipengrenService;
import com.cl.service.TokenService;
import com.cl.utils.PageUtils;
import com.cl.utils.R;
import com.cl.utils.MD5Util;
import com.cl.utils.MPUtil;
import com.cl.utils.CommonUtil;
import java.io.IOException;

/**
 * 美食烹饪
 * 后端接口
 * @author 
 * @email 
 * @date 2024-01-08 10:48:57
 */
@RestController
@RequestMapping("/meishipengren")
public class MeishipengrenController {
    @Autowired
    private MeishipengrenService meishipengrenService;



    


    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,MeishipengrenEntity meishipengren,
		HttpServletRequest request){
        EntityWrapper<MeishipengrenEntity> ew = new EntityWrapper<MeishipengrenEntity>();

		PageUtils page = meishipengrenService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, meishipengren), params), params));

        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,MeishipengrenEntity meishipengren, 
		HttpServletRequest request){
        EntityWrapper<MeishipengrenEntity> ew = new EntityWrapper<MeishipengrenEntity>();

		PageUtils page = meishipengrenService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, meishipengren), params), params));
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( MeishipengrenEntity meishipengren){
       	EntityWrapper<MeishipengrenEntity> ew = new EntityWrapper<MeishipengrenEntity>();
      	ew.allEq(MPUtil.allEQMapPre( meishipengren, "meishipengren")); 
        return R.ok().put("data", meishipengrenService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(MeishipengrenEntity meishipengren){
        EntityWrapper< MeishipengrenEntity> ew = new EntityWrapper< MeishipengrenEntity>();
 		ew.allEq(MPUtil.allEQMapPre( meishipengren, "meishipengren")); 
		MeishipengrenView meishipengrenView =  meishipengrenService.selectView(ew);
		return R.ok("查询美食烹饪成功").put("data", meishipengrenView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        MeishipengrenEntity meishipengren = meishipengrenService.selectById(id);
        return R.ok().put("data", meishipengren);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        MeishipengrenEntity meishipengren = meishipengrenService.selectById(id);
        return R.ok().put("data", meishipengren);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody MeishipengrenEntity meishipengren, HttpServletRequest request){
    	meishipengren.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(meishipengren);
        meishipengrenService.insert(meishipengren);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody MeishipengrenEntity meishipengren, HttpServletRequest request){
    	meishipengren.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(meishipengren);
        meishipengrenService.insert(meishipengren);
        return R.ok();
    }



    /**
     * 修改
     */
    @RequestMapping("/update")
    @Transactional
    public R update(@RequestBody MeishipengrenEntity meishipengren, HttpServletRequest request){
        //ValidatorUtils.validateEntity(meishipengren);
        meishipengrenService.updateById(meishipengren);//全部更新
        return R.ok();
    }



    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        meishipengrenService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
	








}
