<?php
include "db.php";

function Load( $category ) {
	global $db;
	
	$data = "[";
	
	$rows = $db->Load( $category );
	foreach ( $rows as $row ) {
		$id       = $row[ 'id' ];
		$question = str_replace( '"', '$quot;', $row[ 'question' ] );
		$answer   = str_replace( '"', '$quot;', $row[ 'answer' ] );
		$rank     = $row[ 'rank' ];
		
		$data .= "{ \"id\": $id, \"rank\": $rank, \"question\": \"$question\", \"answer\": \"$answer\" },";
	}
	
	$data .= "{}]";
	echo $data;
}

$server_ip = $_SERVER['REMOTE_ADDR'];
if( isset( $_GET['category'] ) ) {
	Load( $_GET['category'] );
}
?>
