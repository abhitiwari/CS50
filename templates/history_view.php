<div id="middle">
<table class="table table-striped" cellpadding="50">


    <thead>
        <tr>
            <td><b>Transaction</b></td>
            <td><b>Date/Time</b></td>
            <td><b>Symbol</b></td>
            <td><b>Shares</b></td>
            <td><b>Price</b></td>
        </tr>
    </thead>

    <tbody>
    
             <?php
        foreach ($positions as $position)
        {
            print("<tr>");
            print("<td>{$position["transac"]}</td>");
            print("<td>{$position["date"]}</td>");
            print("<td>{$position["symbol"]}</td>");
            print("<td>{$position["share"]}</td>");
            print("<td>{$position["price"]}</td>");
            
            print("</tr>");
        }
        
      ?>  
    
    </tbody>

</table>
            </div>
 
   
