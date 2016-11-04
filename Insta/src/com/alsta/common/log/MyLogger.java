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
	
	//����� �޼��� ���� 
	public Object printMsg(ProceedingJoinPoint joinPoint){
		//Ÿ���� ���� ���� ���� ��..�ϰ� ���� �ڵ�
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
			logger.debug(className+"."+methodName+"������");//�Ŭ����? � �޼���?
			obj=joinPoint.proceed();//Ÿ���� ���� ���� ����
		} catch (Throwable e) {
			e.printStackTrace();
		}finally{
			logger.debug(className+"."+methodName+"������");//�Ŭ����? � �޼���?
		}
		//Ÿ���� ���� ���� ���� ��..�ϰ� ���� �ڵ�
		return obj;
	}
}
