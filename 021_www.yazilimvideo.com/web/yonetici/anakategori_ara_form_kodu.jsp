<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
</head>



<body>

 <h1>Ara</h1>
   
<form id="anakategori_ara_sql_kodu" name="anakategori_ara_sql_kodu"
          
          method="post" action="anakategori_ara_sonuc.jsp">
    
  <table width="500" border="0">
    <tr>
      <td width="100">Ana kategori adi </td>
      <td width="200"><input type="text" name="anakategoriadi" id="anakategoriadi" /></td>
    </tr>
    
    <tr>
      <td>Ana kategori sirasi</td>
      <td><input type="text" name="anakategorisirasi" id="anakategorisirasi" /></td>
    </tr>

    <tr>
      <td>&nbsp;</td>
      <td><input type="reset" name="vazgec" id="vazgec" value="Vazgeç" />      
      <input type="submit" name="onayla" id="onayla" value="Onayla" /></td>
    </tr>
  </table>
</form>

</body>
</html>
