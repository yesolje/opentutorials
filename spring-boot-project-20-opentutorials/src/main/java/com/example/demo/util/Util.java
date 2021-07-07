package com.example.demo.util;

import org.springframework.data.domain.Sort;

import com.example.demo.constant.Constant;

public class Util {
	public static Sort sortByParam(String column, String sort) {
		if(sort.equals(Constant.ASC)) {
			return Sort.by(Sort.Direction.ASC,column);
		}else if(sort.equals(Constant.DESC)) {
			return Sort.by(Sort.Direction.DESC,column);
		}else {
			return null;
		}
		
		
	}
}
