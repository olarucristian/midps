<?php
// declare values
$contact_email = $_POST['EmailAddress'];
$contact_subject = $_POST['Subject'];
$contact_name = $_POST['FullName'];
$contact_message = $_POST['Message'];
$mydate = date ( 'l, F d Y g:i A',time()+240 );

// where to send e-mail to
include ("config.php");


// e-mail subject
$subject = "Message submitted using Contact Us form";

// e-mail message
$message = "You have received a contact message:\r\n"

."----------------------------------------------------------------\r\n"
."Contact Name: $contact_name\r\n"
."Subject: $contact_subject\r\n"
."Submitted: $mydate\r\n"
."From IP: {$_SERVER['REMOTE_ADDR']}\r\n\r\n"
."Message: $contact_message\r\n"
."Form Address: {$_SERVER['SERVER_NAME']}{$_SERVER['REQUEST_URI']}";

$headers = "From: $contact_name <$contact_email>\n"
."Reply-To: $contact_email\n"
."X-Mailer: PHP/".phpversion();


if(empty($contact_name) || empty($contact_email) || empty($contact_subject) || empty($contact_message)) {
echo '
<form method="post" action="">
<table id="Form-Details">
<tbody>
<tr><td>Name:</td><td><input type="text" name="FullName" size="20" /></td>
<td>Subject:</td><td><input type="text" name="Subject" size="20" /></td></tr>
<tr><td>Email:</td><td colspan="3"><input type="text" name="EmailAddress" size="20" /></td></tr>
<tr><td colspan="4">Message:</td></tr>
<tr><td colspan="4"><textarea rows="6" name="Message" cols="47" class="input"></textarea></td></tr>
<tr><td colspan="4" align="center"><input type="reset" value="Reset" class="button" /> <input type="submit" value="Send" class="button "/></td></tr>
</tbody>
</table>
</form>';
} elseif(!ereg("^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,3})$", $contact_email)) {
echo "<p>ERROR: Please enter a valid e-mail address.</p>";
} else {
mail( $to, $subject, $message, $headers );
echo "<h3>Message Sent!</h3><p>Dear $contact_name,<br /><br />We will get back to you as soon as possible using $contact_email.";
}

echo "<center><b><h1><a href='/'>Close Contact Form</a></h1></b></center>";
?>
