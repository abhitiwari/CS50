<?php

    // configuration
    require("../includes/config.php"); 
    setlocale(LC_MONETARY, 'en_US');

    // if form was submitted
    if ($_SERVER["REQUEST_METHOD"] == "POST")
    {      
          $symb = $_POST["symbol"];
          $data = [];
      if(empty($symb))
      {
        apologize("You must provide a symbol");
      }
      
      else
      {
        $stock = lookup($symb);
        if($stock!==false)
          {
             $data[] = [
            "name" => $stock["name"],
            "symbol" => $stock["symbol"],
            "price" => money_format('%(10n',number_format( $stock["price"], 2, '.', '') )
            ];
           render("quote_view.php", ["data" => $data, "title" => "quote" ]);
          }
         else
         { 
           $message = "Symbol not found";
           render("apology.php", ["message" => $message]);
         }
      }
      
      
  }
  
  
  else
  {
   render("quote_form.php", ["title" => "quote" ]);
  }    
  
  ?>
