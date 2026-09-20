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


import com.cl.dao.MeishizhuanfaDao;
import com.cl.entity.MeishizhuanfaEntity;
import com.cl.service.MeishizhuanfaService;
import com.cl.entity.view.MeishizhuanfaView;

@Service("meishizhuanfaService")
public class MeishizhuanfaServiceImpl extends ServiceImpl<MeishizhuanfaDao, MeishizhuanfaEntity> implements MeishizhuanfaService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<MeishizhuanfaEntity> page = this.selectPage(
                new Query<MeishizhuanfaEntity>(params).getPage(),
                new EntityWrapper<MeishizhuanfaEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<MeishizhuanfaEntity> wrapper) {
		  Page<MeishizhuanfaView> page =new Query<MeishizhuanfaView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
	@Override
	public List<MeishizhuanfaView> selectListView(Wrapper<MeishizhuanfaEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public MeishizhuanfaView selectView(Wrapper<MeishizhuanfaEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
