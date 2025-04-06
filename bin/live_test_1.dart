class Student_Result {
  String student_name;
  String s;
  List<int> scores;

  Student_Result(this.student_name, this.s,this.scores);

  double get average_result {
    int sum = 0;
    for (int score in scores) {
      sum = sum + score;
    }
    double avg = sum / scores.length;
    return double.parse(avg.toStringAsFixed(2));
  }
}

void main() {
  List<Student_Result> students = [
    Student_Result("Alice", "scores", [85, 90, 78]),
    Student_Result("Bob","scores", [88, 76, 95]),
    Student_Result("Charlie","scores", [90, 92, 85]),
  ];

  students.sort((a, b) => b.average_result.compareTo(a.average_result));

  Map<String, double> final_result = {
    for (var student in students) student.student_name: student.average_result
  };

  print(final_result);
}
