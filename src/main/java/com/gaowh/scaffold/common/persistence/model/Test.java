package com.gaowh.scaffold.common.persistence.model;

import com.baomidou.mybatisplus.activerecord.Model;
import java.io.Serializable;

/**
 * <p>
 * 
 * </p>
 *
 * @author gaowh
 * @since 2017-06-30
 */
public class Test extends Model<Test> {

    private static final long serialVersionUID = 1L;

	private Integer id;
	private String value;


	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}

	@Override
	protected Serializable pkVal() {
		return this.id;
	}

}
