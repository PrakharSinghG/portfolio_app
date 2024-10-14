// Student summary model
class StudentSummary {
  final String studentName;
  final String summaryText;
  final String teacherName;
  final String imageUrl;
  final Grade grade;

  StudentSummary({
    required this.studentName,
    required this.summaryText,
    required this.teacherName,
    required this.imageUrl,
    required this.grade,
  });
}

// Dummy static data
List<StudentSummary> studentSummaries = [
  StudentSummary(
    studentName: 'Al-Baigi Samaan',
    summaryText: 'Kemampuan Merangkum Tulisan',
    teacherName: 'BAHASA SUNDA',
    imageUrl: 'assets/1.png',
    grade: Grade.A,
  ),
  StudentSummary(
      studentName: 'Al-Baigi Samaan',
      summaryText: 'Kemampuan Merangkum Tulisan',
      teacherName: 'BAHASA SUNDA',
      imageUrl: 'assets/2.png',
      grade: Grade.A),
  StudentSummary(
      studentName: 'Al-Baigi Samaan',
      summaryText: 'Kemampuan Merangkum Tulisan',
      teacherName: 'BAHASA SUNDA',
      imageUrl: 'assets/3.png',
      grade: Grade.A),
  StudentSummary(
      studentName: 'Al-Baigi Samaan',
      summaryText: 'Kemampuan Merangkum Tulisan',
      teacherName: 'BAHASA SUNDA',
      imageUrl: 'assets/4.png',
      grade: Grade.A),
  StudentSummary(
      studentName: 'Al-Baigi Samaan',
      summaryText: 'Kemampuan Merangkum Tulisan',
      teacherName: 'BAHASA SUNDA',
      imageUrl: 'assets/5.png',
      grade: Grade.F),
];

enum Grade { A, B, C, D, E, F }
