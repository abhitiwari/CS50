<?php

    // configuration
    require("../includes/config.php"); 

    // if form was submitted
    if ($_SERVER["REQUEST_METHOD"] == "POST")
    {
         $pass = $_POST["password"];
         $new =  $_POST["new"];
         $confirm = $_POST["confirmation"];
         
         
         if(!empty($pass) && !empty($new) && !empty($confirm))
         {
         
            $rows = query("SELECT * FROM users WHERE id = ?", $_SESSION["id"]);
             if (count($rows) == 1)
        {
            // first (and only) row
            $row = $rows[0];
            $user = $row["username"];
            $cash = $row["cash"];

            // compare hash of user's input against hash that's in database
            if (crypt($_POST["password"], $row["hash"]) == $row["hash"])
            {
                 if($new == $confirm)
                {
                   $cryp = crypt($new);
                   query("DELETE FROM users WHERE id = ?",  $_SESSION["id"]);
                   query("INSERT INTO users(id,username,hash,cash) VALUES(?,?,?,?)",  $_SESSION["id"], $user ,crypt($new), $cash);

               // query("UPDATE users SET hash = $cryp WHERE id = ?", $_SESSION["id"]); 
                    redirect("/");
                 
                }
                
                else
                {
                  apologize("Entered new passwords are not same");
                }
            }
            
            else 
            {
             apologize("Password do not match in the database");
            }
        }     
         
         }
          
        else
        apologize("Please fill all the fields");         
    
    }
    
    
      else
    {
        // else render form
        render("password_form.php", ["title" => " "]);
    }
    
    
    
    
    ?>
