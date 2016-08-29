<?php

    // configuration
    require("../includes/config.php");
   setlocale(LC_MONETARY, 'en_US');
     
    $rows = query("SELECT symbol,share FROM pset7.portfolio WHERE id = ?", $_SESSION["id"]);
    
     $res = query("SELECT cash FROM pset7.users WHERE id = ?", $_SESSION["id"]);
     $Cash["cash"] = money_format('%(10n',number_format( $res[0]["cash"], 2, '.', '') );
    
    
$positions = [];
foreach ($rows as $row)
{
    $stock = lookup($row["symbol"]);
    if ($stock !== false)
    {       
           $num = $row["share"];
           $price = $stock["price"];
           $tot = $num*$price;
           $total = money_format('%(10n',number_format( $tot, 2, '.', '') );
           
        $positions[] = [
            "name" => $stock["name"],
            "price" => money_format('%(10n',number_format( $stock["price"], 2, '.', '') ),
            "shares" => $row["share"],
            "symbol" => $row["symbol"],
            "total" => $total
        ];
    }
}

    
    // render portfolio
    render("portfolio.php", ["positions" => $positions, "Cash" => $Cash, "title" => "Portfolio"]);

?>
