<?php
$con =mysqli_connect ('localhost','root', 'olarucr12');

if (!$con)
{
    echo 'Not connected to server';
}
if (!mysqli_select_db($con,'abonare'))
{
    echo 'Database not selected';
}

$Name =$_POST['username'];
$Email=$_POST['email'];

 $sql = "INSERT INTO names (Name,Email) VALUES ('$Name', '$Email')";
if(!mysqli_query($con,$sql)) {
    echo 'Not Subscribed';
}
else
{
    echo  'Subscribed';

}

header("refresh:2 url=index.html");

?>