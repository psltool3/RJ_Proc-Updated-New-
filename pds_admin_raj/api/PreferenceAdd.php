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
    // Allowing some special characters if needed, but following District pattern
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
$numrows = mysqli_num_rows($result);

if($numrows == 0){
	echo "Error : Password or Username is incorrect";
	return;
}

$Preference = new Preference;
$Preference->setId(uniqid());
$Preference->setName(formatName($_POST['name']));
$Preference->setPreference($_POST['preference']);

$query = $Preference->check($Preference);
$result = mysqli_query($con, $query);
$numrows = mysqli_num_rows($result);
if($numrows>0){
	echo "Error : Preference name already exist";
	exit();
}

$query = $Preference->checkPreference($Preference);
$result = mysqli_query($con, $query);
$numrows = mysqli_num_rows($result);
if($numrows>0){
	echo "Error : Preference value already taken by another entry";
	exit();
}

$query = $Preference->insert($Preference);
mysqli_query($con, $query);
mysqli_close($con);

$filteredPost = $_POST;
unset($filteredPost['username'], $filteredPost['password']);
writeLog("User ->" ." Preference added ->". $_SESSION['user'] . "| Requested JSON -> " . json_encode($filteredPost));

echo "<script>window.location.href = '../Preference.php';</script>";

?>
<?php require('Fullui.php');  ?>
