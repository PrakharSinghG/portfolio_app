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
    studentName: 'John Smith',
    summaryText: 'Rangkuman dengan pemahaman tinggi terhadap teks asli.',
    teacherName: 'Mr. Smith',
    imageUrl: 'assets/1.png',
    grade: Grade.A,
  ),
  StudentSummary(
    studentName: 'Emily Johnson',
    summaryText: 'Siswa merangkum cerita panjang dengan efektif.',
    teacherName: 'Mrs. Johnson',
    imageUrl: 'assets/2.png',
    grade: Grade.B,
  ),
  StudentSummary(
    studentName: 'Michael Brown',
    summaryText: 'Rangkuman Bahasa Sunda dengan gaya yang bagus.',
    teacherName: 'Mr. Brown',
    imageUrl: 'assets/3.png',
    grade: Grade.A,
  ),
  StudentSummary(
    studentName: 'Jessica Williams',
    summaryText: 'Ringkasan teks panjang menjadi singkat.',
    teacherName: 'Ms. Williams',
    imageUrl: 'assets/4.png',
    grade: Grade.C,
  ),
  StudentSummary(
    studentName: 'David Miller',
    summaryText: 'Siswa merangkum cerita panjang dengan efektif.',
    teacherName: 'Mr. Miller',
    imageUrl: 'assets/5.png',
    grade: Grade.B,
  ),
  StudentSummary(
    studentName: 'Sophia Davis',
    summaryText: 'Rangkuman singkat dalam Bahasa Sunda.',
    teacherName: 'Mrs. Davis',
    imageUrl: 'assets/4.png',
    grade: Grade.A,
  ),
];

enum Grade { A, B, C, D, E, F }
