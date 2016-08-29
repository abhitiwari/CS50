<?php

    // configuration
    require("../includes/config.php"); 
    
      
        $values = [];
    
        $rows = query("SELECT symbol FROM pset7.portfolio where id = ?", $_SESSION["id"]);
        
        foreach($rows as $row)
        {
           $values[] = $row["symbol"];
        }
          
            render("sell_form.php", ["values" => $values, "title" => "sell" ]);
    
    
    
    
   
   
      
   
              
    if ($_SERVER["REQUEST_METHOD"] == "POST")
       { 
             $symb = $_POST["symbol"];
        
          if(!empty($symb))
          {
             $stock = lookup($symb);
             $row = query("SELECT share FROM portfolio where id = ?", $_SESSION["id"]);
             $share = $row[0]["share"];
            $res = query("SELECT cash FROM pset7.users WHERE id = ?", $_SESSION["id"]);
            $Cash["cash"] = money_format('%(10n',number_format( $res[0]["cash"], 2, '.', '') );
           
           
          $price = $stock["price"];
          $num = $share;
          $tot_cash = $price * $num;
          $total_cash = money_format('%(10n',number_format( $tot_cash, 2, '.', ''));
           
            query("DELETE FROM portfolio WHERE id = ? AND symbol = ?", $_SESSION["id"], $symb); 
            query("UPDATE users SET cash = cash + $tot_cash WHERE id = ?", $_SESSION["id"]) ;
            
            $sell = "SELL";
              $time = time();
               $date = date('Y/m/d , H:i', $time);
              
              query("INSERT INTO history (id, transaction, date, symbol, share, price) VALUES(?, ?, ?, ?, ?, ?)", $_SESSION["id"], $sell, $date, $stock["symbol"], $share, $stock["price"]);     
              
                        
            redirect("/");
          }  
          
         
           
    }
       
 
    
 ?> 
  
  
  
  
  
  
  
