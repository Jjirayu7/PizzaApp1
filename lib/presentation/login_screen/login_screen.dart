import 'package:flutter/material.dart';
import 'package:pizza/presentation/homepage_page/homepage_page.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key})
      : super(
    key: key,
  );

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: SizedBox(
            height: SizeUtils.height,
            child: Form(
              key: _formKey,
              child: SizedBox(
                width: double.maxFinite,
                child: Column(
                  children: [
                    Container(
                      height: 58.v,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        color: theme.colorScheme.primary,
                        borderRadius: BorderRadius.vertical(
                          bottom: Radius.circular(20.h),
                        ),
                      ),
                    ),
                    SizedBox(height: 36.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 23.h),
                        child: Text(
                          "ยินดีต้อนรับ! 🎉🎉🎉",
                          style: theme.textTheme.titleLarge,
                        ),
                      ),
                    ),
                    SizedBox(height: 11.v),
                    _buildStackdescriptio(context),
                    SizedBox(height: 18.v),
                    _buildEmail(context),
                    SizedBox(height: 42.v),
                    _buildPassword(context),
                    SizedBox(height: 8.v),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.only(right: 24.h),
                        child: Text(
                          "ลืมรหัสผ่าน?",
                          style: CustomTextStyles.bodyLargeOnPrimary.copyWith(
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 32.v),
                    _buildTf(context),
                    SizedBox(height: 29.v),
                    _buildRowlineoneone(context),
                    SizedBox(height: 29.v),
                    _buildTf1(context),
                    Spacer(),
                    Container(
                      height: 58.v,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        color: theme.colorScheme.primary,
                        borderRadius: BorderRadius.vertical(
                          bottom: Radius.circular(20.h),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildStackdescriptio(BuildContext context) {
    return SizedBox(
      height: 191.v,
      width: 399.h,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: SizedBox(
              width: 279.h,
              child: Text(
                "เข้าสู่ระบบเพื่อรับดีลพิเศษเฉพาะผู้ใช้แอป\n1112 Delivery!",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.bodyLarge,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(top: 66.v),
              child: Text(
                "สมัครสมาชิก",
                style: CustomTextStyles.bodyLargeOnPrimary.copyWith(
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: 124.v,
              width: 131.h,
              margin: EdgeInsets.only(right: 75.h),
              decoration: BoxDecoration(
                color: theme.colorScheme.secondaryContainer,
                borderRadius: BorderRadius.circular(
                  50.h,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: 120.v,
              width: 125.h,
              margin: EdgeInsets.only(bottom: 25.v),
              decoration: BoxDecoration(
                color: theme.colorScheme.secondaryContainer,
                borderRadius: BorderRadius.circular(
                  50.h,
                ),
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgBurger1,
            height: 151.v,
            width: 201.h,
            alignment: Alignment.centerRight,
            margin: EdgeInsets.only(right: 7.h),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 23.h,
        right: 24.h,
      ),
      child: CustomTextFormField(
        controller: emailController,
        hintText: "Caesar555@wanorn.ling",
        textInputType: TextInputType.emailAddress,
        prefix: Container(
          margin: EdgeInsets.fromLTRB(16.h, 14.v, 23.h, 14.v),
          child: CustomImageView(
            imagePath: ImageConstant.imgEnvelopesolid1,
            height: 23.adaptSize,
            width: 23.adaptSize,
          ),
        ),
        prefixConstraints: BoxConstraints(
          maxHeight: 51.v,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 23.h,
        right: 24.h,
      ),
      child: CustomTextFormField(
        controller: passwordController,
        hintText: "********",
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        suffix: Container(
          margin: EdgeInsets.fromLTRB(30.h, 15.v, 14.h, 16.v),
          child: CustomImageView(
            imagePath: ImageConstant.imgEyesolid1,
            height: 20.v,
            width: 23.h,
          ),
        ),
        suffixConstraints: BoxConstraints(
          maxHeight: 51.v,
        ),
        obscureText: true,
        contentPadding: EdgeInsets.symmetric(vertical: 15.v),
      ),
    );
  }

  /// Section Widget
  Widget _buildTf(BuildContext context) {
    return CustomElevatedButton(
      height: 55.v,
      text: "เข้าสู่ระบบ",
      margin: EdgeInsets.only(
        left: 23.h,
        right: 24.h,
      ),
      buttonStyle: CustomButtonStyles.fillPrimary,
      buttonTextStyle: theme.textTheme.headlineSmall!,
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomepagePage()),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildRowlineoneone(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 5.h,
        right: 6.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 14.v,
              bottom: 9.v,
            ),
            child: SizedBox(
              width: 184.h,
              child: Divider(),
            ),
          ),
          Text(
            "หรือ",
            style: theme.textTheme.titleLarge,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 14.v,
              bottom: 9.v,
            ),
            child: SizedBox(
              width: 184.h,
              child: Divider(),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTf1(BuildContext context) {
    return CustomElevatedButton(
      height: 55.v,
      text: "ลงชื่อเข้าใช้งานด้วย Facebook",
      margin: EdgeInsets.only(
        left: 23.h,
        right: 24.h,
      ),
      leftIcon: Container(
        margin: EdgeInsets.only(right: 10.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgFacebook1,
          height: 33.adaptSize,
          width: 33.adaptSize,
        ),
      ),
      buttonStyle: CustomButtonStyles.fillBlue,
      buttonTextStyle: CustomTextStyles.titleLargeOnPrimary,
    );
  }
}
