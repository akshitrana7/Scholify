import 'package:faiz_s_application/core/app_export.dart';
import 'package:flutter/material.dart';

class MessageWritingScreen extends StatelessWidget {
  const MessageWritingScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildCommunitySection(context),
                SizedBox(height: 11.v),
                _buildElevenSection(context),
                SizedBox(height: 15.v),
                _buildThirtyFiveSection(context),
                SizedBox(height: 23.v),
                _buildINeedParticipantsSection(context),
                SizedBox(height: 92.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCommunitySection(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 85.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.fillDeepPurple.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder31,
      ),
      child: Text(
        "Community",
        style: theme.textTheme.headlineLarge,
      ),
    );
  }

  /// Section Widget
  Widget _buildElevenSection(BuildContext context) {
    return Container(
      width: 353.h,
      margin: EdgeInsets.only(right: 7.h),
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.outlineBlack90001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder24,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 1.v),
          _buildHowWasYourDaySection(
            context,
            userName: "Faiz",
            time: "2h",
          ),
          SizedBox(height: 5.v),
          Text(
            "My name is faiz. What’s your name?",
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 5.v),
          _buildUserSection(
            context,
            twelve: "12",
            reply: "Reply",
          ),
          SizedBox(height: 17.v),
          Padding(
            padding: EdgeInsets.only(left: 28.h),
            child: _buildSameAsAlwaysSection(
              context,
              userName: "Akshit",
              time: "2h",
            ),
          ),
          SizedBox(height: 5.v),
          Align(
            alignment: Alignment.center,
            child: Text(
              "My name is Akshit. Nice to meet you",
              style: theme.textTheme.bodyLarge,
            ),
          ),
          SizedBox(height: 5.v),
          Padding(
            padding: EdgeInsets.only(left: 28.h),
            child: _buildUserSection(
              context,
              twelve: "12",
              reply: "Reply",
            ),
          ),
          SizedBox(height: 18.v),
          Padding(
            padding: EdgeInsets.only(left: 28.h),
            child: Row(
              children: [
                Text(
                  "Sanskar",
                  style: theme.textTheme.headlineSmall,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 3.h,
                    top: 9.v,
                    bottom: 3.v,
                  ),
                  child: Text(
                    "2h",
                    style: theme.textTheme.titleSmall,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 5.v),
          Padding(
            padding: EdgeInsets.only(left: 28.h),
            child: Text(
              "Hii, myself Sanskar",
              style: theme.textTheme.bodyLarge,
            ),
          ),
          SizedBox(height: 5.v),
          Padding(
            padding: EdgeInsets.only(left: 28.h),
            child: _buildUserSection(
              context,
              twelve: "12",
              reply: "Reply",
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildThirtyFiveSection(BuildContext context) {
    return SizedBox(
      height: 442.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.only(left: 11.h),
              padding: EdgeInsets.symmetric(
                horizontal: 10.h,
                vertical: 16.v,
              ),
              decoration: AppDecoration.outlineBlack900011.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder24,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Yash",
                        style: theme.textTheme.headlineSmall,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 3.h,
                          top: 8.v,
                          bottom: 4.v,
                        ),
                        child: Text(
                          "2h",
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5.v),
                  Text(
                    "How was your day today?",
                    style: theme.textTheme.bodyLarge,
                  ),
                  SizedBox(height: 5.v),
                  _buildUserSection(
                    context,
                    twelve: "12",
                    reply: "Reply",
                  ),
                  SizedBox(height: 17.v),
                  Padding(
                    padding: EdgeInsets.only(left: 35.h),
                    child: _buildHowWasYourDaySection(
                      context,
                      userName: "Faiz",
                      time: "2h",
                    ),
                  ),
                  SizedBox(height: 5.v),
                  Padding(
                    padding: EdgeInsets.only(left: 35.h),
                    child: Text(
                      "Same as always :)",
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                  SizedBox(height: 5.v),
                  Padding(
                    padding: EdgeInsets.only(left: 35.h),
                    child: _buildUserSection(
                      context,
                      twelve: "12",
                      reply: "Reply",
                    ),
                  ),
                  SizedBox(height: 19.v),
                  Padding(
                    padding: EdgeInsets.only(left: 35.h),
                    child: _buildSameAsAlwaysSection(
                      context,
                      userName: "Akshit",
                      time: "2h",
                    ),
                  ),
                  SizedBox(height: 6.v),
                  Padding(
                    padding: EdgeInsets.only(left: 35.h),
                    child: Text(
                      "Not much good.",
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                  SizedBox(height: 5.v),
                  Padding(
                    padding: EdgeInsets.only(left: 35.h),
                    child: _buildUserSection(
                      context,
                      twelve: "12",
                      reply: "Reply",
                    ),
                  ),
                  SizedBox(height: 20.v),
                  Padding(
                    padding: EdgeInsets.only(left: 35.h),
                    child: Row(
                      children: [
                        Text(
                          "Teddy",
                          style: theme.textTheme.headlineSmall,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 4.h,
                            top: 7.v,
                            bottom: 5.v,
                          ),
                          child: Text(
                            "2h",
                            style: theme.textTheme.titleSmall,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 4.v),
                  Padding(
                    padding: EdgeInsets.only(left: 35.h),
                    child: Text(
                      "It was great>",
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                  SizedBox(height: 5.v),
                  Padding(
                    padding: EdgeInsets.only(left: 35.h),
                    child: _buildUserSection(
                      context,
                      twelve: "12",
                      reply: "Reply",
                    ),
                  ),
                  SizedBox(height: 15.v),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgGroup18,
            height: 145.v,
            width: 360.h,
            alignment: Alignment.bottomCenter,
            margin: EdgeInsets.only(bottom: 38.v),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildINeedParticipantsSection(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      color: appTheme.cyan100,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.roundedBorder24,
      ),
      child: Container(
        height: 104.v,
        width: 353.h,
        padding: EdgeInsets.symmetric(
          horizontal: 12.h,
          vertical: 5.v,
        ),
        decoration: AppDecoration.outlineBlack90001.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder24,
        ),
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 28.v),
                child: Text(
                  "I need participants for my project. Anyone?",
                  style: theme.textTheme.bodyLarge,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: EdgeInsets.only(right: 192.h),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildHowWasYourDaySection(
                      context,
                      userName: "Ajay",
                      time: "2h",
                    ),
                    SizedBox(height: 29.v),
                    _buildUserSection(
                      context,
                      twelve: "12",
                      reply: "Reply",
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildUserSection(
    BuildContext context, {
    required String twelve,
    required String reply,
  }) {
    return Row(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgUser,
          height: 20.adaptSize,
          width: 20.adaptSize,
        ),
        Padding(
          padding: EdgeInsets.only(left: 6.h),
          child: Text(
            twelve,
            style: theme.textTheme.titleMedium!.copyWith(
              color: appTheme.gray600,
            ),
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgBookmark,
          height: 20.adaptSize,
          width: 20.adaptSize,
          margin: EdgeInsets.only(
            left: 17.h,
            bottom: 2.v,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 5.h),
          child: Text(
            reply,
            style: theme.textTheme.titleMedium!.copyWith(
              color: appTheme.gray600,
            ),
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildHowWasYourDaySection(
    BuildContext context, {
    required String userName,
    required String time,
  }) {
    return Row(
      children: [
        Text(
          userName,
          style: theme.textTheme.headlineSmall!.copyWith(
            color: appTheme.deepPurple500,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 8.h,
            top: 9.v,
            bottom: 3.v,
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

  /// Common widget
  Widget _buildSameAsAlwaysSection(
    BuildContext context, {
    required String userName,
    required String time,
  }) {
    return Row(
      children: [
        Text(
          userName,
          style: theme.textTheme.headlineSmall!.copyWith(
            color: appTheme.deepPurple500,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 5.h,
            top: 10.v,
            bottom: 2.v,
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
