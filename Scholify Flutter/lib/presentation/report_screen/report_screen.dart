import 'package:faiz_s_application/core/app_export.dart';
import 'package:faiz_s_application/widgets/custom_drop_down.dart';
import 'package:faiz_s_application/widgets/custom_elevated_button.dart';
import 'package:faiz_s_application/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class ReportScreen extends StatelessWidget {
  ReportScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController editTextController = TextEditingController();

  TextEditingController designationAndEditTextSectionController =
      TextEditingController();

  List<String> dropdownItemList = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  TextEditingController detailsOfYourAndEditTextSectionController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray300,
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildRaiseAComplaintSection(context),
              SizedBox(height: 50.v),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 17.h),
                padding: EdgeInsets.symmetric(
                  horizontal: 15.h,
                  vertical: 21.v,
                ),
                decoration: AppDecoration.outlineBlack900012.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder8,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 8.v),
                    _buildCulpritNameAndEditTextSection(context),
                    SizedBox(height: 33.v),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 4.h,
                        right: 6.h,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              top: 3.v,
                              bottom: 1.v,
                            ),
                            child: Text(
                              "Designation:",
                              style: CustomTextStyles.titleMediumWhiteA700,
                            ),
                          ),
                          _buildDesignationAndEditTextSection(context),
                        ],
                      ),
                    ),
                    SizedBox(height: 33.v),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 4.h,
                        right: 6.h,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 83.h,
                            margin: EdgeInsets.only(top: 1.v),
                            child: Text(
                              "Nature of \nComplaint:",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.titleMediumWhiteA700,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 58.h,
                              bottom: 19.v,
                            ),
                            child: CustomDropDown(
                              width: 144.h,
                              icon: Container(
                                margin: EdgeInsets.only(left: 30.h),
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgArrowdown,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize,
                                ),
                              ),
                              items: dropdownItemList,
                              onChanged: (value) {},
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 38.v),
                    Container(
                      width: 112.h,
                      margin: EdgeInsets.only(left: 4.h),
                      child: Text(
                        "Details of your \nComplaint:",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.titleMediumWhiteA700,
                      ),
                    ),
                    SizedBox(height: 11.v),
                    _buildDetailsOfYourAndEditTextSection(context),
                  ],
                ),
              ),
              SizedBox(height: 30.v),
              _buildSubmitButtonSection(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBarSection(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildRaiseAComplaintSection(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 36.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.fillDeepOrangeA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder34,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 4.v),
          Text(
            "Raise a Complaint",
            style: theme.textTheme.headlineLarge,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEditText(BuildContext context) {
    return CustomTextFormField(
      width: 144.h,
      controller: editTextController,
    );
  }

  /// Section Widget
  Widget _buildCulpritNameAndEditTextSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 4.v),
            child: Text(
              "Culprit Name:",
              style: CustomTextStyles.titleMediumWhiteA700,
            ),
          ),
          _buildEditText(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDesignationAndEditTextSection(BuildContext context) {
    return CustomTextFormField(
      width: 144.h,
      controller: designationAndEditTextSectionController,
    );
  }

  /// Section Widget
  Widget _buildDetailsOfYourAndEditTextSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: CustomTextFormField(
        controller: detailsOfYourAndEditTextSectionController,
        textInputAction: TextInputAction.done,
        borderDecoration: TextFormFieldStyleHelper.fillGrayTL10,
      ),
    );
  }

  /// Section Widget
  Widget _buildSubmitButtonSection(BuildContext context) {
    return CustomElevatedButton(
      width: 154.h,
      text: "Submit",
    );
  }

  /// Section Widget
  Widget _buildBottomBarSection(BuildContext context) {
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
        imagePath: ImageConstant.imgBottomBarWhiteA700,
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
