<#In PowerShell, do-while and do-until are implemented to execute a code again and again 
until a certain condition is met. #>
#DO 
# 'do' executes once even if it's false

<#The Do-Until loop continues to loop while the condition is false. 
Do-While continues to loop while the condition is true. #>

do{
    Write-Output 'Hi'
}while($false)

Write-Output "Welcome to PS world"
Write-Output "Enter 'q' to quit"
do{
    $inputphrase = Read-Host -Prompt "Please put in a phrase"
    Write-Output "You entered $inputphrase"
}while($inputphrase -ne 'q')
# when you entered 'q', it'll execute that and exit as above
# But if you put if  inside the loop, then it'll exit without executing 'q'

Write-Output "Welcome to my application"
Write-Output "Enter 'q' to quit"
do{
    $inputphrase = Read-Host -Prompt "Please put in a phrase"
    if($inputphrase -ne 'q'){
        Write-Output "You entered $inputphrase"
    }
    
}while($inputphrase -ne 'q')

#####

Write-Output "Welcome to my application"
Write-Output "Enter 'q' to quit"
do{
    $inputphrase = Read-Host -Prompt "Please put in a phrase"
    
        Write-Output "You entered $inputphrase"
    
    
}until($inputphrase -eq 'q')


# do(){}while($inputphrase -ne 'q')
# do(){}until($inputphrase -eq 'q')