import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wat/model/pa11y_response_model.dart';
import 'package:wat/res/res.dart';
import 'package:wat/view/dashboard_screen/provider/dashboard_provider.dart';

class ListViewIssues extends ConsumerWidget {
  const ListViewIssues({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final _provider = watch(dashboardProvider);

    return Expanded(
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: _provider.data!.issues.length,
        itemBuilder: (BuildContext ctx, int index) {
          final Issues data = _provider.data!.issues[index];

          return Container(
            padding: EdgeInsets.all(16),
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: colors.primaryColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 10.0,
                ),
              ],
            ),
            child: Column(
              children: [
                /// Message
                Text(
                  data.message,
                  style: TextStyle(
                    color: colors.primaryFontColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 20),
                RichText(
                  text: TextSpan(
                    text: "Code: ",
                    style: TextStyle(
                      color: colors.secondaryColor,
                      fontWeight: FontWeight.w500,
                    ),
                    children: [
                      TextSpan(
                        text: data.code,
                        style: TextStyle(
                          color: colors.primaryFontColor,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                RichText(
                  text: TextSpan(
                    text: "Context: ",
                    style: TextStyle(
                      color: colors.secondaryColor,
                      fontWeight: FontWeight.w500,
                    ),
                    children: [
                      TextSpan(
                        text: data.context,
                        style: TextStyle(
                          color: colors.primaryFontColor,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                RichText(
                  text: TextSpan(
                    text: "Selector: ",
                    style: TextStyle(
                      color: colors.secondaryColor,
                      fontWeight: FontWeight.w500,
                    ),
                    children: [
                      TextSpan(
                        text: data.selector,
                        style: TextStyle(
                          color: colors.primaryFontColor,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
