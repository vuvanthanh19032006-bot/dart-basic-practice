import 'package:flutter/material.dart';

void main() {
  runApp(const DartBasicApp());
}

class DartBasicApp extends StatelessWidget {
  const DartBasicApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Thực hành Dart cơ bản',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blue,
      ),
      home: const DartBasicScreen(),
    );
  }
}

class DartBasicScreen extends StatelessWidget {
  const DartBasicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> results = [
      bai1ThongTinCaNhan(),
      bai2TinhToanCoBan(),
      bai3KiemTraChanLe(),
      bai4XepLoaiHocLuc(),
      bai5VongLap(),
      bai6DanhSachList(),
      bai7TinhBMI(),
      bai8ClassVaObject(),
    ];

    return Scaffold(
      backgroundColor: const Color(0xff0f172a),
      appBar: AppBar(
        backgroundColor: const Color(0xff1d4ed8),
        foregroundColor: Colors.white,
        title: const Text(
          'Thực hành Dart cơ bản',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(14),
        itemCount: results.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(bottom: 12),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(18),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.15),
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Text(
              results[index],
              style: const TextStyle(
                color: Color(0xff0f172a),
                fontSize: 15,
                height: 1.5,
              ),
            ),
          );
        },
      ),
    );
  }
}

String bai1ThongTinCaNhan() {
  String name = "Vũ Văn Thành";
  int age = 18;
  String major = "Lập trình máy tính";
  double score = 8.5;
  bool isStudent = true;

  return '''
Bài 1: In thông tin cá nhân

Họ tên: $name
Tuổi: $age
Ngành học: $major
Điểm trung bình: $score
Là sinh viên: $isStudent
''';
}

String bai2TinhToanCoBan() {
  int a = 20;
  int b = 6;

  return '''
Bài 2: Tính toán cơ bản

a = $a
b = $b
Tổng: ${a + b}
Hiệu: ${a - b}
Tích: ${a * b}
Thương: ${(a / b).toStringAsFixed(2)}
Chia lấy dư: ${a % b}
''';
}

String bai3KiemTraChanLe() {
  int number = 15;
  String result = number % 2 == 0 ? "số chẵn" : "số lẻ";

  return '''
Bài 3: Kiểm tra số chẵn / lẻ

$number là $result
''';
}

String bai4XepLoaiHocLuc() {
  double diem = 7.8;
  String rank;

  if (diem >= 8) {
    rank = "Giỏi";
  } else if (diem >= 6.5) {
    rank = "Khá";
  } else if (diem >= 5) {
    rank = "Trung bình";
  } else {
    rank = "Yếu";
  }

  return '''
Bài 4: Xếp loại học lực

Điểm: $diem
Học lực: $rank
''';
}

String bai5VongLap() {
  String result = "";

  for (int i = 1; i <= 10; i++) {
    result += "Số thứ $i\n";
  }

  return '''
Bài 5: Vòng lặp

In các số từ 1 đến 10:
$result
''';
}

String bai6DanhSachList() {
  List<String> subjects = [
    "Dart cơ bản",
    "Flutter",
    "Java",
    "Android",
    "Cơ sở dữ liệu",
  ];

  subjects.add("Thiết kế Web");

  String result = "";

  for (int i = 0; i < subjects.length; i++) {
    result += "${i + 1}. ${subjects[i]}\n";
  }

  return '''
Bài 6: Làm việc với List

Danh sách môn học:
$result
''';
}

String bai7TinhBMI() {
  double heightCm = 170;
  double weightKg = 60;

  double heightM = heightCm / 100;
  double bmi = weightKg / (heightM * heightM);

  String category;

  if (bmi < 18.5) {
    category = "Thiếu cân";
  } else if (bmi < 25) {
    category = "Bình thường";
  } else if (bmi < 30) {
    category = "Thừa cân";
  } else {
    category = "Béo phì";
  }

  return '''
Bài 7: Tính chỉ số BMI

Chiều cao: $heightCm cm
Cân nặng: $weightKg kg
BMI: ${bmi.toStringAsFixed(2)}
Kết luận: $category
''';
}

String bai8ClassVaObject() {
  Student student1 = Student("SV001", "Vũ Văn Thành", 18, 8.7);
  Student student2 = Student("SV002", "Nguyễn Minh Anh", 19, 7.2);

  return '''
Bài 8: Class và Object

Thông tin sinh viên 1:
${student1.showInfo()}

Thông tin sinh viên 2:
${student2.showInfo()}
''';
}

class Student {
  String id;
  String name;
  int age;
  double score;

  Student(this.id, this.name, this.age, this.score);

  String getRank() {
    if (score >= 8) {
      return "Giỏi";
    } else if (score >= 6.5) {
      return "Khá";
    } else if (score >= 5) {
      return "Trung bình";
    } else {
      return "Yếu";
    }
  }

  String showInfo() {
    return '''
Mã sinh viên: $id
Tên sinh viên: $name
Tuổi: $age
Điểm: $score
Xếp loại: ${getRank()}
''';
  }
}