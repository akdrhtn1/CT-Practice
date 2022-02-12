<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>세부조회</title>
    <!-- reset cdn 갖고와서 사용-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <c:set var="path" value="${pageContext.request.contextPath}"/>
    <script src="https://code.jquery.com/jquery-3.4.1.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
   
    <link rel="stylesheet" href="${path }/resources/css/noticeDetail.css">

</head>

<script>
function list_go() {
	location.href = "board?cPage=${cPage}";
}
	
</script>
<body>
    <div id="wrap">
        <div class="container--header">
            <header class="header"> 
                <div class="logo"><!-- 고객센터 링크-->
                    <a class="img__link" href="main.jsp"><img src="asset/idolbom1-removeBack.png" alt="logo"></a>    
                    <a class="main__link" href="userCenter.jsp">고객센터</a> 
                    <a class="main__link" href="Frequently.jsp">자주 묻는 질문</a>
                </div>
                <!-- 문의사항 링크 이동-->
                <div>
                    <a id="quest__link" href="inqryRgstr.jsp">문의 등록</a>
                </div>

            </header>
        </div>
        <hr>
        <main>
            <div class="copntainer--main">
                <div class="nav">
                    <ul class="procedure">
                        <li><a href="userCenter.jsp">고객센터</a></li>
                        <li><a href="notice?type=board">공지사항</a></li>
                        <li>세부조회</li>
                    </ul>
                </div>  

                <section class="subInner">
                    <div class="notice">
                        <div>
                            <p>세부조회</p>
                        </div>
                        <table>

                            <colgroup>
                                <col class="w15">
                                <col class="w75">
                            </colgroup>
                            <tbody>
                                    
                            <tr>
								<th>제목</th>
								<td>${dvo.title }</td>
							</tr>
							<tr>
								<th>내용</th>
								<td>${dvo.content }</td>
							</tr>
							<tr>
								<th>작성자</th>
								<td>${dvo.aId }</td>
							</tr>
							  
							<tr>
								<th>첨부파일</th>
								<td>
									<c:if test="${empty dvo.file_name }">
										첨부파일없음
									</c:if>
									<c:if test="${not empty dvo.file_name }">
										<a href="download.jsp?f_name=${dvo.file_name }">${dvo.or_name }</a>
									</c:if>
								</td>
							</tr>
             
                            </tbody>
                        </table>
                        <div>
       						<a href="javascript:list_go();" class="btn btn-default">목록가기</a>
                        </div>
                    </div>
                </section>

            </div>
        </main>

        <footer id="footer">
            <div class="left-footer">

            </div>
        </footer>

    </div>
</body>
</html>