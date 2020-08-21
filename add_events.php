<?php

    $title=$_POST['title'];
    $start=$_POST['start'];
    $end=$_POST['end'];
 
 
 
 try {
    $bdd = new PDO('mysql:host=localhost; dbname=xrm', 'root', '');
    $bdd->query("SET NAMES utf8"); 
    $bdd->query("SET CHARACTER SET utf8"); 
    $bdd->query("SET COLLATION_CONNECTION = 'utf8_turkish_ci'");
    $bdd->exec("SET NAMES 'utf8'; SET CHARSET 'utf8'");
 } catch(Exception $e) {
        exit('Bağlantı Başarısız');
 }

        $sql = "INSERT INTO evenement (title, start, end) VALUES (:title, :start, :end)";
        $q = $bdd->prepare($sql);
        $q->execute(array(':title'=>$title, ':start'=>$start, ':end'=>$end));
        echo "işlendi..";
?>