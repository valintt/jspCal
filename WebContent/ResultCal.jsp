<!-- �õ�InterfaceCal�����ݾ��Ѽ��㣬��Ҫ��ʾ -->

<%@ page language="java" contentType="text/html; charset=gb2312"
   %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk">
<title>������</title>
</head>
<body>

<!-- ����Ϊ��jsp��Ƕ��java���� -->

<%

//���յ�һ����
String s_num1=request.getParameter("num1");

//���յڶ�����
String s_num2=request.getParameter("num2");

//���������
String s_flag=request.getParameter("flag");

int num1=0;
int num2=0;
int result=0;
//java�н�StringתΪint
num1=Integer.parseInt(s_num1);
num2=Integer.parseInt(s_num2);

//����
if(s_flag.equals("+")){
	result=num1+num2;
}else if(s_flag.equals("-")){
	result=num1-num2;
}else if(s_flag.equals("*")){
	result=num1*num2;
}else{
	result=num1/num2;
}

//������
out.println("����ǣ�"+result);


%>
</body>
</html>