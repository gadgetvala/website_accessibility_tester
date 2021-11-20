import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wat/provider/theme_provider.dart';
import 'package:wat/res/res.dart';
import 'package:flutter_switch/flutter_switch.dart';

class SettingsScreen extends ConsumerWidget {
  static const String id = '/settingsScreen';

  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final _provider = watch(themeProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Setting',
          style: TextStyle(
            color: colors.primaryFontColor,
            fontSize: 25,
          ),
        ),
        iconTheme: IconThemeData(
          color: colors.secondaryColor,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      backgroundColor: colors.backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Dark Mode',
                    style: TextStyle(
                      color: colors.primaryFontColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                  Container(
                    child: FlutterSwitch(
                      activeColor: colors.secondaryColor,
                      value: _provider.isDark,
                      showOnOff: true,
                      onToggle: (val) {
                        _provider.switchTheme();
                        initializeResources(
                          context: context,
                          dark: context.read(themeProvider).isDark,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
