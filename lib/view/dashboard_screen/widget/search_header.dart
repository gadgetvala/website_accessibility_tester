import 'package:flutter/material.dart';
import 'package:wat/res/res.dart';

class SearchHeader extends StatelessWidget {
  const SearchHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              style: TextStyle(
                color: colors.primaryFontColor,
              ),
              keyboardType: TextInputType.text,
              // controller: widget.controller,
              decoration: InputDecoration(
                fillColor: colors.primaryColor,
                filled: true,
                border: UnderlineInputBorder(
                    borderRadius: BorderRadius.circular(8)),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: colors.secondaryfontColor),
                  borderRadius: BorderRadius.circular(8),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: colors.secondaryfontColor),
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
          Container(
            padding: EdgeInsets.all(14),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: colors.secondaryColor,
            ),
            child: Center(
              child: Text(
                'Search',
                style: TextStyle(
                  color: colors.primaryColor,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.5,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
