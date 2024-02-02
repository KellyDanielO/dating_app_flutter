import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              width: width,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        color: AppColors.boxGreyColor,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Row(
                        children: <Widget>[
                          Icon(
                            CupertinoIcons.search,
                            color: AppColors.textGreyColor,
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: TextField(
                              style: TextStyle(
                                color: AppColors.textGreyColor,
                              ),
                              autofocus: true,
                              decoration: InputDecoration(
                                hintText: 'Search Tech Sis/Bro',
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                contentPadding: EdgeInsets.all(0),
                                hintStyle: TextStyle(
                                  color: AppColors.textGreyColor,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('cancel'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
