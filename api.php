<?php
	//connection
	$conn = new mysqli('localhost', 'root', 'Password1', 'dbproduct');
 
	$action = 'fetch';
 
	if(isset($_GET['action'])){
		$action = $_GET['action'];
	}
 
	if($action == 'fetch'){
		$output = '';
		$sql = "SELECT * FROM members order by cat_id desc";
		$query = $conn->query($sql);
		 $cnt=1;
		while($row = $query->fetch_assoc()){
			$output .= "
				<tr>
					<td>". $cnt."</td>
					<td>".$row['cat_name']."</td>
					<td>".$row['description']."</td>
					<td><button class='btn btn-sm btn-danger delete_product' data-id='".$row['cat_id']."'>Delete</button></td>
				</tr>
			";
			$cnt=$cnt+1;
		}
 
		echo json_encode($output);
	}
 
	if($action == 'delete'){
		$id = $_POST['cat_id'];
		$output = array();
		$sql = "DELETE FROM members WHERE cat_id = '$cat_id'";
		if($conn->query($sql)){
			$output['status'] = 'success';
			$output['message'] = 'Member deleted successfully';
		}
		else{
			$output['status'] = 'error';
			$output['message'] = 'Something went wrong in deleting the member';
		}
 
		echo json_encode($output);
 
	}
 