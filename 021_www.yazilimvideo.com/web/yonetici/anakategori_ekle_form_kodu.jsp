<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
</head>

<script>
function formuKontrolEdenFonksiyon(form){
//--------------------------------
if(form.anakategoriadi.value==''){

alert ("anakategoriadi alanını boş geçemezsiniz.");
return false;
}
//--------------------------------
if(form.anakategorisirasi.value==''){

alert ("anakategorisirasi alanını boş geçemezsiniz.");
return false;
}
//--------------------------------
}
</script>

<body>


<h1>Ekle</h1>
    
<form id="anakategori_ekle_form" name="anakategori_ekle_form"
          onsubmit="return formuKontrolEdenFonksiyon(document.anakategori_ekle_form);"
          method="post" action="anakategori_ekle.jsp">
    
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
      <td>Ana kategori resim adi</td>
      <td><input type="file" name="anakategoriresimadi" id="anakategoriresimadi" size="50" /></td>
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
