# Set-StrictMode -Version latest #get error when out of bound
Set-StrictMode -Off

$myArray =@("test1", "test2", 4, 5)

# $myArray.GetType()

# $myArray.IsFixedSize

$myArray

$lengArr = $myArray.Length
$count = $myArray.Count

$lengArr
$count

$firstItem = $myArray[0]
$firstItem

$myArray[5]

$myArray = $myArray + "test3"
$myArray
$myArray.Count

$myArray = $myArray -ne "test1"
$myArray