<?php
if(isset($_POST['username'])){
    $username = $_POST['username'];
}
if(isset($_POST['password'])){
    $password = $_POST['password'];
}

$submit = isset($_POST['sub']);
$connection = mysqli_connect("localhost", "root", "", "loguser");

echo "Sign In";
echo "<br>";

    if($submit and $connection){
        $userQuery = "SELECT * FROM loguser WHERE username = '".$username."'";
        $userResult = mysqli_query($connection, $userQuery);
        $row = mysqli_fetch_array($userResult);    
        
        //User exist
        if($row and $row[password] == $password){
            header("Location:webShop.php?action=emptyall");

        }else{
            echo "Incorrect username or password";
        }
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Sign In</title></head>
<body>
    
    <!-- Till den metoden vi skickar den till -->
<form action="signIn.php" method="post">
    <input type="text" name ="username" placeholder="Enter username">
    <input type="password" name="password" placeholder="Enter password">
    <input type="submit" name="sub" value = "Sign in">
    </form>
</body>
</html>





  