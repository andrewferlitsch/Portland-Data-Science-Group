<?php
if( isset( $_POST['category'] ) ) {
	$category = $_POST['category'];
	$id       = $_POST['id'];
	$answer   = $_POST['answer'];
	
	$txt = "{ category:\"" . $category . "\"," . PHP_EOL . "id:\"" . $id . "\"," . PHP_EOL . "answer:\"" . $answer . "\"},";
	$file = file_put_contents("better.json", $txt.PHP_EOL , FILE_APPEND | LOCK_EX);
	fclose( $file );
	
	echo "Submitted";
}
?>