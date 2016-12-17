<?php
function Load( $category ) {
	echo "[ { \"id\": 1, \"rank\": 1, \"question\": \"one?\",   \"answer\": \"yes\"},
			{ \"id\": 2, \"rank\": 3, \"question\": \"two?\",   \"answer\": \"no\" },
   			{ \"id\": 3, \"rank\": 2, \"question\": \"three?\", \"answer\": \"yup\" }]";
}

$server_ip = $_SERVER['REMOTE_ADDR'];
if( isset( $_POST['category'] ) ) {
	if ( $server_ip != "70.59.146.107" )
		echo $server_ip;
	else
		Load( $_POST['category'] );
}
?>
