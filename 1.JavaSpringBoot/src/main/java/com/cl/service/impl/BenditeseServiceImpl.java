package com.cl.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.cl.utils.PageUtils;
import com.cl.utils.Query;


import com.cl.dao.BenditeseDao;
import com.cl.entity.BenditeseEntity;
import com.cl.service.BenditeseService;
import com.cl.entity.view.BenditeseView;

@Service("benditeseService")
public class BenditeseServiceImpl extends ServiceImpl<BenditeseDao, BenditeseEntity> implements BenditeseService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<BenditeseEntity> page = this.selectPage(
                new Query<BenditeseEntity>(params).getPage(),
                new EntityWrapper<BenditeseEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<BenditeseEntity> wrapper) {
		  Page<BenditeseView> page =new Query<BenditeseView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
	@Override
	public List<BenditeseView> selectListView(Wrapper<BenditeseEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public BenditeseView selectView(Wrapper<BenditeseEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
