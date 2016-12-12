<?php
if( isset( $_POST['category'] ) ) {
	$category = $_POST['category'];
	$id       = $_POST['id'];
	$rank     = $_POST['rank'];
	
	$txt = "{ category:\"" . $category . "\"," . PHP_EOL . "id:\"" . $id . "\"," . PHP_EOL . "rank:\"" . $rank . "\"},";
	$file = file_put_contents("rank.json", $txt.PHP_EOL , FILE_APPEND | LOCK_EX);
	fclose( $file );
	
	echo "Submitted";
}
?>