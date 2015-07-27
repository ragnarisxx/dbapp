<table>
<?php
    $sql=$db->prepare('SELECT * FROM TblCompany WHERE category=:category');
    $sql->execute(array(':category'=>$_REQUEST[searchcategory]));

    while ($row=$sql->fetch())
    {
       //Here is where you will loop through all the results for your search. If 
       //you had for example for each product name, price, and category, 
       //you might do the following
       echo "<tr><td>$row[name]</td><td>";
    }
?>
</table>