<?php

require('../util/Connection.php');
require('../structures/Preference.php');
require('../util/SessionFunction.php');
require('../structures/Login.php');
require('../util/Security.php');
require ('../util/Encryption.php');
require('../util/Logger.php');
$nonceValue = 'nonce_value';

if(!SessionCheck()){
	return;
}

require('Header.php');


function formatName($name) {
    if(preg_match('/[^a-zA-Z0-9\s]/', $name)){
        echo "Error : Name contains invalid characters. Only alphanumeric and spaces are allowed.";
		exit();
    }
    $name = ucwords(strtolower($name));
    return trim($name);
}

$person = new Login;
$person->setUsername($_POST["username"]);

$Encryption = new Encryption();
$person->setPassword($Encryption->decrypt($_POST["password"], $nonceValue));

if($_SESSION['user']!=$person->getUsername()){
	echo "User is logged in with different username and password";
	return;
}

$query = "SELECT * FROM login WHERE username='".$person->getUsername()."'";
$result = mysqli_query($con,$query);
$row = mysqli_fetch_assoc($result);
$numrows = mysqli_num_rows($result);

$dbHashedPassword = $row['password'];
if(password_verify($person->getPassword(), $dbHashedPassword)){
    $Preference = new Preference;

	$Preference->setName(formatName(str_replace("'","",$_POST['name'])));
	$Preference->setPreference(str_replace("'","",$_POST['preference']));
	$Preference->setId(str_replace("'","",$_POST['uid']));

	$query = $Preference->checkPreference($Preference);
	$result = mysqli_query($con, $query);
	$numrows = mysqli_num_rows($result);
	if($numrows>0){
		echo "Error : Preference value already taken by another entry";
		exit();
	}

	$query = $Preference->update($Preference);
	$result = mysqli_query($con,$query);

	mysqli_close($con);

	if($result){
		$filteredPost = $_POST;
		unset($filteredPost['username'], $filteredPost['password']);
		writeLog("User ->" ." Preference Edit->". $_SESSION['user'] . "| Requested JSON -> " . json_encode($filteredPost));
		echo "<script>window.location.href = '../Preference.php';</script>";
	}
	else{
	echo "Error : in update";
	}
}else{
	echo "Error : Password or Username is incorrect";
}

?>
<?php require('Fullui.php');  ?>
