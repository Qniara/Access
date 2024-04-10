<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Kurdt Kobain</title>
</head>
<body>
    <?php
        // $login=$_POST('form');
        // $haslo=$_POST('form');
        // if($login== "login1" && $haslo=="haslo1"){
        //     print("<body bgcolor='pink'></body>");
        // }else{
        //     print("<body bgcolor='blue'></body>");
        // }

        // for( $i = 0; $i < 10; $i++ ){
        //     print("$i ");
        // }
        // echo"<br>";
        // for( $i = 30; $i > 0; $i-- ){
        //     print("$i ");
        // }
        // echo "<br>";
        // $i=1;
        // while($i<=30){
        //     print("$i ");
        //     $i++;
        // }
        
        $n=$_POST['liczba_z_formularza'];
        $silnia=1;
        for($i= 1;$i<=$n;$i++){
            $silnia*=$i;
        }
        print("$n! = $silnia");

    ?>
    <!-- <form method="post" name="form">
        <p>Login: </p>
        <input type="text" name="log">
        <p>Haslo: </p>
        <input type="text" name="has">
        <button class="button" name="baton"> -->
    </form>
</body>
</html>