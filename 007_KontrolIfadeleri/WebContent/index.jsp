<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Kontrol İfadeleri</title>
</head>
<body>

<h3>Kontrol İfadeleri</h3>
<% 
int sayi = 1453 ;

%>

<h3>if</h3>
<% 
if(sayi == 1453){
	out.println("İstanbul'un fetih tarihi " + sayi +"'tür.");
}
%>


<h3>if - else</h3>
<% 
if(sayi == 1453){
	out.println("İstanbul'un fetih zamanı " + sayi +"'tür.");
}else{
	
	out.println("İstanbul'un fetih zamanı " + sayi +" değildir!");
}
%>

 

<h3>if - else if - else </h3>
<% 
if(sayi == 1453){
	
	out.println("İstanbul'un fetih zamanı " + sayi +"'tür.");

} else if(sayi == 1299){

	out.println("Osmanlı'nın kuruluş zamanı " + sayi +"'dur.");

} else{
	
	out.println("Bu tarihin "  + sayi + " Şanlı Osmanlı ile bir ilgisi yok!");
}
%>




<h3>switch - case </h3>
<% 
/*
switch(sayi){
case 1453 : out.println("İstanbul'un fetih zamanı " + sayi +"'tür."); break;
case 1299 : out.println("Osmanlı'nın kuruluş zamanı " + sayi +"'dur."); break;
default : out.println("Bu tarihin "  + sayi + " Şanlı Osmanlı ile bir ilgisi yok!");
*/
String mesaj ="";
switch(sayi){
case 1453 : mesaj = "İstanbul'un fetih tarihi " + sayi +"'tür.";  break;
case 1299 :  mesaj = "Osmanlı'nın kuruluş tarihi " + sayi +"'dur.";  break;
default :  mesaj = "Bu tarihin "  + sayi + " Şanlı Osmanlı ile bir ilgisi yok!";
}
out.println(mesaj);


%>

 
 
 <h3>while</h3>
<% 
int i = 3;
while (i > 0) {
	out.print(i + " F.S.M. - ");
	i--;
}

%>
 
 
 
 <h3>do - while</h3>
<% 
int a = -5;

do {
	out.print(a + " EN AZ 1 DEFA CALISIR.");
	a--;
} while (a > 0);

%> 
 
 
 
 
 <h3>for</h3>
<% 

for (int j = 3; j > 0; j--) {
	out.print(j + " F.S.M. ____ ");
}

%>
  
  
 
 <h3>for-each</h3>
<% 
int sayiDizisi [] = { 571, 622, 632, 1040, 1071 ,1299, 1453 };

for (int geciciDegisken : sayiDizisi ) {
	out.print(geciciDegisken+ "  ");
}

%>  


</body>
</html>