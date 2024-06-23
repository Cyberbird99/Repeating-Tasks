for($i=0;$i -lt 10;$i++){
    Write-Output $i
}

#########
$myArray=@('John', 'Jim', 'Jenny')

for($i=0;$i -lt $myArray.Length;$i++){
    Write-Output $myArray[$i]
}
##
foreach($item in $myArray){
    Write-Output $item
}

####
$myArray=@('John', 'Jim', 'Jenny')

for($i=0;$i -lt $myArray.Length;$i++){
    $myArray[$i]+=' Brown'
}
$myArray
##
# in For loop you can add items to original array as above 'Brown' as last name
# but foreach doesn't add new items so the original array doesn't change as below.
# You can write added item with write-Output but it adds them to a new array
# So you have an original array and a new array with added items
# So original date is safe
$myArray=@('John', 'Jim', 'Jenny')
foreach($item in $myArray){
    $item+=' Test'
    Write-Output $item
}

$myArray

#WHILE LOOP


while((Get-Date).Minute -eq 27){
    Get-Date
}

#if you put $true for condition, while loop may run infinitively

# So we can put an input phrase for condition
# And modify the code

Write-Output "Welcome to PS world"
Write-Output "Enter 'q' to quit"

$inputphrase = Read-Host -Prompt "Please put in a phrase"
while($inputphrase -ne 'q'){
    Write-Output "You entered $inputphrase"
    $inputphrase = Read-Host -Prompt "Please put in a phrase"
}

