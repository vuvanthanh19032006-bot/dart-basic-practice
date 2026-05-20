void main() {
  // ===== BÀI 1 =====
  print("===== BÀI 1: THÔNG TIN SINH VIÊN =====");

  String ten = "Nguyen Van A";
  var tuoi = 20; // var
  final double diemTB = 8.5; // final
  const bool totNghiep = true; // const

  print("Tên: $ten");
  print("Tuổi: $tuoi");
  print("Điểm trung bình: $diemTB");
  print("Tốt nghiệp: $totNghiep");

  // ===== BÀI 2 =====
  print("\n===== BÀI 2: PHÉP TOÁN =====");

  int a = 10;
  double b = 2.5;

  print("Cộng: ${a + b}");
  print("Trừ: ${a - b}");
  print("Nhân: ${a * b}");
  print("Chia: ${a / b}");

  // ===== BÀI 3 =====
  print("\n===== BÀI 3: KIỂM TRA ĐẬU/RỚT =====");

  String hoTen = "Tran Van B";
  double diem = 6.0;

  bool dau = diem >= 5;

  if (dau) {
    print("$hoTen: Sinh viên đậu");
  } else {
    print("$hoTen: Sinh viên rớt");
  }

  // ===== BÀI 4 =====
  print("\n===== BÀI 4: LIST =====");

  List<int> list = [1, 2, 3, 4, 5];

  print("Danh sách: $list");
  print("Phần tử đầu: ${list.first}");
  print("Phần tử cuối: ${list.last}");

  int tong = 0;
  for (int i in list) {
    tong += i;
  }
  print("Tổng: $tong");

  // ===== BÀI 5 =====
  print("\n===== BÀI 5: MAP =====");

  Map<String, dynamic> sv = {
    "name": "Le Van C",
    "age": 21,
    "gpa": 7.5
  };

  print("Toàn bộ Map: $sv");
  print("Tên: ${sv["name"]}");
  print("Tuổi: ${sv["age"]}");
  print("GPA: ${sv["gpa"]}");

  // ===== BÀI 6 =====
  print("\n===== BÀI 6 =====");
  hello();

  // ===== BÀI 7 =====
  print("\n===== BÀI 7 =====");
  print("Tổng 2 số: ${tinhTong(3, 4)}");

  // ===== BÀI 8 =====
  print("\n===== BÀI 8 =====");
  print("Arrow function: ${tinhTong2(5, 6)}");

  // ===== BÀI 9 =====
  print("\n===== BÀI 9 =====");
  print("Tổng list: ${tinhTongList([1, 2, 3, 4, 5])}");

  // ===== BÀI 10 =====
  print("\n===== BÀI 10 =====");

  SinhVien sv1 = SinhVien("Nguyen Van D", 20, 8.0);
  SinhVien sv2 = SinhVien("Tran Thi E", 21, 9.0);

  sv1.hienThiThongTin();
  sv2.hienThiThongTin();
}

// ===== BÀI 6 =====
void hello() {
  print("Hello Dart");
}

// ===== BÀI 7 =====
int tinhTong(int a, int b) {
  return a + b;
}

// ===== BÀI 8 =====
int tinhTong2(int a, int b) => a + b;

/*
So sánh:
- Hàm thường: dùng khi có nhiều dòng lệnh, logic phức tạp
- Arrow function: dùng khi hàm ngắn gọn, chỉ 1 dòng
*/

// ===== BÀI 9 =====
int tinhTongList(List<int> list) {
  int tong = 0;
  for (int i in list) {
    tong += i;
  }
  return tong;
}

// ===== BÀI 10 =====
class SinhVien {
  String name;
  int age;
  double gpa;

  // Constructor
  SinhVien(this.name, this.age, this.gpa);

  // Method
  void hienThiThongTin() {
    print("Tên: $name - Tuổi: $age - GPA: $gpa");
  }
}