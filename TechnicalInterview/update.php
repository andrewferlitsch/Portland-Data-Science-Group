<?php
include "db.php";

function Update( $id, $category, $question, $answer, $rank ) {
	global $db;
	$db->Update( $id, $category, $question, $answer, $rank );
}

$server_ip = $_SERVER['REMOTE_ADDR'];
if( isset( $_POST['category'] ) ) {
	if ( $server_ip != "70.59.146.107" )
		echo $server_ip;
	else
		Update($_POST['id'], $_POST['category'], $_POST['question'], $_POST[ 'answer'], $_POST['rank'] );
}
?>