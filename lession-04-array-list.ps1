$myList1=[System.Collections.ArrayList]@()
$myList2= New-Object -TypeName System.Collections.ArrayList

$myList1.GetType()
$myList2.GetType()
$myList2.IsFixedSize
Write-Host "-----------------------"
[void]$myList2.Add("test1")
[void]$myList2.Add("test2")
[void]$myList2.Add("test3")
$myList2.AddRange(@("test4","test5","test6","test2"))
$myList2.Count
Write-Host "-----------------------"
$myList1[1]
$myList2[1]
$myList2[7] # not print because it null
$myList2.Remove("test2") # only remove first instance in array list
$myList2
Write-Host "-----------------------"
# remove at the index
$myList2.RemoveAt(4)
$myList2
Write-Host "-----------------------"
# remove range index 0 to 2
$myList2.RemoveRange(0,2)
$myList2
Write-Host "-----------------------"
$array=@() # 28s when sum 0 to 50000
Measure-Command -Expression {
    @(0..50000).ForEach({$array+=$_})
}

# 10s when sum 0 to 50000
$arrayList = New-Object -TypeName System.Collections.ArrayList
Measure-Command -Expression {
    @(0..50000).ForEach({$arrayList.Add($_)})
}

Measure-Command -Expression{
    $arrayList.AddRange(@(0..50000))
}