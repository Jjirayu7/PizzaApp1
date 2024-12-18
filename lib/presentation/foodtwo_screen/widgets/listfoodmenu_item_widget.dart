import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../theme/custom_button_style.dart';
import '../../../widgets/custom_drop_down.dart';
import '../../../widgets/custom_elevated_button.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ListfoodmenuItemWidget extends StatelessWidget {
  ListfoodmenuItemWidget({Key? key})
      : super(
          key: key,
        );

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  List<String> dropdownItemList1 = ["Item One", "Item Two", "Item Three"];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlinePrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.img1030011,
            height: 75.v,
            width: 100.h,
            margin: EdgeInsets.only(
              top: 6.v,
              bottom: 8.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 3.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 64.v,
                  width: 215.h,
                  child: Stack(
                    alignment: Alignment.topLeft,
                    children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          width: 215.h,
                          margin: EdgeInsets.only(bottom: 15.v),
                          child: Text(
                            "แฮม, เบคอน, มอสซาเรลล่าชีส, อเมริกันชีส,\nเกาด้าชีส และชีสซอส",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.bodyMedium,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "ชีส ทรีโอ",
                          style: theme.textTheme.titleMedium,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: EdgeInsets.only(right: 74.h),
                          child: Text(
                            "เลือกขนาด",
                            style: theme.textTheme.bodyMedium,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          "เลือกขนมปัง",
                          style: theme.textTheme.bodyMedium,
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 6.v),
                      child: CustomDropDown(
                        width: 80.h,
                        icon: Container(
                          margin: EdgeInsets.symmetric(horizontal: 5.h),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgArrowdown,
                            height: 2.v,
                            width: 5.h,
                          ),
                        ),
                        hintText: "หนานุ่ม        0B",
                        items: dropdownItemList,
                        onChanged: (value) {},
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 6.h,
                        bottom: 6.v,
                      ),
                      child: CustomDropDown(
                        width: 80.h,
                        icon: Container(
                          margin: EdgeInsets.symmetric(horizontal: 4.h),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgArrowdown,
                            height: 2.v,
                            width: 5.h,
                          ),
                        ),
                        hintText: "L             199B",
                        items: dropdownItemList1,
                        onChanged: (value) {},
                      ),
                    ),
                    _buildButtonPrice(context)
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildButtonPrice(BuildContext context) {
    return CustomElevatedButton(
      height: 22.v,
      width: 68.h,
      text: "199B",
      margin: EdgeInsets.only(left: 12.h),
      buttonStyle: CustomButtonStyles.fillPrimaryTL10,
      buttonTextStyle: CustomTextStyles.bodyMediumOnPrimary,
    );
  }
}
