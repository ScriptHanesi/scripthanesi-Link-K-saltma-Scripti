<?php 
$host="localhost"; //Host adınızı girin varsayılan olarak Localhosttur eğer bilginiz yoksa bu şekilde bırakın
$veritabani_ismi="veritabanı"; //Veritabanı İsminiz
$kullanici_adi="kullanıcıadı"; //Veritabanı kullanıcı adınız
$sifre="veritabanişifresi"; //Kullanıcı şifreniz

try {

	$db=new PDO("mysql:host=$host;dbname=$veritabani_ismi;charset=utf8",$kullanici_adi,$sifre);
	//echo "veritabanı bağlantısı başarılı";
}

catch (PDOExpception $e) {

	echo $e->getMessage();
}
?>