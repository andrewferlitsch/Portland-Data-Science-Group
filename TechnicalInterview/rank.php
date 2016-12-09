<?php
if( isset( $_POST['category'] ) ) {
	$category = $_POST['category'];
	$question = $_POST['question'];
	
	$txt = "{ category:\"" . $category . "\"," . PHP_EOL . "question:\"" . $question . "\"," . PHP_EOL . "rank:\"" . $rank . "\"},";
	$file = file_put_contents("rank.json", $txt.PHP_EOL , FILE_APPEND | LOCK_EX);
	fclose( $file );
	
	echo "Submitted";
}
?>