<?php
include "db.php";

function Add( $category, $question, $answer, $rank ) {
	global $db;
	$db->Add( $category, $question, $answer, $rank )
}

$server_ip = $_SERVER['REMOTE_ADDR'];
if( isset( $_POST['category'] ) ) {
	if ( $server_ip != "70.59.146.107" )
		echo $server_ip;
	else
		Add( $_POST['category'], $_POST['question'], $_POST[ 'answer'], $_POST['rank'] );
}
?>