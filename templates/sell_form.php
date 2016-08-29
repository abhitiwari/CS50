<form action="sell.php" method="post">
    <fieldset>
     <div class="form-group">
 
     <select class="form-control" name="symbol">
      <option value = ' '>  </option>
      
       <?php
   
     foreach ($values as $val)
     {   
     printf("<option value = $val> $val </option>");
     }  
      
     ?> 
      
      </select>
          
       </div>
        
        <div class="form-group">
            <button type="submit" class="btn btn-default">Sell</button>
        </div>
      </fieldset>
</form>   


   


