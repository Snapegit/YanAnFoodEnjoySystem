package com.cl.dao;

import com.cl.entity.MeishizhuanfaEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.MeishizhuanfaView;


/**
 * 美食转发
 * 
 * @author 
 * @email 
 * @date 2024-01-08 10:48:57
 */
public interface MeishizhuanfaDao extends BaseMapper<MeishizhuanfaEntity> {
	
	List<MeishizhuanfaView> selectListView(@Param("ew") Wrapper<MeishizhuanfaEntity> wrapper);

	List<MeishizhuanfaView> selectListView(Pagination page,@Param("ew") Wrapper<MeishizhuanfaEntity> wrapper);
	
	MeishizhuanfaView selectView(@Param("ew") Wrapper<MeishizhuanfaEntity> wrapper);
	

}
