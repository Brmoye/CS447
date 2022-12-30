<?php
    require("header.php");

    displayHats();

    require("footer.php");

//----------------------------------------
function displayHats() 
{
    echo <<<HTMLBLOCK
		<table>
			<tr>
				<th>Color</th>
				<th>Size</th>
				<th>Type</th>
			</tr>

		HTMLBLOCK;

		require('credentials.php');
		$db = mysqli_connect($hostname, $username, $password, $database);
		if (mysqli_connect_error())
		{
			die("Unable to connect to database " . mysqli_connect_error());
		}

		$hats = mysqli_query($db, 'SELECT color,size,type FROM Hats ORDER BY id');
		if (!$hats)
		{
			die("Query failed: " . mysqli_error($db));
		}

		while ($row = mysqli_fetch_array($hats))
		{
			$color = $row[0];
			$size = $row[1];
			$type = $row[2];

			if ($background++ % 2 == 0)
			{
				echo "  <tr style=\background-color:white\">\n";
			}
			else
			{
				echo "  <tr style=\background-color:lightgrey\">\n";
			}

			echo <<<TABLEDATA
				<td>$color</td>
				<td>$size</td>
				<td>$type</td>
			</tr>

			TABLEDATA;
		}

		echo "</table>\n";

        echo "<a href='index.html'>Home</a>";

        mysqli_close($db);
}
 
?>
