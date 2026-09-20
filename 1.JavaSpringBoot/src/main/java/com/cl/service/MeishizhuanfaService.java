package com.cl.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.cl.utils.PageUtils;
import com.cl.entity.MeishizhuanfaEntity;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.MeishizhuanfaView;


/**
 * 美食转发
 *
 * @author 
 * @email 
 * @date 2024-01-08 10:48:57
 */
public interface MeishizhuanfaService extends IService<MeishizhuanfaEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<MeishizhuanfaView> selectListView(Wrapper<MeishizhuanfaEntity> wrapper);
   	
   	MeishizhuanfaView selectView(@Param("ew") Wrapper<MeishizhuanfaEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<MeishizhuanfaEntity> wrapper);
   	

}

