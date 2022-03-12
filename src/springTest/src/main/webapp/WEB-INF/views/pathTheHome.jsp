<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<title>Insert title here</title>
</head>

<script type="text/javascript">
	function Excreate(){
		fetch("http://localhost:8080/co/excel",{
			method : "GET",
		}).then((response) => response.json())
		
		.then((data) => console.log(data));
		
	}

</script>

<body>
	<p>전달 받은 내용은 ${path }입니다 </p>
	<button onclick = "Excreate()">엑셀 생성</button>
	
</body>
</html>