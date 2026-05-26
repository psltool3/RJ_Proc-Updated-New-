<?php

require('util/Connection.php');

 ?>

<script>

var pref_select = document.getElementById("warehousetype");

<?php
$query = "SELECT * FROM preferences ORDER BY name";
$result = mysqli_query($con,$query);

if($result) {
    while($row = mysqli_fetch_assoc($result)){
        echo 'var option = document.createElement("option");';
        echo 'option.text = "'.$row['name'].'";';
        echo 'option.value = "'.$row['name'].'";';
        echo 'pref_select.add(option);';
    }
}
?>
</script>
