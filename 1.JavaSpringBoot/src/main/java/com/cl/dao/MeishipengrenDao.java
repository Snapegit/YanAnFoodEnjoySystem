package com.cl.dao;

import com.cl.entity.MeishipengrenEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.MeishipengrenView;


/**
 * 美食烹饪
 * 
 * @author 
 * @email 
 * @date 2024-01-08 10:48:57
 */
public interface MeishipengrenDao extends BaseMapper<MeishipengrenEntity> {
	
	List<MeishipengrenView> selectListView(@Param("ew") Wrapper<MeishipengrenEntity> wrapper);

	List<MeishipengrenView> selectListView(Pagination page,@Param("ew") Wrapper<MeishipengrenEntity> wrapper);
	
	MeishipengrenView selectView(@Param("ew") Wrapper<MeishipengrenEntity> wrapper);
	

}
