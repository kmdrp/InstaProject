package com.alsta.common.log;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.aspectj.lang.ProceedingJoinPoint;
import org.springframework.web.servlet.ModelAndView;

public class MyLogger {
Logger logger;
	
	public MyLogger() {
		logger = LogManager.getLogger(this.getClass().getName());
	}
	
	//디버깅 메서드 정의 
	public Object printMsg(ProceedingJoinPoint joinPoint){
		//타겟의 본래 로직 수행 전..하고 싶은 코드
		HttpServletRequest request=null;
		Object obj=null;
		ModelAndView mav=new ModelAndView();
		Object target=joinPoint.getTarget();
		String className=target.getClass().getName();
		String methodName=joinPoint.getSignature().getName();
		Object[] obArray=joinPoint.getArgs();
		if(obArray.length>0){
			if(obArray[0] instanceof HttpServletRequest){
				request=(HttpServletRequest)obArray[0];
				HttpSession session=request.getSession();
				if(session.getAttribute("member_id")==null){
					mav.setViewName("index");
					return mav;
				}
			}
		}
		try {
			logger.debug(className+"."+methodName+"수행전");//어떤클래스? 어떤 메서드?
			obj=joinPoint.proceed();//타겟의 본래 로직 수행
		} catch (Throwable e) {
			e.printStackTrace();
		}finally{
			logger.debug(className+"."+methodName+"수행후");//어떤클래스? 어떤 메서드?
		}
		//타겟의 본래 로직 수행 후..하고 싶은 코드
		return obj;
	}
}
