<?php
$con=mysqli_connect('localhost','root','','youtube');
$sub_sql="";
$toDate=$fromDate="";
if(isset($_POST['submit'])){
	$from=$_POST['from'];
	$fromDate=$from;
	$fromArr=explode("/",$from);
	$from=$fromArr['2'].'-'.$fromArr['1'].'-'.$fromArr['0'];
	$from=$from." 00:00:00";
	
	$to=$_POST['to'];
	$toDate=$to;
	$toArr=explode("/",$to);
	$to=$toArr['2'].'-'.$toArr['1'].'-'.$toArr['0'];
	$to=$to." 23:59:59";
	
	$sub_sql= " where added_on >= '$from' && added_on <= '$to' ";
}

$res=mysqli_query($con,"select * from contact_us $sub_sql order by id desc");
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Contact Us</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>

  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

</head>
<body>

<div class="container">
  <br/><h1>Contact Us</h1><br/>
  
  <div>
	<form method="post">
		<label for="from">From</label>
		<input type="text" id="from" name="from" required value="<?php echo $fromDate?>">
		<label for="to">to</label>
		<input type="text" id="to" name="to" required value="<?php echo $toDate?>">
		<input type="submit" name="submit" value="Filter">
	</form>
  </div>
  <br/><br/>
  <?php if(mysqli_num_rows($res)>0){?>
  <table class="table table-bordered">
    <thead>
      <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Email</th>
		<th>Added On</th>
      </tr>
    </thead>
    <tbody>
      <?php while($row=mysqli_fetch_assoc($res)){?>
      <tr>
        <td><?php echo $row['id']?></td>
        <td><?php echo $row['name']?></td>
		<td><?php echo $row['email']?></td>
		<td><?php echo $row['added_on']?></td>
      </tr>
	  <?php } ?>
    </tbody>
  </table>
  <?php } else {
	echo "No data found";  
  }
  ?>
</div>
<script>
  $( function() {
    var dateFormat = "dd/mm/yy",
      from = $( "#from" )
        .datepicker({
          defaultDate: "+1w",
          changeMonth: true,
          numberOfMonths: 1,
		  dateFormat:"dd/mm/yy",
        })
        .on( "change", function() {
          to.datepicker( "option", "minDate", getDate( this ) );
        }),
      to = $( "#to" ).datepicker({
        defaultDate: "+1w",
        changeMonth: true,
        numberOfMonths: 1,
		dateFormat:"dd/mm/yy",
      })
      .on( "change", function() {
        from.datepicker( "option", "maxDate", getDate( this ) );
      });
 
    function getDate( element ) {
      var date;
      try {
        date = $.datepicker.parseDate( dateFormat, element.value );
      } catch( error ) {
        date = null;
      }
 
      return date;
    }
  } );
  </script>
</body>
</html>