import 'package:flutter/material.dart';
import '../../../core/app_export.dart'; // ignore: must_be_immutable

class SliderspacerItemWidget extends StatelessWidget {
  const SliderspacerItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage2,
            height: 318.v,
            width: 386.h,
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.img1030564Large1,
            height: 18.v,
            width: 386.h,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgJ6eyfxin1duh1,
            height: 318.v,
            width: 386.h,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgImage2,
            height: 22.v,
            width: 386.h,
          )
        ],
      ),
    );
  }
}
