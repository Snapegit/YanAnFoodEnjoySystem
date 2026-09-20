package com.cl.dao;

import com.cl.entity.BenditeseEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.BenditeseView;


/**
 * 本地特色
 * 
 * @author 
 * @email 
 * @date 2024-01-08 10:48:57
 */
public interface BenditeseDao extends BaseMapper<BenditeseEntity> {
	
	List<BenditeseView> selectListView(@Param("ew") Wrapper<BenditeseEntity> wrapper);

	List<BenditeseView> selectListView(Pagination page,@Param("ew") Wrapper<BenditeseEntity> wrapper);
	
	BenditeseView selectView(@Param("ew") Wrapper<BenditeseEntity> wrapper);
	

}
