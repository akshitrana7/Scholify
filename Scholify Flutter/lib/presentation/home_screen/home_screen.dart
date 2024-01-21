import '../home_screen/widgets/scholarshiplist_item_widget.dart';
import 'package:faiz_s_application/core/app_export.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 13.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 37.v),
              Container(
                margin: EdgeInsets.only(left: 14.h),
                decoration: AppDecoration.outlineBlack,
                child: Text(
                  "Hello,",
                  style: CustomTextStyles.headlineLargeDeeppurple500,
                ),
              ),
              SizedBox(height: 1.v),
              Container(
                margin: EdgeInsets.only(left: 14.h),
                decoration: AppDecoration.outlineBlack,
                child: Text(
                  "User",
                  style: theme.textTheme.displayMedium!.copyWith(
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              SizedBox(height: 31.v),
              _buildScholarshipList(context),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildScholarshipList(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(right: 1.h),
        child: ListView.separated(
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 16.v,
            );
          },
          itemCount: 6,
          itemBuilder: (context, index) {
            return ScholarshiplistItemWidget();
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.deepPurple500,
        borderRadius: BorderRadius.circular(
          8.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black90001.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              -4,
            ),
          ),
        ],
      ),
      child: CustomImageView(
        imagePath: ImageConstant.imgBottomBar,
        height: 58.v,
        width: 324.h,
        margin: EdgeInsets.only(
          left: 16.h,
          right: 20.h,
        ),
      ),
    );
  }
}
