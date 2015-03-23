<!-- 计算器的界面 -->

<!-- 将InterfaceCal和ResultCal合并为一个文件 -->


<%@ page language="java" contentType="text/html; charset=gb2312"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk">
<title>计算器</title>
<!-- 在jsp中添加js代码，防止用户提交错误的信息 -->
<script language="javascript">
<!--
	//写一个函数用于验证用户书不是空提交
	function checkNum(){
		//判断数值是不是为空
		if((form1.num1.value=="")|(form1.num2.value=="")){
			window.alert("数值不能为空!");
			
			return false;
		}
		
		//判断输入的数值是不是数
		if((Math.round(form1.num1.value)!=form1.num1.value)|(Math.round(form1.num2.value)!=form1.num2.value)){
			window.alert("请输入数值！");
			
			return false;
		}
	}
-->
</script>

</head>
<body>
<h1>我的计算器</h1>
<hr>


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

//result可以在jsp中使用，" <%=?????> ",?????为java的表达式
int result=0;

//为了防止异常的发生，做一个处理
//java中将String转为int
if((s_num1!=null)&&(s_num2!=null)&&(s_flag!=null)){
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

}
//输出结果
//out.println("结果是："+result);

%>

<form action="InterfaceCal.jsp" name="form1">
请输入第一个数：<input type="text" size="6" name="num1"  <%=num2 %>><br>
<select name="flag">
<option value="+">+</option>
<option value="-">-</option>
<option value="*">*</option>
<option value="/">/</option>
</select><br>
请输入第二个数：<input type="text" size="6" name="num2" value=<%=num2 %>><br>

<!-- onclick事件返回false，表单就不会被提交给ResultCal.jsp -->
<input type="submit" value="计算" onclick="return checkNum()">

</form><br>
<hr>



<!-- 这里输出计算的结果 -->
结果是：<%=result %><!-- 表达式语法 -->

</body>
</html>