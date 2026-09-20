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

import com.cl.entity.BenditeseEntity;
import com.cl.entity.view.BenditeseView;

import com.cl.service.BenditeseService;
import com.cl.service.TokenService;
import com.cl.utils.PageUtils;
import com.cl.utils.R;
import com.cl.utils.MD5Util;
import com.cl.utils.MPUtil;
import com.cl.utils.CommonUtil;
import java.io.IOException;

/**
 * 本地特色
 * 后端接口
 * @author 
 * @email 
 * @date 2024-01-08 10:48:57
 */
@RestController
@RequestMapping("/benditese")
public class BenditeseController {
    @Autowired
    private BenditeseService benditeseService;



    


    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,BenditeseEntity benditese,
		HttpServletRequest request){
        EntityWrapper<BenditeseEntity> ew = new EntityWrapper<BenditeseEntity>();

		PageUtils page = benditeseService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, benditese), params), params));

        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,BenditeseEntity benditese, 
		HttpServletRequest request){
        EntityWrapper<BenditeseEntity> ew = new EntityWrapper<BenditeseEntity>();

		PageUtils page = benditeseService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, benditese), params), params));
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( BenditeseEntity benditese){
       	EntityWrapper<BenditeseEntity> ew = new EntityWrapper<BenditeseEntity>();
      	ew.allEq(MPUtil.allEQMapPre( benditese, "benditese")); 
        return R.ok().put("data", benditeseService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(BenditeseEntity benditese){
        EntityWrapper< BenditeseEntity> ew = new EntityWrapper< BenditeseEntity>();
 		ew.allEq(MPUtil.allEQMapPre( benditese, "benditese")); 
		BenditeseView benditeseView =  benditeseService.selectView(ew);
		return R.ok("查询本地特色成功").put("data", benditeseView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        BenditeseEntity benditese = benditeseService.selectById(id);
        return R.ok().put("data", benditese);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        BenditeseEntity benditese = benditeseService.selectById(id);
        return R.ok().put("data", benditese);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody BenditeseEntity benditese, HttpServletRequest request){
    	benditese.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(benditese);
        benditeseService.insert(benditese);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody BenditeseEntity benditese, HttpServletRequest request){
    	benditese.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(benditese);
        benditeseService.insert(benditese);
        return R.ok();
    }



    /**
     * 修改
     */
    @RequestMapping("/update")
    @Transactional
    public R update(@RequestBody BenditeseEntity benditese, HttpServletRequest request){
        //ValidatorUtils.validateEntity(benditese);
        benditeseService.updateById(benditese);//全部更新
        return R.ok();
    }



    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        benditeseService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
	








}
