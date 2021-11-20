import 'package:flutter/material.dart';
import 'package:wat/res/res.dart';

class ListViewIssues extends StatelessWidget {
  const ListViewIssues({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: 50,
        itemBuilder: (BuildContext ctx, int index) {
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
                  'This element has insufficient contrast at this conformance level. Expected a contrast ratio of at least 4.5:1, but text in this element has a contrast ratio of 4.01:1. Recommendation:  change background to #2b3435.',
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
                        text: 'WCAG2AA.Principle1.Guideline1_4.1_4_3.G18.Fail',
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
                        text:
                            '<li class=\"sc-jJoQpE cmGyex\">Designing, developing, testing,...</li>',
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
                        text:
                            '#root > div > div:nth-child(3) > div:nth-child(2) > div:nth-child(2) > div:nth-child(2) > div:nth-child(1) > div:nth-child(2) > div:nth-child(4) > ul > li:nth-child(1)',
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
