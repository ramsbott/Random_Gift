##Holiday Gift Give Away##
$List = Get-Content -Path ./UserList.txt
$Prizes = Get-Content -Path ./Prize.txt
$Employees = [System.Collections.ArrayList] ($List)

foreach ($Prize in $Prizes) {
    $Employee = Get-Random -InputObject $Employees
    Write-Host "
########## PRIZE ##########

          $Prize

##########################"
    sleep 2
    Write-Host ""
    Write-Host "The winner is ......"
    sleep 1
    Write-Host""
    Write-Host "$Employee" -ForegroundColor Green
    Write-Host ""
    Write-Host "Congrats to $Employee on your new $Prize"
    Write-Host ""
    echo "$Employee; $Prize" >> Winners.txt
    $Employees.Remove($Employee)
    Read-Host "Press ENTER to Continue"
    Write-Host "
    ----------------------------------------------------------------------------------------------------
    "
    }

Write-Host "
             /\
            <  >
             \/
             /\
            /  \
           /++++\
          /  ()  \
          /      \
         /~`~`~`~`\
        /  ()  ()  \
        /          \
       /*&*&*&*&*&*&\
      /  ()  ()  ()  \
      /              \
     /++++++++++++++++\
    /  ()  ()  ()  ()  \
    /                  \
   /~`~`~`~`~`~`~`~`~`~`\
  /  ()  ()  ()  ()  ()  \
  /*&*&*&*&*&*&*&*&*&*&*&\
 /                        \
/,.,.,.,.,.,.,.,.,.,.,.,.,.\
           |   |
          |`````|
          \_____/
 End of event. Happy Holidays
"
sleep 5
