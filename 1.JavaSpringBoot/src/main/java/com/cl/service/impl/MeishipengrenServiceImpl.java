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


import com.cl.dao.MeishipengrenDao;
import com.cl.entity.MeishipengrenEntity;
import com.cl.service.MeishipengrenService;
import com.cl.entity.view.MeishipengrenView;

@Service("meishipengrenService")
public class MeishipengrenServiceImpl extends ServiceImpl<MeishipengrenDao, MeishipengrenEntity> implements MeishipengrenService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<MeishipengrenEntity> page = this.selectPage(
                new Query<MeishipengrenEntity>(params).getPage(),
                new EntityWrapper<MeishipengrenEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<MeishipengrenEntity> wrapper) {
		  Page<MeishipengrenView> page =new Query<MeishipengrenView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
	@Override
	public List<MeishipengrenView> selectListView(Wrapper<MeishipengrenEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public MeishipengrenView selectView(Wrapper<MeishipengrenEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
