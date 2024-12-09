import 'package:flutter/material.dart';

class BMIresult extends StatelessWidget {
  final int result;
  final int age;
  final bool isMale;
  const BMIresult(
      {super.key,
      required this.age,
      required this.isMale,
      required this.result});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 10, 100, 60),
        title: const Text(
          'BMI Result',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 25,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'GENDER : ${isMale ? "Male" : "Female"}',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 30,
              ),
            ),
            Text(
              'RESULT : $result',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 10, 100, 60),
                fontSize: 30,
              ),
            ),
            Text(
              'AGE : $age',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 30,
              ),
            ),
            Text(
              showResult(result) ?? "",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 10, 100, 60),
                fontSize: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }

  String? showResult(int result) {
    if (result < 16)
      return "النحافة الشديدة(ماشي بمحاليل)";
    else if (result >= 16 && result <= 17)
      return "النحافة المعتدلة(محتاج تتغذى)";
    else if (result > 17 && result <= 18.5)
      return "النجافة الخفيفة(انزل جيم)";
    else if (result > 18.5 && result <= 25)
      return "الوزن الطبيعي (عاااااش)";
    else if (result > 25 && result <= 30)
      return "زيادة الوزن(العب كارديو)";
    else if (result > 30 && result <= 35)
      return "السمنة من الفئة الأولى(تكميم معدة)";
    else if (result > 35 && result <= 40)
      return "السمنة من الفئة الثانية(تفجير معدة)";
    else if (result > 40)
      return "السمنة من الفئة الثالثة(مفيش أمل)";
    else
      return null;
  }
}
