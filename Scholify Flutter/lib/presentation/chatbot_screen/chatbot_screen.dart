import 'package:faiz_s_application/core/app_export.dart';
import 'package:flutter/material.dart';

class ChatbotScreen extends StatelessWidget {
  const ChatbotScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildSeventeen(context),
                SizedBox(height: 11.v),
                _buildEight(context),
                SizedBox(height: 15.v),
                _buildFive(context),
                SizedBox(height: 15.v),
                _buildTwentyNine(context),
                SizedBox(height: 19.v),
                _buildSeven(context),
                SizedBox(height: 79.v),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildSeventeen(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 109.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.fillDeepPurple.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder31,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 6.v),
          Text(
            "Chat Bot",
            style: theme.textTheme.headlineLarge,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEight(BuildContext context) {
    return Container(
      width: 334.h,
      margin: EdgeInsets.only(right: 26.h),
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.outlineBlack900013.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder24,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildTwo(
            context,
            chatbotText: "Chatbot",
            timeText: "2h",
          ),
          SizedBox(height: 3.v),
          Container(
            width: 286.h,
            margin: EdgeInsets.only(right: 23.h),
            child: Text(
              "Hello, I am the Scholify bot. How can I help you",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodyLarge,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFive(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        margin: EdgeInsets.only(left: 25.h),
        padding: EdgeInsets.symmetric(
          horizontal: 19.h,
          vertical: 10.v,
        ),
        decoration: AppDecoration.outlineBlack90001.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder24,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildThirty(
              context,
              userImage: "Me",
              time: "2h",
            ),
            SizedBox(height: 3.v),
            SizedBox(
              width: 295.h,
              child: Text(
                "I need help with finding Scholarship for me can you help me with that?",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.bodyLarge,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTwentyNine(BuildContext context) {
    return SizedBox(
      height: 499.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              margin: EdgeInsets.only(right: 22.h),
              padding: EdgeInsets.symmetric(
                horizontal: 16.h,
                vertical: 8.v,
              ),
              decoration: AppDecoration.outlineBlack900013.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder24,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 1.v),
                  _buildTwo(
                    context,
                    chatbotText: "Chatbot",
                    timeText: "2h",
                  ),
                  SizedBox(height: 3.v),
                  Container(
                    width: 296.h,
                    margin: EdgeInsets.only(right: 9.h),
                    child: Text(
                      "Sure, Here are some Scholarships you may like\n\n1. Fulbright Scholarship Program\n2. Excelsior Scholarship\n3. The Coca-Cola Scholarship\n4. National Merit Scholarship\n5. Hispanic Scholarship Fund\n6. Hope Scholarship\n7. The Gates Scholarship\n8. The Gates Millennium Scholars Program\n9. Benjamin A. Gilman Scholarship\n10. McKay Scholarship\n\nJust ask me if you want to know more about any of these scholarship in detail",
                      maxLines: 17,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              margin: EdgeInsets.only(left: 38.h),
              padding: EdgeInsets.symmetric(
                horizontal: 20.h,
                vertical: 10.v,
              ),
              decoration: AppDecoration.outlineBlack90001.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder24,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildThirty(
                    context,
                    userImage: "Me",
                    time: "2h",
                  ),
                  SizedBox(height: 3.v),
                  Container(
                    width: 254.h,
                    margin: EdgeInsets.only(right: 27.h),
                    child: Text(
                      "Can you tell me about The McKay Scholarship",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: 75.v,
              width: 74.h,
              margin: EdgeInsets.only(
                right: 10.h,
                bottom: 69.v,
              ),
              decoration: AppDecoration.outlineBlack900014,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 75.v,
                      width: 74.h,
                      decoration: BoxDecoration(
                        color: appTheme.deepPurple300,
                        borderRadius: BorderRadius.circular(
                          37.h,
                        ),
                        border: Border.all(
                          color: appTheme.black90001,
                          width: 1.h,
                        ),
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgVector,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    alignment: Alignment.center,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSeven(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 26.h),
      padding: EdgeInsets.symmetric(
        horizontal: 2.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.outlineBlack900013.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder24,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: _buildTwo(
              context,
              chatbotText: "Chatbot",
              timeText: "2h",
            ),
          ),
          SizedBox(height: 3.v),
          Container(
            width: 319.h,
            margin: EdgeInsets.only(left: 8.h),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text:
                        "The McKay Scholarship is a program dedicated to assisting children with disabilities attend the school that best fits their needs. The McKay Scholarship is based in Florida and gives parents the flexibility of choosing the best suited public or private school for their child in grades K-12. For the academic 2016-2017 academic school year, the McKay Scholarship assisted over 31,000 students with opportunity to attend private school. ",
                    style: CustomTextStyles.bodyLargeff000000,
                  ),
                  TextSpan(
                    text: "Learn more\n\n\n",
                    style: CustomTextStyles.bodyLargeff000000.copyWith(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(height: 3.v),
        ],
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
        imagePath: ImageConstant.imgBottomBarWhiteA70058x324,
        height: 58.v,
        width: 324.h,
        margin: EdgeInsets.only(
          left: 16.h,
          right: 20.h,
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildTwo(
    BuildContext context, {
    required String chatbotText,
    required String timeText,
  }) {
    return Row(
      children: [
        Text(
          chatbotText,
          style: theme.textTheme.headlineSmall!.copyWith(
            color: appTheme.deepPurple500,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 3.h,
            top: 9.v,
            bottom: 3.v,
          ),
          child: Text(
            timeText,
            style: theme.textTheme.titleSmall!.copyWith(
              color: appTheme.gray600,
            ),
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildThirty(
    BuildContext context, {
    required String userImage,
    required String time,
  }) {
    return Row(
      children: [
        Text(
          userImage,
          style: theme.textTheme.headlineSmall!.copyWith(
            color: appTheme.deepPurple500,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 6.h,
            top: 8.v,
            bottom: 4.v,
          ),
          child: Text(
            time,
            style: theme.textTheme.titleSmall!.copyWith(
              color: appTheme.gray600,
            ),
          ),
        ),
      ],
    );
  }
}
