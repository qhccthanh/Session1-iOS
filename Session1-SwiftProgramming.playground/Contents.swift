import UIKit

// 1. Khởi tạo biến và hằng số
// a. (let/var) (tên biến):(Kiểu) = (Giá trị)
// b. (let/var) (tên biến) = (Giá trị)

//let a = 5
//a = 6
//
//var a = 5
//a = 6

let a = 6
let b: Int = 5
let c: Double = 5.0

var aNil: Int?
// print(aNil)
// 1
if let aNil = aNil {
    print(aNil)
}
// 2
guard let aNil = aNil else {
    return
}

print(aNil)


// Tuples

let tuple1: (Int, Int) = (1,2)
print(tuple1)
print(tuple1.0)
print(tuple1.1)

let tuple2: (a: Int, b: Int)?
print(tuple2)
print(tuple2.a)
print(tuple2.b)


// Khởi tạo kiểu String
var string = "ABCXTZ"
print(string)
print(a)
print(b)
print(c)

// Toán tử
// Toán tử điều kiện tam phân
let abc = a > 0 ? "Đúng" : "Sai"
print(abc)

var abcdd: Int?
// Int? + Int
print((abcdd ?? 0) + 1)

// Chuỗi ký tự
var chuỗi = ""
var abcd = String(format: "abc %d", 1)
var chuoiTest = "Ma khuyen mai %@ giam gia %d từ %d đến %d"
var chuoitTestA = "Ma khuyen mai \(abcd) giam gia \(a) từ \(a) đến \(a)"
// \({tên biến / giá trị}) vào trong chuỗi
print(chuoitTestA.replacingOccurrences(of: "Ma khuyen mai", with: "Khuyến mãi"))

print(chuỗi)
print(abcd)

// Collection
// 1. Array / Stack / Queue
// []
var array = [1,2,3,5,6,7]
print(array)
print(array[0])
// Insert
array.insert(8, at: 6)
// Remove
array.remove(at: 0)
// Find
array.contains(9)
array.contains(2)

// 2. Set
var set1 = Set(arrayLiteral: 1,2,3,4,5)
var set2 = Set(arrayLiteral: 4,5,7,8,9)
set1 = set1.intersection(set2)
print(set1)

// 3. Dictionary


// Control Flow
// While
var countingWhile = 0
while countingWhile < 5 {
    countingWhile += 1
    print(countingWhile)
}

// For
for i in 1..<10 {
    print(i)
}

for a in array {
    print(a)
}

// Repeat-While
repeat {
    countingWhile += 1
} while countingWhile < 10

// If/else

// Switch

// Function

//Khai báo và gọi
// func [tên function]([Biến]?) -> [Kiểu dữ liệu trả về]?

//Function có kiểu trả về và không kiểu trả về
func xuatChuA() {
    print("A")
}
xuatChuA()

func xuatChuA() -> String {
    return "A"
}
print(xuatChuA())

//Function nhận tham số
func cong2So(a: Int, b: Int) -> Int {
    return a + b
}

func cong2So2(a: Int = 2, b: Int = 3) -> Int {
    return a + b
}
cong2So2(a: 5, b: 6)

func abcd(_ a: Int) {

}
abcd(2)

//Function nhận nhiều tham số

//Function inout
var functionInout = 5
func functionIntOutExc(inout value: Int) {
    value += 1
}
print(functionIntOutExc(value: functionInout))

//Biến bằng Function
var bienFunction = functionIntOutExc
bienFunction(a)

// Enum
//Enum mặc định
//Enum với giá trị định sẳn
enum Model: String {
    case mac = "mac"
    case hp = "hp"
    case dell = "dell"

    func isMac() -> Bool {
        switch self {
        case .mac:
            return true
        default:
            return false
        }
    }

    var isMac2: Bool {
        switch self {
        case .mac:
            return true
        default:
            return false
        }
    }
}
var modelMayTinhCuaToi: Model = .dell
modelMayTinhCuaToi = .hp
var modelMayTinhCuaToi: Model? = Model(rawValue: "mac")
modelMayTinhCuaToi.isMac()
modelMayTinhCuaToi.isMac2

//Enum với tham số
enum Model2 {
    case mac(String)
    case dell(Int)
    case hp
}
var modelMayTinhCuaToi2: Model2 = .mac("Mac OS 10")
var modelMayTinhCuaToi3: Model2 = .dell(5)

switch modelMayTinhCuaToi2 {
case .mac(let os):
    print(os)
default:
    break
}

// Struct / Class
// [Keyword/từ khoá/ Struct/ class] [Tên Struct/ Class]

// 1. Property
// 2. Function
// 3. Hàm khởi tạo
// 4. Hàm huỷ
// 5. Kế thừa

struct SLop {

    // 1
    var siSo: Int

    func laySiSo() -> Int {
        return siSo
    }

    init(siSo: Int) {
        self.siSo = siSo
    }

    deinit {

    }
}

let sLop = SLop(siSo: 10)
print(sLop.laySiSo())

// filepirvate
// open
// public
// private
// readonly
// final

class CLop {
    // 1
    var siSo: Int
    var ten: String?

    // Hàm tạo
    init(siSo: Int) {
        self.siSo = siSo
    }

    func layTenCuaLop() -> String {
        return ten ?? "Không có tên"
    }

    deinit {

    }
}
CLop(siSo: 15)

// 5 Kế thừa
class CLopIOS: CLop {

    var level: Int = 1

    func hamlopIOS() -> Int {
        return self.hamlopIOS * self.siSo // Sỉ số thuộc lớp cha và có thể gọi đc từ lớp con
    }
}

// DEMO OOP

class ConVat {

    var tuoi: Int
    var ten: String

    init(tuoi: Int, ten: String) {
        self.tuoi = tuoi
        self.ten = ten
    }

    func inThongTin() -> String {
        return "Tuổi: \(tuoi) - Tên: \(ten)"
    }
}

class ConNguoi: ConVat {

    var soSMND: String

    init(tuoi: Int, ten: String, soCMND: String) {

        self.soSMND = soCMND
        super.init(tuoi: tuoi, ten: tren)
    }

    override func inThongTin() -> String {
        let layStringCuaConVat = super.inThongTin()

        return layStringCuaConVat + " CMND: \(self.soSMND)"
    }
}

class ConCho: ConVat {

    var mauLong: String

    override init(tuoi: Int, ten: String, mauLong: String) {
        self.mauLong = mauLong
        super.init(tuoi: tuoi, ten: ten)
    }

    override func inThongTin() -> String {
        return super.inThongTin()
    }

}

let conNguoi = ConNguoi(tuoi: 22, ten: "Thành", soCMND: "1234566789")
let conVat = ConVat(tuoi: 23, ten: "ABCDX")

print(conNguoi.inThongTin())
// Tuổi: 22 - Tên: Thành - CMND: 1234566789

print(conVat.inThongTin())
// Tuổi: 23 - Tên: ABCDX








let lopIOS = CLopIOS(siSo: 15)
