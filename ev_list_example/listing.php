<?php

  require('header.php');

  displayList();

  require('footer.php');

// ----------------------------------------------------------------------
function displayList()
{

  $background = 0;

  echo <<<HTMLBLOCK
  <table>
    <tr>
      <th>Name</th>
      <th>Production Years</th>
      <th>Range</th>
    </tr>

HTMLBLOCK;

  require("credentials.php");
  $db = mysqli_connect($hostname, $username, $password, $database);
  if (mysqli_connect_errno())
    die("Unable to connect to database " . mysqli_connect_error());

  $cars = mysqli_query($db,'SELECT name,productionYears,miles FROM cars ORDER BY productionYears');
  if (!$cars)
    die("Query failed: " . mysqli_error($db));

  while ($row = mysqli_fetch_array($cars))
  {
    $name = $row[0];
    $prodYears = $row[1];
    $range = $row[2];
    if ($background++ % 2 == 0)
      echo "    <tr style=\"background-color:white\">\n";
    else
      echo "    <tr style=\"background-color:lightgrey\">\n";

    echo <<< TABLEDATA
      <td>$name</td>
      <td>$prodYears</td>
      <td>$range</td>
    </tr>

TABLEDATA;
  }

  echo "  </table>\n";

  mysqli_close($db);
}

?>
