package com.cl.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.cl.utils.PageUtils;
import com.cl.entity.MeishipengrenEntity;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.MeishipengrenView;


/**
 * 美食烹饪
 *
 * @author 
 * @email 
 * @date 2024-01-08 10:48:57
 */
public interface MeishipengrenService extends IService<MeishipengrenEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<MeishipengrenView> selectListView(Wrapper<MeishipengrenEntity> wrapper);
   	
   	MeishipengrenView selectView(@Param("ew") Wrapper<MeishipengrenEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<MeishipengrenEntity> wrapper);
   	

}

