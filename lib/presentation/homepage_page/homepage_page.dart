import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:pizza/presentation/foodtwo_screen/foodtwo_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_search_view.dart';
import 'widgets/drinksnack_item_widget.dart';
import 'widgets/sliderspacer_item_widget.dart'; // ignore_for_file: must_be_immutable
// ignore_for_file: must_be_immutable//
import '../../widgets/custom_icon_button.dart';


// ignore_for_file: must_be_immutable//
class HomepagePage extends StatelessWidget {
  HomepagePage({Key? key})
      : super(
    key: key,
  );

  TextEditingController searchController = TextEditingController();

  int sliderIndex = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillGreen,
          child: Column(
            children: [
              _buildAppBar(context),
              Container(
                padding: EdgeInsets.symmetric(
                    vertical: 30.v

                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildStackSpacer(context),
                    SizedBox(height: 19.v),
                    Padding(
                      padding: EdgeInsets.only(left: 19.h),
                      child: Text(
                        "ร้านอาหารแนะนำ",
                        style: theme.textTheme.bodyLarge,
                      ),
                    ),
                    SizedBox(height: 18.v),
                    _buildFoodDefault(context),
                    SizedBox(height: 38.v),
                    Padding(
                      padding: EdgeInsets.only(left: 19.h),
                      child: Text(
                        "ร้านเครื่องดื่มและของทานเล่นแนะนำ",
                        style: theme.textTheme.bodyLarge,
                      ),
                    ),
                    SizedBox(height: 24.v),
                    _buildDrinkSnack(context)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppBar(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 19.v),
      decoration: AppDecoration.fillPrimary,
      child: Column(
        children: [
          CustomAppBar(
            title: AppbarTitle(
              text: "จัดส่งที่:",
              margin: EdgeInsets.only(left: 19.h),
            ),
            actions: [
              AppbarTrailingImage(
                imagePath: ImageConstant.imgCartShoppingSolid,
                margin: EdgeInsets.only(
                  left: 15.h,
                  right: 15.h,
                  bottom: 4.v,
                ),
              )
            ],
          ),
          SizedBox(height: 13.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 35.h),
              child: Text(
                "หมู่บ้าน,เลขที่บ้าน,ซอย,ถนน,แขวง,เขต,จังหวัด",
                style: CustomTextStyles.bodyMediumJuaOnPrimary,
              ),
            ),
          ),
          SizedBox(height: 12.v),
          Padding(
            padding: EdgeInsets.only(
              left: 23.h,
              right: 24.h,
            ),
            child: CustomSearchView(
              controller: searchController,
              hintText: "ค้นหาเมนู และ โปรโมชัน",
            ),
          ),
          SizedBox(height: 7.v)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildStackSpacer(BuildContext context) {
    // กำหนดค่าความสูงและความกว้างของรูปภาพ
    double imageHeight = 218.0;
    double imageWidth = 409.0;

    return Container(
      height: imageHeight.v, // ใช้ค่าความสูงของรูปภาพ
      width: imageWidth.h, // ใช้ค่าความกว้างของรูปภาพ
      margin: EdgeInsets.only(left: 19.h),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CarouselSlider.builder(
            options: CarouselOptions(
              height: imageHeight.v,
              initialPage: 0,
              autoPlay: true,
              viewportFraction: 1.0,
              enableInfiniteScroll: false,
              scrollDirection: Axis.horizontal,
              onPageChanged: (index, reason) {
                sliderIndex = index;
              },
            ),
            itemCount: 4,
            itemBuilder: (context, index, realIndex) {
              return Container(
                height: imageHeight.v, // ใช้ค่าความสูงของรูปภาพ
                width: imageWidth.h, // ใช้ค่าความกว้างของรูปภาพ
                child: SliderspacerItemWidget(),
              );
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 12.v,
              margin: EdgeInsets.only(bottom: 7.v),
              child: AnimatedSmoothIndicator(
                activeIndex: sliderIndex,
                count: 2,
                axisDirection: Axis.horizontal,
                effect: ScrollingDotsEffect(
                  spacing: 5,
                  activeDotColor: theme.colorScheme.onPrimary.withOpacity(1),
                  dotHeight: 12.v,
                  dotWidth: 12.h,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }



  /// Section Widget
  Widget _buildFoodDefault(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(
          left: 19.h,
          right: 33.h,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: _buildColumnSizzler(
                context,
                sizzlerOne: ImageConstant.imgPizza,
                urbanpizzaone: ImageConstant.imgBurger,
                nroneOne: ImageConstant.imgSergeant,
                basilOne: ImageConstant.imgSongfa,
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 32.h),
                child: _buildColumnSizzler(
                  context,
                  sizzlerOne: ImageConstant.imgSizzler,
                  urbanpizzaone: ImageConstant.imgUrbanpizza1,
                  nroneOne: ImageConstant.imgNR1,
                  basilOne: ImageConstant.imgBasil,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildDrinkSnack(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        height: 70.v,
        child: ListView.separated(
          padding: EdgeInsets.symmetric(horizontal: 26.h),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (context, index) {
            return SizedBox(
              width: 32.h,
            );
          },
          itemCount: 4,
          itemBuilder: (context, index) {
            return DrinksnackItemWidget();
          },
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildColumnSizzler(
      BuildContext context, {
        required String sizzlerOne,
        required String urbanpizzaone,
        required String nroneOne,
        required String basilOne,
      }) {
    return Column(
      children: [
        SizedBox(
          width: 200.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child : GestureDetector(


                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FoodtwoScreen()), // แทน NextPage() ด้วยหน้าที่ต้องการให้ไป
                    );
                  },
                  child: CustomImageView(
                    imagePath: sizzlerOne,

                    height: 70.v,


                    radius: BorderRadius.circular(
                      10.h,
                    ),
                    margin: EdgeInsets.only(right: 0.h),

                  ),

                ),

              ),
              Expanded(
              child : GestureDetector(
                onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FoodtwoScreen()), // แทน NextPage() ด้วยหน้าที่ต้องการให้ไป
                );
              },

                child: CustomImageView(
                  imagePath: urbanpizzaone,
                  height: 70.adaptSize,
                  width: 70.adaptSize,
                  radius: BorderRadius.circular(
                    10.h,
                  ),
                  margin: EdgeInsets.only(left: 16.h),
                ),
              ),
              )
            ],
          ),
        ),
        SizedBox(height: 20.v),
        SizedBox(
          width: 172.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
              child : GestureDetector(
                onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FoodtwoScreen()), // แทน NextPage() ด้วยหน้าที่ต้องการให้ไป
                );
              },

                child: CustomImageView(
                imagePath: nroneOne,
                height: 70.adaptSize,
                width: 70.adaptSize,
                radius: BorderRadius.circular(
                  10.h,
                ),
                margin: EdgeInsets.only(right: 16.h),
              ),

              )

              ),
              Expanded(
    child : GestureDetector(
      onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => FoodtwoScreen()), // แทน NextPage() ด้วยหน้าที่ต้องการให้ไป
      );
    },

      child: CustomImageView(
      imagePath: basilOne,
      height: 70.adaptSize,
      width: 70.adaptSize,
      radius: BorderRadius.circular(
        10.h,
      ),
      margin: EdgeInsets.only(left: 16.h),
    ),

    )

              )
            ],
          ),
        )
      ],
    );
  }
// onTapBtnIconbutton(BuildContext context) {
//   Navigator.pushNamed(context, AppRoutes.foodtwoScreen);
// }
}
