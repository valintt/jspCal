<!-- �������Ľ��� -->

<!-- ��InterfaceCal��ResultCal�ϲ�Ϊһ���ļ� -->


<%@ page language="java" contentType="text/html; charset=gb2312"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk">
<title>������</title>
<!-- ��jsp������js���룬��ֹ�û��ύ�������Ϣ -->
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
<form action="ResultCal.jsp" name="form1">
�������һ������<input type="text" name="num1"><br>
<select name="flag">
<option value="+">+</option>
<option value="-">-</option>
<option value="*">*</option>
<option value="/">/</option>
</select><br>
������ڶ�������<input type="text" name="num2"><br>

<!-- onclick�¼�����false�������Ͳ��ᱻ�ύ��ResultCal.jsp -->
<input type="submit" value="����" onclick="return checkNum()">

</form><br>
<hr>
</body>
</html>