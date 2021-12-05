import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wat/provider/theme_provider.dart';
import 'package:wat/res/res.dart';
import 'package:wat/view/dashboard_screen/provider/dashboard_provider.dart';
import 'package:wat/view/dashboard_screen/widget/listview_issues.dart';
import 'package:wat/view/dashboard_screen/widget/search_header.dart';
import 'package:wat/view/settings_screen/settings_screen.dart';

class DashboardScreen extends ConsumerWidget {
  static const String id = '/dashboardScreen';

  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final _provider = watch(dashboardProvider);
    final _ = watch(themeProvider);

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
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(SettingsScreen.id);
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Icon(
                Icons.settings,
                color: colors.secondaryColor,
                size: 25,
              ),
            ),
          )
        ],
      ),
      backgroundColor: colors.backgroundColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SearchHeader(),
            if (_provider.isLoading)
              Expanded(
                child: Center(
                  child: CircularProgressIndicator(
                    color: colors.secondaryColor,
                  ),
                ),
              ),
            if (!_provider.isLoading && _provider.data == null)
              Expanded(
                child: Center(
                  child: Text(
                    'Enter website name to search',
                    style: TextStyle(
                      color: colors.primaryFontColor,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            if (_provider.data != null)
              Expanded(
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    RichText(
                      text: TextSpan(
                        text: _provider.data!.documentTitle,
                        style: TextStyle(
                          color: colors.primaryFontColor,
                          fontWeight: FontWeight.w500,
                        ),
                        children: [
                          TextSpan(
                            text:
                                ' : ${_provider.data!.issues.length} Issues Found',
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
