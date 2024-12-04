$myHashTable = @{
    name = "Mino"
    age = 10
    wight = 2.35
    gender = $true
}

$myHashTable.GetType()

# hashtable is unorder 
Write-Host "---------Get Keys---------"
$myHashTable.Keys

Write-Host "---------Get Values---------"
$myHashTable.Values

Write-Host "------------------"
$age1 = $myHashTable.age
$age2 = $myHashTable["age"]
$age1
$age2

Write-Host "---------Get Contain Key---------"
$check = $myHashTable.ContainsKey("age")
$check

Write-Host "---------Get Contain Value---------"
$check = $myHashTable.ContainsValue(100)
$check

Write-Host "---------Add New Key Value HashTable---------"
$myHashTable.Add("newKey", "newValue")
$myHashTable.newKey1 = "newKey1"
$myHashTable["newKey2"] = "newKey2"
$myHashTable

Write-Host "---------Change The Value Of The Key In HashTable---------"
$myHashTable["newKey2"] = "test"
$myHashTable

Write-Host "---------Remove The Key In HashTable---------"
$myHashTable.Remove("age")
$myHashTable