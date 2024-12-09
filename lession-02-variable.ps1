$myVariableString = "Luong Chi Vi"

$myVariableInt = 12

$myVariableDouble = 5.2

$myVariableString
$myVariableInt
$myVariableDouble

$resultIntPlusDouble = $myVariableInt + $myVariableDouble
$resultIntPlusDouble

$result2 = $myVariableDouble - $myVariableInt
$result2

$result2 = $myVariableDouble * $myVariableInt
$result2

$result2 = $myVariableDouble / $myVariableInt
$result2

$result1 = $myVariableString + ' ' + $myVariableInt
$result1

$result4 = 9 % 4
$result4
$result4.GetType()

$myVariableBoolean = $true
$myVariableBoolean.GetType()

($result4 -eq $nullValue)

($nullValue -eq $null)

$currrentDate = Get-Date
$currrentDate

# Trong PowerShell, có một số loại biến khác nhau được phân loại dựa trên phạm vi (scope) và kiểu dữ liệu. Các loại biến chính bao gồm:

# ### 1. **Biến cục bộ (Local Variable)**
#    - Đây là loại biến chỉ tồn tại trong phạm vi của một hàm hoặc khối mã cụ thể. Khi ra ngoài phạm vi đó, biến sẽ không còn giá trị nữa.
#    - Được khai báo bằng cách sử dụng `$` (dấu đô la) và không có từ khóa đặc biệt nào.
#    - Ví dụ: `$x = 10`

# ### 2. **Biến toàn cục (Global Variable)**
#    - Biến toàn cục tồn tại trong toàn bộ phiên làm việc của PowerShell, bao gồm cả các hàm và tập lệnh (script).
#    - Được khai báo bằng cách sử dụng `$global:` để chỉ định phạm vi toàn cục.
#    - Ví dụ: `$global:x = 10`

# ### 3. **Biến trong phạm vi kịch bản (Script Variable)**
#    - Biến này chỉ có thể truy cập được trong phạm vi của một tập lệnh (script).
#    - Được khai báo với tiền tố `$script:`.
#    - Ví dụ: `$script:x = 10`

# ### 4. **Biến trong phạm vi chức năng (Function Variable)**
#    - Biến này tồn tại trong phạm vi của một hàm cụ thể và không thể truy cập từ bên ngoài hàm đó.
#    - Được khai báo với tiền tố `$function:`.
#    - Ví dụ: `$function:x = 10`

# ### 5. **Biến trong phạm vi đối tượng (Private Variable)**
#    - Biến này chỉ có thể được truy cập trong một đối tượng hoặc một lớp. Nó không thể được truy cập từ bên ngoài.
#    - Được khai báo bằng `$private:`.
#    - Ví dụ: `$private:x = 10`

# ### 6. **Biến tham chiếu (Automatic Variable)**
#    - Là các biến được PowerShell tự động tạo ra và quản lý để chứa các giá trị hoặc thông tin hệ thống trong suốt phiên làm việc.
#    - Ví dụ:
#      - `$?` - Trạng thái của lệnh trước đó (True nếu thành công, False nếu thất bại).
#      - `$LastExitCode` - Mã thoát của lệnh trước đó.
#      - `$null` - Giá trị rỗng, tương tự như `null` trong các ngôn ngữ khác.

# ### 7. **Biến đặc biệt (Special Variables)**
#    - Đây là các biến đặc biệt được PowerShell sử dụng để lưu trữ thông tin liên quan đến môi trường thực thi và phiên làm việc.
#    - Ví dụ:
#      - `$args` - Tham số được truyền vào trong hàm hoặc script.
#      - `$PSVersionTable` - Thông tin về phiên bản PowerShell.

# ### 8. **Biến mảng và đối tượng (Array and Object Variables)**
#    - PowerShell hỗ trợ kiểu dữ liệu mảng và đối tượng, các biến kiểu này có thể chứa nhiều giá trị.
#    - Ví dụ:
#      - `$array = @('apple', 'banana', 'cherry')`
#      - `$object = New-Object -TypeName PSObject -Property @{Name='John'; Age=30}`

# ### 9. **Biến kiểu từ điển (Hashtable)**
#    - Biến kiểu từ điển (Hashtable) là một dạng cấu trúc dữ liệu cho phép lưu trữ các cặp khóa - giá trị.
#    - Ví dụ: `$hashtable = @{ Key1='Value1'; Key2='Value2' }`

# ### Tổng kết:
# - PowerShell cung cấp nhiều loại biến tùy thuộc vào phạm vi và kiểu dữ liệu, bao gồm biến cục bộ, toàn cục, và các biến tự động, đặc biệt. Điều này giúp người dùng dễ dàng quản lý và truy cập dữ liệu trong các ngữ cảnh khác nhau khi lập trình trong PowerShell.