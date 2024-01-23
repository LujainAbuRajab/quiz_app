// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:quiz_app2/utils/app_colors.dart';

class MainButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  const MainButton({
    super.key,
    required this.onTap,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
                    width: double.infinity,
                    height: 40,
                    child: ElevatedButton(
                      onPressed: onTap,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.darkBlue,
                        foregroundColor: AppColors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ), 
                      child: Text(
                        text,
                        style: TextStyle(
                          fontSize: 22,
                        ),
                      ),
                    ),
                  );
  }
}
