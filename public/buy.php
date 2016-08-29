<?php

    // configuration
    require("../includes/config.php");
    
     setlocale(LC_MONETARY, 'en_US');
     
     
    // if form was submitted
    if ($_SERVER["REQUEST_METHOD"] == "POST")
    {      
          $symb = $_POST["symbol"];
          $share = $_POST["share"];
      if(empty($symb))
      {
        apologize("You must specify a stock to buy");
      }
      
      else if(empty($share))
      {
         apologize("You must specify number of shares to buy");
      }
      else if(!preg_match("/^\d+$/", $share))
      {
        apologize("Invalid number of shares.");
      }
      else
      {
          $stock = lookup($symb);
          if($stock!==false)
          {
          $res = query("SELECT cash FROM pset7.users WHERE id = ?", $_SESSION["id"]);
          $Cash["cash"] = money_format('%(10n',number_format( $res[0]["cash"], 2, '.', '') );
           
           
          $price = $stock["price"];
          $num = $share;
          $tot_cash = $price*$num;
          $total_cash = money_format('%(10n',number_format( $tot_cash, 2, '.', '') );
          
             if($total_cash <= $Cash["cash"])
             {
              query("INSERT INTO portfolio (id, symbol, share) VALUES( ?, ?, ?) ON DUPLICATE KEY UPDATE share = share + $share ", $_SESSION["id"], $stock["symbol"], $share);
              query("UPDATE users SET cash = cash - $tot_cash WHERE id = ?", $_SESSION["id"]) ; 
              $buy = "BUY";
              $time = time()-(5/2);
               $date = date('Y/m/d , h:i', $time);
              
              query("INSERT INTO history (id, transaction, date, symbol, share, price) VALUES(?, ?, ?, ?, ?, ?)", $_SESSION["id"], $buy, $date, $stock["symbol"], $share, $stock["price"]);     
              
                        

              redirect("/");
            }
            
            else
            {
             apologize("You can't afford that.");
            }
         }   
         
         else
         {
          apologize("Symbol not found");
         }
           
      }
      
  }
  
  else
  {
   render("buy_form.php", ["title" => "buy" ]);
  }    
  
  
  ?>
