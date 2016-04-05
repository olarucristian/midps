<?php

define('DB_HOST', 'localhost');
define('DB_NAME','Subscribe');
define('DB_USER', 'root');
define('DB_PASSWORD', 'olarucr12');

$con=mysql_connect(DB_HOST,DB_USER,DB_PASSWORD) or die("Failed to connect to MySQL: " . mysql_error());
$db=mysql_select_db(DB_NAME,$con) or die("Failed to connect to MySQL: " . mysql_error());
function NewUser()
{ $fullname = $_POST['name'];

    $email = $_POST['email'];

    $query = "INSERT INTO websiteusers (fullname,userName,email,pass) VALUES ('$fullname',$email')";
    $data = mysql_query ($query)or die(mysql_error());
    if($data)
    {
        echo "YOUR REGISTRATION IS COMPLETED...";}
}
function Subscribe() {
    if(!empty($_POST['user'])) //checking the 'user' name which is from Sign-Up.html, is it empty or have some text
    { $query = mysql_query("SELECT * FROM websiteusers WHERE userName = '$_POST[user]' AND pass = '$_POST[pass]'") or die(mysql_error());
        if(!$row = mysql_fetch_array($query) or die(mysql_error()))
        {
            newuser();
        }
        else
        { echo "SORRY...YOU ARE ALREADY REGISTERED USER..."; } } }
if(isset($_POST['submit']))
{ SignUp(); } ?>