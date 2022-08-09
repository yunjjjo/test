<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
body {
  background-color: #333;
  width: 500px;
  margin: 30px auto;
}
.menu-trigger {
  margin-right: 70px;
  margin-bottom: 50px;
}
.menu-trigger,
.menu-trigger span {
  display: inline-block;
  transition: all .4s;
  box-sizing: border-box;
}

.menu-trigger {
  position: relative;
  width: 50px;
  height: 44px;
}

.menu-trigger span {
  position: absolute;
  left: 0;
  width: 100%;
  height: 4px;
  background-color: #fff;
  border-radius: 4px;
}

.menu-trigger span:nth-of-type(1) {
  top: 0;
}

.menu-trigger span:nth-of-type(2) {
  top: 20px;
}

.menu-trigger span:nth-of-type(3) {
  bottom: 0;
}
.menu-trigger.active-1 span:nth-of-type(1) {
  -webkit-transform: translateY (20px) rotate (-45deg);
  transform: translateY(20px) rotate(-45deg);
}

.menu-trigger.active-1 span:nth-of-type(2) {
  opacity: 0;
}

.menu-trigger.active-1 span:nth-of-type(3) {
  -webkit-transform: translateY(-20px) rotate(45deg);
  transform: translateY(-20px) rotate(45deg);
}
</style>
<body>
<a class="menu-trigger" href="#">
    <span></span>
    <span></span>
    <span></span>
</a>


</body>
</html>