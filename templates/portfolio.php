 <table align="center" cellpadding="10">
 <tr>

    <td><a href="quote.php">Quote</a></td>
    <td><a href="buy.php">Buy</a></td>
    <td><a href="sell.php">Sell</a></td>
    <td><a href="history.php">History</a></td>
    <td><a href="password.php">Change Password</a></td>
    <td><a href="logout.php"><strong>Log Out</strong></a></td> <br>



</tr>
</table>
<br><br>
<table class="table table-striped" cellpadding="50">

    <thead>
        <tr>
           <td><b>Symbol</b></td>
            <td><b>Name</td></b>
            <td><b>Shares</td></b>
            <td><b>Price</td></b>
            <td><b>TOTAL</td></b>
        </tr>
    </thead>

 <tbody>
    <?php
             
             
            
        foreach ($positions as $position)
        {
            print("<tr>");
            print("<td>{$position["symbol"]}</td>");
            print("<td>{$position["name"]}</td>");
            print("<td>{$position["shares"]}</td>");
            print("<td>{$position["price"]}</td>");
            print("<td>{$position["total"]}</td>");
            
            print("</tr>");
        }
           
            
      print("<tr>");
       print("<td>CASH</td>");
       print("<td> </td>");
       print("<td> </td>");
       print("<td></td>");
        print("<td>{$Cash["cash"]}</td>");
     print("<tr>");
    ?>

    </tbody>

</table>


