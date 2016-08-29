<?php
     

    // configuration
    require("../includes/config.php"); 
     setlocale(LC_MONETARY, 'en_US');
    
    $positions = [];
    
    $rows = query("SELECT * FROM history WHERE id = ?", $_SESSION["id"]);
    
      foreach($rows as $row)
      {
         $positions[] = [
         "transac" => $row["transaction"],
         "date" => $row["date"],
         "symbol" => $row["symbol"],
         "share" => $row["share"],
         "price" => money_format('%(10n',number_format( $row["price"], 2, '.', '') ),
         
         ];
      }
     
    render("history_view.php", ["positions" => $positions, "title" => "history" ]);

    

?>
