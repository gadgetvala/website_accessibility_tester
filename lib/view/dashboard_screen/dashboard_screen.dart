import 'package:flutter/material.dart';
import 'package:wat/res/res.dart';
import 'package:wat/view/dashboard_screen/widget/listview_issues.dart';
import 'package:wat/view/dashboard_screen/widget/search_header.dart';

class DashboardScreen extends StatelessWidget {
  static const String id = '/dashboardScreen';

  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'WAT',
          style: TextStyle(
            color: colors.primaryFontColor,
            fontSize: 25,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SearchHeader(),
            Expanded(
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  RichText(
                    text: TextSpan(
                      text: 'Suraj Verma PORTFOLIO',
                      style: TextStyle(
                        color: colors.primaryFontColor,
                        fontWeight: FontWeight.w500,
                      ),
                      children: [
                        TextSpan(
                          text: ' : 20 Issue Found',
                          style: TextStyle(
                            color: colors.secondaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  ListViewIssues(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
