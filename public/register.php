        <?php

    // configuration
    require("../includes/config.php"); 

    // if form was submitted
    if ($_SERVER["REQUEST_METHOD"] == "POST")
    {      
           $user = $_POST["username"];
           $pass = $_POST["password"];
           $confirm = $_POST["confirmation"];
        // validate submission
        if (empty($user))
        {
            apologize("You must provide your username.");
        }
        else if (empty($pass))
        {
            apologize("You must provide your password.");
        }
        
        else if(empty($confirm) && $pass!=$confirm)
        {
          apologize("Password do not match.");
        }
        

        // query database for user
        $rows = query("INSERT INTO users(username,hash,cash) VALUES(?,?,10000.00)", $user ,crypt($pass));

          if($rows===false)
          {
            apologize("That username appears to be taken");
          }
          
          else
          {
            $rows = query("SELECT LAST_INSERT_ID() AS id");
            $id = $rows[0]["id"];
             // remember that user's now logged in by storing user's ID in session
                $_SESSION["id"] = $id;

                // redirect to portfolio
                redirect("/");
          }
          
       

        // else apologize
        apologize("Invalid username and/or password.");
    }
    else
    {
        // else render form
        render("register_form.php", ["title" => "register"]);
    }

?>


