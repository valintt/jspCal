<!-- �������Ľ��� -->

<!-- ��InterfaceCal��ResultCal�ϲ�Ϊһ���ļ� -->


<%@ page language="java" contentType="text/html; charset=gb2312"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk">
<title>������</title>
<!-- ��jsp�����js���룬��ֹ�û��ύ�������Ϣ -->
<script language="javascript">
<!--
	//дһ������������֤�û��鲻�ǿ��ύ
	function checkNum(){
		//�ж���ֵ�ǲ���Ϊ��
		if((form1.num1.value=="")|(form1.num2.value=="")){
			window.alert("��ֵ����Ϊ��!");
			
			return false;
		}
		
		//�ж��������ֵ�ǲ�����
		if((Math.round(form1.num1.value)!=form1.num1.value)|(Math.round(form1.num2.value)!=form1.num2.value)){
			window.alert("��������ֵ��");
			
			return false;
		}
	}
-->
</script>

</head>
<body>
<h1>�ҵļ�����</h1>
<hr>


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

//result������jsp��ʹ�ã�" <%=?????> ",?????Ϊjava�ı��ʽ
int result=0;

//Ϊ�˷�ֹ�쳣�ķ�������һ������
//java�н�StringתΪint
if((s_num1!=null)&&(s_num2!=null)&&(s_flag!=null)){
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

}
//������
//out.println("����ǣ�"+result);

%>

<form action="InterfaceCal.jsp" name="form1">
�������һ������<input type="text" size="6" name="num1"  <%=num2 %>><br>
<select name="flag">
<option value="+">+</option>
<option value="-">-</option>
<option value="*">*</option>
<option value="/">/</option>
</select><br>
������ڶ�������<input type="text" size="6" name="num2" value=<%=num2 %>><br>

<!-- onclick�¼�����false�����Ͳ��ᱻ�ύ��ResultCal.jsp -->
<input type="submit" value="����" onclick="return checkNum()">

</form><br>
<hr>



<!-- �����������Ľ�� -->
����ǣ�<%=result %><!-- ���ʽ�﷨ -->

</body>
</html>