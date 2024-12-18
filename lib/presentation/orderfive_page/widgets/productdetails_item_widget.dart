import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../widgets/custom_drop_down.dart';
import '../../../widgets/custom_elevated_button.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ProductdetailsItemWidget extends StatelessWidget {
  ProductdetailsItemWidget({Key? key})
      : super(
          key: key,
        );

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 1.h),
      decoration: AppDecoration.outlinePrimary1.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
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
            padding: EdgeInsets.only(
              left: 15.h,
              bottom: 8.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "ชีส ทรีโอ",
                  style: theme.textTheme.titleMedium,
                ),
                SizedBox(
                  height: 61.v,
                  width: 234.h,
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: SizedBox(
                          width: 215.h,
                          child: Text(
                            "แฮม, เบคอน, มอสซาเรลล่าชีส, อเมริกันชีส,\nเกาด้าชีส และชีสซอส",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.bodyMedium,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          "   1  +  ",
                          style: CustomTextStyles.bodyMedium15,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 16.v),
                          child: Text(
                            "เลือกขนาด",
                            style: theme.textTheme.bodyMedium,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 16.v),
                          child: Text(
                            "เลือกขนมปัง",
                            style: theme.textTheme.bodyMedium,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Row(
                          children: [
                            CustomElevatedButton(
                              width: 80.h,
                              text: "หนานุ่ม        0B",
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 6.h),
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
                                items: dropdownItemList,
                                onChanged: (value) {},
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
