package com.cl.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.cl.utils.PageUtils;
import com.cl.entity.BenditeseEntity;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.BenditeseView;


/**
 * 本地特色
 *
 * @author 
 * @email 
 * @date 2024-01-08 10:48:57
 */
public interface BenditeseService extends IService<BenditeseEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<BenditeseView> selectListView(Wrapper<BenditeseEntity> wrapper);
   	
   	BenditeseView selectView(@Param("ew") Wrapper<BenditeseEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<BenditeseEntity> wrapper);
   	

}

