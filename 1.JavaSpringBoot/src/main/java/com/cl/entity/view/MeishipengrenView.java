package com.cl.entity.view;

import com.cl.entity.MeishipengrenEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;
import java.math.BigDecimal;

import java.io.Serializable;
 

/**
 * 美食烹饪
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2024-01-08 10:48:57
 */
@TableName("meishipengren")
public class MeishipengrenView  extends MeishipengrenEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public MeishipengrenView(){
	}
 
 	public MeishipengrenView(MeishipengrenEntity meishipengrenEntity){
 	try {
			BeanUtils.copyProperties(this, meishipengrenEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}

}
