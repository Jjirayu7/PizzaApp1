import 'package:flutter/material.dart';
import '../../../core/app_export.dart'; // ignore: must_be_immutable

class DrinksnackItemWidget extends StatelessWidget {
  const DrinksnackItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70.h,
      child: Align(
        alignment: Alignment.center,
        child: CustomImageView(
          imagePath: ImageConstant.imgDq1,
          height: 70.adaptSize,
          width: 70.adaptSize,
          radius: BorderRadius.circular(
            10.h,
          ),
        ),
      ),
    );
  }
}
