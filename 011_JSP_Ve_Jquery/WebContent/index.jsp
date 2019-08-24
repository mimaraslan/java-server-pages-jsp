<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style>

  div { color:red; }
  </style>
  <script src="http://code.jquery.com/jquery-latest.js"></script>
</head>
<body>
  <select name="sweets" multiple="multiple">
    <option>Chocolate</option>
    <option selected="selected">Candy</option>

    <option>Taffy</option>
    <option selected="selected">Caramel</option>
    <option>Fudge</option>
    <option>Cookie</option>

  </select>
  <div>a</div>
   <div>b</div> 
   <div>c</div> 
   <div id="ozel"></div>
<script>
    $("select").change(function () {
          var str = "";
          $("select option:selected").each(function () {
                str += $(this).text() + " ";
              });
          $("#ozel").text(str);
        })
        .change();
</script>

</body>
</html>