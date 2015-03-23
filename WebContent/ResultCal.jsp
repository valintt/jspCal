<!-- 得到InterfaceCal的数据惊醒计算，还要显示 -->

<%@ page language="java" contentType="text/html; charset=gb2312"
   %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk">
<title>计算器</title>
</head>
<body>

<!-- 以下为在jsp中嵌入java代码 -->

<%

//接收第一个数
String s_num1=request.getParameter("num1");

//接收第二个数
String s_num2=request.getParameter("num2");

//接收运算符
String s_flag=request.getParameter("flag");

int num1=0;
int num2=0;
int result=0;
//java中将String转为int
num1=Integer.parseInt(s_num1);
num2=Integer.parseInt(s_num2);

//计算
if(s_flag.equals("+")){
	result=num1+num2;
}else if(s_flag.equals("-")){
	result=num1-num2;
}else if(s_flag.equals("*")){
	result=num1*num2;
}else{
	result=num1/num2;
}

//输出结果
out.println("结果是："+result);


%>
</body>
</html>