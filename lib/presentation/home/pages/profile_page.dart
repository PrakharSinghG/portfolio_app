library profile_page;

import 'package:flutter/material.dart';
import '../../../data/model/student_model.dart';
import '../widgets/components/floating_action_button_widget.dart';

import '../../../data/model/tab_model.dart';
import '../widgets/components/search_input.dart';
part '../widgets/components/app_bar.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with TickerProviderStateMixin {
  late final TabController _tabController;
  String query = '';
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }
  
  List<StudentSummary> get filteredSummaries {
    return studentSummaries.where((student) {
      final nameLower = student.studentName.toLowerCase();
      final summaryLower = student.summaryText.toLowerCase();
      final searchLower = query.toLowerCase();

      return nameLower.contains(searchLower) ||
          summaryLower.contains(searchLower);
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        appBar: _buildAppBar(context, _tabController),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: const FloatingActionButtonWidget(),
        body: Column(
          children: [
            SearchInput(
              initialQuery: query,
              onSearch: (value) {
                setState(() {
                  query = value;
                });
              },
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: filteredSummaries.length,
                itemBuilder: (context, index) {
                  final student = filteredSummaries[index];
                  return Card(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        color: Colors.grey, 
                        width: 1,
                      ),
                      borderRadius:
                          BorderRadius.circular(10), 
                    ),
                    child: Row(
                      children: [
                        ClipRRect(
                          clipBehavior: Clip.antiAlias,
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10)), 
                          child: Image.asset(
                            student.imageUrl,
                            width: constraints.biggest.width *
                                0.3, 
                            height: 120, 
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  student.summaryText,
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          student.teacherName,
                                          style: const TextStyle(fontSize: 16),
                                        ),
                                        Text(
                                          'Oleh ${student.studentName}',
                                          style: TextStyle(
                                              color: Colors.grey[600]),
                                        ),
                                      ],
                                    ),
                                    const Spacer(),
                                    Container(
                                      width: 60,
                                      height: 35,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: [
                                            Colors.yellow
                                                .shade800,
                                            Colors.yellow.shade600,
                                            Colors.yellow
                                                .shade400,
                                          ],
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                        ),
                                        borderRadius: BorderRadius.circular(
                                            4), 
                                      ),
                                      child: Center(
                                        child: Text(
                                          student.grade.name,
                                          style: const TextStyle(
                                            fontSize:
                                                18,
                                            fontWeight: FontWeight.bold,
                                            color: Colors
                                                .white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            //
          ],
        ),
      );
    });
  }
}
