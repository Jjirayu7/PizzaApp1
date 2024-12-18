import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import 'widgets/productdetails_item_widget.dart'; // ignore_for_file: must_be_immutable

class OrderfivePage extends StatelessWidget {
  const OrderfivePage({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillGreen,
          child: Column(
            children: [
              _buildProductColumn(context),
              SizedBox(height: 15.v),
              _buildProductdetails(context),
              SizedBox(height: 28.v),
              _buildPaymentColumn(context)
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildProductColumn(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 151.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.fillPrimary,
      child: Column(
        children: [
          SizedBox(height: 29.v),
          Text(
            "ออเดอร์ของคุณ",
            style: CustomTextStyles.titleLargeOnPrimary,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildProductdetails(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 23.h),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 27.v,
          );
        },
        itemCount: 4,
        itemBuilder: (context, index) {
          return ProductdetailsItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildPaymentColumn(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 20.v,
      ),
      decoration: AppDecoration.fillPrimaryContainer,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "ชำระสินค้าของคุณ",
            style: CustomTextStyles.headlineSmallBlack900_1,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.h),
            child: Row(
              children: [
                Container(
                  width: 82.h,
                  margin: EdgeInsets.only(bottom: 2.v),
                  child: Text(
                    "ค่าอาหาร\nค่าจัดส่ง\nหักส่วนลด\nรวม",
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.titleLarge!.copyWith(
                      height: 1.35,
                    ),
                  ),
                ),
                Container(
                  width: 59.h,
                  margin: EdgeInsets.only(left: 238.h),
                  child: Text(
                    "995B\n35B\n0B\n9999B",
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.right,
                    style: theme.textTheme.titleLarge!.copyWith(
                      height: 1.35,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 39.v),
          CustomElevatedButton(
            height: 49.v,
            text: "ต่อไป",
            buttonStyle: CustomButtonStyles.fillPrimaryTL10,
            buttonTextStyle: CustomTextStyles.titleLargeOnPrimary,
          )
        ],
      ),
    );
  }
}
