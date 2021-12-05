import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wat/res/res.dart';
import 'package:wat/view/dashboard_screen/provider/dashboard_provider.dart';

class SearchHeader extends ConsumerWidget {
  const SearchHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final _provider = watch(dashboardProvider);

    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              style: TextStyle(
                color: colors.primaryFontColor,
              ),
              controller: _provider.searchBoxController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                fillColor: colors.primaryColor,
                filled: true,
                border: UnderlineInputBorder(
                    borderRadius: BorderRadius.circular(8)),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: colors.borderColor),
                  borderRadius: BorderRadius.circular(8),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: colors.borderColor),
                  borderRadius: BorderRadius.circular(8),
                ),
                suffixIcon: Icon(Icons.search_rounded),
                hintStyle: const TextStyle(color: Color(0xff929292)),
                hintText: 'Enter Website Link',
                contentPadding: const EdgeInsets.symmetric(horizontal: 20),
              ),
            ),
          ),
          const SizedBox(width: 20),
          GestureDetector(
            onTap: () {
              if (_provider.searchBoxController.text.isNotEmpty) {
                _provider.getWebsiteDetails();
              }
            },
            child: Container(
              padding: EdgeInsets.all(14),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: colors.secondaryColor,
              ),
              child: Center(
                child: Text(
                  'Search',
                  style: TextStyle(
                    color: colors.primaryFontColor,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.5,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
