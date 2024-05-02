<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.kh.member.model.vo.Member"%> <!-- Member 미리 import 돼 있음 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> <!-- Core라이브러리 -->
<!DOCTYPE HTML>

<html>
<head>
<title>MOOSA</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<!-- <link rel="stylesheet" href="assets/css/main.css"/> -->
<style type="text/css">
*{padding:0;margin:0}
ul,ol{list-style:none}
a{text-decoration:none;color:#fff;font-size:15px}
nav{width:80%;overflow:hidden;height:80px;background-color:#1b2035;margin:50px auto}
#nav3 {
  width: 100%;
  position: relative;
  text-align: center;
}
#nav3>a {
  line-height: 80px;
  display: block;
  font-size: 30px;
  font-weight: 900;
  position: absolute;
  left: 30px;
}
#nav3>select {
  padding: 0 20px;
  height: 30px;
  background-color: #1b2035;
  color: #fff;
  position: absolute;
  right: 30px;
  top: 50%;
  transform: translateY(-15px);
  border: 2px solid #fff;
  border-radius: 30px;
}
#nav3>ul {
  display: inline-block;
}
#nav3>ul li {
  float: left;
  line-height: 80px;
  padding: 0 30px;
}
</style>
</head>

<body >
	<nav id="nav3">
    <a href="#">logo</a>
    <ul>
      <li><a href="views/lod/lod_index.jsp">menu1</a></li>
      <li><a href="#">menu2</a></li>
      <li><a href="#">menu3</a></li>
      <li><a href="#">menu4</a></li>
      <li><a href="#">menu5</a></li>
    </ul>

    <select>
      <option>=test=</option>
      <option>=test=</option>
      <option>=test=</option>
    </select>
  </nav>
</body>
</html>