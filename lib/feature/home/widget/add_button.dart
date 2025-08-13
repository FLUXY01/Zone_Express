import 'package:flutter/material.dart';
import 'package:smart_home_light/utils/constants/color.dart';

import '../../../utils/constants/fonts.dart';

class AddButton extends StatelessWidget {
  const AddButton({super.key});

  @override
  Widget build(BuildContext context) {
    final ScreenWidth = MediaQuery.of(context).size.width;
    final ScreenHeight = MediaQuery.of(context).size.height;
    return SizedBox(
      width: ScreenWidth * 0.45,
      height: ScreenHeight * 0.07,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: TColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                textAlign: TextAlign.center,
                "Add Device",
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: TColors.whiteColor,
                  fontFamily: TFonts.roboto,
                ),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: const Icon(
                Icons.add_circle,
                color: TColors.whiteColor,
                size: 23,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
