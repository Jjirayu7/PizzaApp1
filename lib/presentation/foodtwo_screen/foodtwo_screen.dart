import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_drop_down.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_icon_button.dart';
import 'widgets/listfoodmenu_item_widget.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class FoodtwoScreen extends StatelessWidget {
  FoodtwoScreen({Key? key})
      : super(
          key: key,
        );

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 968.v,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      _buildStackImageIconButton(context),
                      Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: EdgeInsets.only(top: 231.v),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.img731716OrderTh,
                                height: 147.v,
                                width: 222.h,
                                radius: BorderRadius.circular(
                                  10.h,
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.img731744thBanner,
                                height: 147.v,
                                width: 89.h,
                                radius: BorderRadius.circular(
                                  10.h,
                                ),
                                margin: EdgeInsets.only(left: 28.h),
                              )
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: SizedBox(
                          height: 745.v,
                          width: double.maxFinite,
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                  margin: EdgeInsets.only(bottom: 200.v),
                                  padding: EdgeInsets.fromLTRB(
                                      14.h, 76.v, 14.h, 7.v),
                                  decoration: AppDecoration.fillGreen,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(height: 13.v),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "โปรดเลือกสาขาที่ต้องการ",
                                            style: CustomTextStyles
                                                .titleMediumOnPrimaryContainer,
                                          ),
                                          SizedBox(height: 9.v),
                                          CustomDropDown(
                                            width: 280.h,
                                            icon: Container(
                                              margin: EdgeInsets.symmetric(
                                                  horizontal: 22.h),
                                              child: CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgArrowdown,
                                                height: 5.v,
                                                width: 10.h,
                                              ),
                                            ),
                                            hintText: "เลือกสาขาที่ต้องการ",
                                            items: dropdownItemList,
                                            contentPadding: EdgeInsets.fromLTRB(
                                                16.h, 18.v, 16.h, 21.v),
                                            borderDecoration:
                                                DropDownStyleHelper
                                                    .outlineBlack,
                                            fillColor: theme
                                                .colorScheme.onPrimary
                                                .withOpacity(1),
                                          )
                                        ],
                                      ),
                                      SizedBox(height: 2.v),
                                      Padding(
                                        padding: EdgeInsets.only(left: 15.h),
                                        child: Text(
                                          "พิซซ่า",
                                          style: theme.textTheme.headlineLarge,
                                        ),
                                      ),
                                      SizedBox(height: 7.v),
                                      _buildListFoodMenu(context)
                                    ],
                                  ),
                                ),
                              ),
                              _buildStack102741mpon(context)
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 22.v),
                _buildFive(context),
                SizedBox(height: 22.v),
                _buildSix(context)
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildStackImageIconButton(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: SizedBox(
        height: 252.v,
        width: double.maxFinite,
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgRectangle20,
              height: 252.v,
              width: 428.h,
              radius: BorderRadius.vertical(
                bottom: Radius.circular(60.h),
              ),
              alignment: Alignment.center,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 30.h,
                top: 13.v,
              ),
              child: CustomIconButton(
                height: 60.v,
                width: 40.h,
                padding: EdgeInsets.all(6.h),
                alignment: Alignment.topLeft,
                onTap: () {
                  onTapBtnIconbutton(context);
                },
                child: CustomImageView(
                  imagePath: ImageConstant.imgGroup8,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildListFoodMenu(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 9.h),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 22.v,
          );
        },
        itemCount: 3,
        itemBuilder: (context, index) {
          return ListfoodmenuItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildButton0b(BuildContext context) {
    return CustomElevatedButton(
      width: 80.h,
      text: "หนานุ่ม        0B",
    );
  }

  /// Section Widget
  Widget _buildButtonl199b(BuildContext context) {
    return CustomElevatedButton(
      width: 80.h,
      text: "L             199B",
    );
  }

  /// Section Widget
  Widget _buildStack102741mpon(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: SizedBox(
        height: 118.v,
        width: 391.h,
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.only(
                  top: 15.v,
                  right: 10.h,
                ),
                decoration: AppDecoration.outlinePrimary.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.img102741Mp1,
                      height: 66.v,
                      width: 100.h,
                      margin: EdgeInsets.only(
                        top: 10.v,
                        bottom: 9.v,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 3.v),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "พิซซ่าไส้กรอกและไก่บาร์บีคิว",
                            style: theme.textTheme.titleMedium,
                          ),
                          SizedBox(height: 23.v),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 4.v),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "เลือกขนมปัง",
                                      style: theme.textTheme.bodyMedium,
                                    ),
                                    _buildButton0b(context)
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 6.h,
                                  bottom: 4.v,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "เลือกขนาด",
                                      style: theme.textTheme.bodyMedium,
                                    ),
                                    _buildButtonl199b(context)
                                  ],
                                ),
                              ),
                              Container(
                                width: 68.h,
                                margin: EdgeInsets.only(
                                  left: 12.h,
                                  top: 14.v,
                                ),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 16.h,
                                  vertical: 2.v,
                                ),
                                decoration: AppDecoration.fillPrimary.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder10,
                                ),
                                child: Text(
                                  "199B",
                                  style: CustomTextStyles.bodyMediumOnPrimary,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Card(
                clipBehavior: Clip.antiAlias,
                elevation: 0,
                margin: EdgeInsets.all(0),
                color: theme.colorScheme.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusStyle.circleBorder30,
                ),
                child: Container(
                  height: 60.adaptSize,
                  width: 60.adaptSize,
                  padding: EdgeInsets.all(6.h),
                  decoration: AppDecoration.fillPrimary.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder30,
                  ),
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgCart,
                        height: 42.v,
                        width: 46.h,
                        alignment: Alignment.bottomCenter,
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: EdgeInsets.only(top: 4.v),
                          child: Text(
                            "1",
                            style: CustomTextStyles.headlineSmallBlack900,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildButtonl199b1(BuildContext context) {
    return CustomElevatedButton(
      width: 80.h,
      text: "L             199B",
      margin: EdgeInsets.only(top: 61.v),
    );
  }

  /// Section Widget
  Widget _buildButton0b1(BuildContext context) {
    return CustomElevatedButton(
      width: 80.h,
      text: "หนานุ่ม        0B",
    );
  }

  /// Section Widget
  Widget _buildFive(BuildContext context) {
    return SizedBox(
      height: 95.v,
      width: 391.h,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.only(left: 9.h),
              padding: EdgeInsets.symmetric(
                horizontal: 9.h,
                vertical: 3.v,
              ),
              decoration: AppDecoration.outlinePrimary.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  _buildButtonl199b1(context),
                  Container(
                    width: 68.h,
                    margin: EdgeInsets.only(
                      left: 12.h,
                      top: 55.v,
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.h,
                      vertical: 2.v,
                    ),
                    decoration: AppDecoration.fillPrimary.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: Text(
                      "199B",
                      style: CustomTextStyles.bodyMediumOnPrimary,
                    ),
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: SizedBox(
              height: 86.v,
              width: 310.h,
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.img102208Mp1,
                    height: 83.v,
                    width: 140.h,
                    alignment: Alignment.centerLeft,
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: EdgeInsets.only(left: 131.h),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "ซีฟู้ดค็อกเทล",
                            style: theme.textTheme.titleMedium,
                          ),
                          SizedBox(
                            width: 179.h,
                            child: Text(
                              "กุ้ง, ปูอัด, แฮม, สับปะรด และซอส\nเทาซันไอส์แลนด์",
                              maxLines: null,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.bodyMedium14,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: EdgeInsets.only(
                        right: 38.h,
                        bottom: 20.v,
                      ),
                      child: Text(
                        "เลือกขนาด",
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 131.h,
                        right: 99.h,
                        bottom: 4.v,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "เลือกขนมปัง",
                            style: theme.textTheme.bodyMedium,
                          ),
                          _buildButton0b1(context)
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildButtonl99b2(BuildContext context) {
    return CustomElevatedButton(
      width: 80.h,
      text: "L             199B",
    );
  }

  /// Section Widget
  Widget _buildButton0b2(BuildContext context) {
    return CustomElevatedButton(
      width: 80.h,
      text: "หนานุ่ม        0B",
    );
  }

  /// Section Widget
  Widget _buildSix(BuildContext context) {
    return SizedBox(
      height: 95.v,
      width: 391.h,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.only(left: 9.h),
              padding: EdgeInsets.symmetric(
                horizontal: 9.h,
                vertical: 6.v,
              ),
              decoration: AppDecoration.outlinePrimary.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 39.v,
                      bottom: 2.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "เลือกขนาด",
                          style: theme.textTheme.bodyMedium,
                        ),
                        _buildButtonl99b2(context)
                      ],
                    ),
                  ),
                  Container(
                    width: 68.h,
                    margin: EdgeInsets.only(
                      left: 12.h,
                      top: 51.v,
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.h,
                      vertical: 2.v,
                    ),
                    decoration: AppDecoration.fillPrimary.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: Text(
                      "199B",
                      style: CustomTextStyles.bodyMediumOnPrimary,
                    ),
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              height: 74.v,
              width: 349.h,
              margin: EdgeInsets.only(top: 8.v),
              child: Stack(
                alignment: Alignment.centerRight,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.img102212Mp1,
                    height: 61.v,
                    width: 140.h,
                    alignment: Alignment.bottomLeft,
                    margin: EdgeInsets.only(bottom: 3.v),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(left: 131.h),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "ต้มยำกุ้ง",
                            style: theme.textTheme.titleMedium,
                          ),
                          Text(
                            "กุ้ง, ปลาหมึก, เห็ด และซอสต้มยำ",
                            style: CustomTextStyles.bodyMedium15,
                          ),
                          SizedBox(height: 2.v),
                          Text(
                            "เลือกขนมปัง",
                            style: theme.textTheme.bodyMedium,
                          ),
                          _buildButton0b2(context)
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Navigates to the homepageContainerScreen when the action is triggered.
  onTapBtnIconbutton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homepageContainerScreen);
  }
}
