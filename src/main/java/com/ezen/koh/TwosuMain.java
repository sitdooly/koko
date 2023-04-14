package com.ezen.koh;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class TwosuMain {

	public static void main(String[] args) {
		String  path = "classpath:twosu.xml";
		//bean에 등록된 객체를 가져오기위한 기능의 객체를 생성하는 스프링 컨테이너 
		AbstractApplicationContext aac = 
				//경로에서 설정한 XML 화일을 로딩하여 자료를 구동시키는 스프링 컨테이너
				new GenericXmlApplicationContext(path);
		TwosuDTO ts = aac.getBean("two",TwosuDTO.class);
		ts.out();
		
	}
}
