<?php
include "db.php";

function Load( $category ) {
	global $db;
	
	$data = "[";
	
	$rows = $db->Load( $category );
	foreach ( $rows as $row ) {
		$id       = $row[ 'id' ];
		$question = $row[ 'question' ];
		$answer   = $row[ 'answer' ];
		$rank     = $row[ 'rank' ];
		
		$data .= "{ \"id\": $id, \"rank\": $rank, \"question\": \"$question\", \"answer\": \"$answer\" },";
	}
	
	$data .= "{}]";
	echo $data;
}

$server_ip = $_SERVER['REMOTE_ADDR'];
if( isset( $_POST['category'] ) ) {
	if ( $server_ip != "70.59.146.107" )
		echo $server_ip;
	else
		Load( $_POST['category'] );
}
?>
