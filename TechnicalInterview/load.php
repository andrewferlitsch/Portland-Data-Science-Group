<?php
$server_ip = $_SERVER['REMOTE_ADDR'];
if( isset( $_POST['category'] ) ) {
	echo $server_ip;
}
?>