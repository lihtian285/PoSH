Function Main
{


#AddParam2 2 2
AddParam 200 10
#$MIntX
#$MIntY
TakeValueFromMain
AddForEach $MIntX, $MIntY  #ForEach looping Function need to supply comma when you have more than single value

}

Function AddParam  #Way of using Function with Param and return the variable value to Global
{
    param ($intX, $intY)
    $intAnswer = $intX + $intY
    Write-host "The Answer is $intAnswer"
    Set-Variable -name MintX -Value $intX -Scope Global
    Set-Variable -name MintY -value $intY -Scope Global
}

Function TakeValueFromMain  #way of using Global Variable
{
#    param ($MIntX, $MIntY)
    $intAnswer2 = $MIntX * $MIntY
    Write-host "The Answer for TakeValueFromMain is $intAnswer2"

}

Function AddForEach ($intValues) #way of using Looping in Function
{
    ForEach ($item in $intValues)
    {
        $intAnswer += $item
    }
    Write-Host "The Answer for AddForEach is $intAnswer"

}


Main #To call the Main Function