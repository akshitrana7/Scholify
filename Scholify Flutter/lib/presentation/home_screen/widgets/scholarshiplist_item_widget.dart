import 'package:faiz_s_application/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ScholarshiplistItemWidget extends StatelessWidget {
  const ScholarshiplistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.h),
      decoration: AppDecoration.outlineBlack90001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 3.v),
          Text(
            "United Nations Univeristy – Visiting PhD Fellowship",
            style: theme.textTheme.headlineMedium!.copyWith(
              decoration: TextDecoration.underline,
            ),
          ),
          SizedBox(height: 1.v),
          Container(
            width: 275.h,
            margin: EdgeInsets.only(right: 25.h),
            child: Text(
              "Formerly known as the PhD Internship Programme, Visiting PhD Fellowship offers a possibility to develop their research within UN international research institute for prospective doctoral students. Admitted fellows are given a chance to collaborate with researchers from other Universities in the area of common interest and to spend three consecutive months at UNU-WIDER. During their time in Helsinki, fellows prepare research papers which can also be published in the WIDER Working Paper Series. In order to be admitted, applicants must be enrolled in a PhD programme and must show the ability to conduct research. Successful candidates are offered financial assistance which includes travel costs, medical insurance and a monthly stipend of EUR 1,600 to cover living expenses in Helsinki during the period of the fellowship.",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodyLargeDeeppurple500,
            ),
          ),
          Text(
            "100,000 USD",
            style: CustomTextStyles.titleMediumIstokWebGreen900,
          ),
        ],
      ),
    );
  }
}
