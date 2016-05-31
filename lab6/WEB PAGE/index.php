<?php

include('config.php');
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"

"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">



<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
<meta name="Description" content="Image Hosting, Free Host" />

<meta name="Keywords" content="Free Image Hosting, Fastest servers, intel xeon," />

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />





<link rel="stylesheet" href="images/style.css" type="text/css" />



<title><?php print $title; ?></title>

	

</head>



<BODY>



<div id="wrap">

		

	
	<div id="header">			

				

		<h1 id="logo-text"><a href="index.php"><?php print $title; ?></a></h1>		

		<p id="slogan"><?php print $title; ?> - Fastest Free Image Host</p>		

			

		<div id="header-links">

			<p>

			                                                  
			<a href="contact.php">Contact US</a>
                            
		
			</p>		

		</div>		

						

	</div>

		

	

				

			

	<div id="content-wrap">

		

		<div id="main">				
<center>
<?php
include('config.php');
if($_SERVER['REQUEST_METHOD'] == 'POST') {

    preg_match('/\.([a-zA-Z]+?)$/', $_FILES['file']['name'], $matches);

    if(in_array(strtolower($matches[1]), $accepted)) {

        if($_FILES['file']['size'] <= $maxsize) {

            $newname = md5_file($_FILES['file']['tmp_name']).'.'.$matches[1];

            move_uploaded_file($_FILES['file']['tmp_name'], $filedir.'/'.$newname);

            $linkurl = 'http://'.$_SERVER['HTTP_HOST'].preg_replace('/\/([^\/]+?)$/', '/', $_SERVER['PHP_SELF']).'#'.$newname;

            $imgurl = 'http://'.$_SERVER['HTTP_HOST'].preg_replace('/\/([^\/]+?)$/', '/', $_SERVER['PHP_SELF']).$filedir.'/'.$newname;
			$alt = $_POST["alt"];

            print '<h2>Picture Uploaded Successfuly!!!!</h2> <p id="codes">
         
          <img src="'.$imgurl.'" height="300" alt="Uploaded Picture" >

            <label for="codebb">BBCode:</label>
            <input type="text" id="codebb" value="[URL='.$siteurl.'][IMG]'.$imgurl.'[/IMG][/URL]" onclick="javascript:this.focus();this.select();" readonly="true" /><br />
            <label for="codehtml">HTML Code: </label>
            <input type="text" id="codehtml" value=\'&lt;a href="'.$siteurl.'"&gt;&lt;img src="'.$imgurl.'" alt="'.$alt.'" /&gt;&lt/a&gt;\' onclick="javascript:this.focus();this.select();" readonly="true" /><br />
            <label for="codedirect">Direct Link:</label>
            <input type="text" id="codedirect" value="'.$imgurl.'" onclick="javascript:this.focus();this.select();" readonly="true" /></p>';

        } else 

            print '<p>Sorry, Max Picture size is 10Mb</p>';

    } else

        print '<p>Sorry, Filetype Not Allowed</p>';

}

?>
</center>
<center>
<form enctype="multipart/form-data" action="<?php print preg_replace('/\/([^\/]+?)$/', '/', $_SERVER['PHP_SELF']) ?>" method="post">

<label for="file">Picture Upload: </label><input type="file" name="file" id="file" />(Max Pic. Size is 10MB)<br />
<label for="alt">ALT Text:</label><input type="text" name="alt" id="alt" /><br><br>

<input name="submit" type="submit" value="Upload Picture...." class="button"> 

</form>
</center>
			
<?
$page  = $_GET['p'];

if ($page == Null)
{

}
else if ($page == contact)
include("contact.php");
else
{

}


?>


		</div>

		

			

		<div id="sidebar">

			


				

		<?php
		include('links.php');
		?>


				

					

		</div>

				


	</div>

					



	<div id="footer">

			

		<p>

		<?php print $copyright; ?>		

   	</p>

				

	</div>	




</div>


</body>

</html>
<?php
include('counter.php');
?>

