<?php
    require("header.php");

    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        processForm();
    } else {
        displayForm();
    }

    require("footer.php");

//----------------------------------------
function displayForm() {

    echo <<<HTMLFORM
	<p style="text-align: left;"><a href="index.html">Back</a></p>

	<form method="POST" action="add.php">
	    <label for="color">Hat color:</label>
	    <input type="input" name="color" required><br>
	    <label for="size">Hat size:</label>
	    <input type="input" name="size" required><br>
	    <label for="type">Hat type:</label>
	    <input type="input" name="type" required><p>
	    <input type="submit" value="Add Hat">
	</form>
HTMLFORM;

}

//----------------------------------------
function processForm() {

    require('credentials.php');
    $db = mysqli_connect($hostname, $username, $password, $database);
    if (mysqli_connect_error())
    {
        die("Unable to connect to database " . mysqli_connect_error());
    }

    
    $color=$_POST['color'];
    $size=$_POST['size'];
    $type=$_POST['type'];

    echo "<p>$color $size $type</p>";

    $hats = mysqli_query($db, "INSERT INTO Hats (color,size,type) VALUES ('$color', '$size', '$type')");
    
    if (!$hats)
    {
        die("Query failed: " . mysqli_error($db));
    }
    else
    {
        echo "<p>Success!</p>";
    }

    echo "<a href='index.html'>Home</a>";

    mysqli_close($db);
    
}
 
?>
