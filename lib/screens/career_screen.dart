import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reo_resume/consts/app_colors.dart';
import 'package:reo_resume/services/utils.dart';
import 'package:reo_resume/widgets/text_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CareerScreen extends StatelessWidget {
  const CareerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool _isDark = Theme.of(context).brightness == Brightness.dark;
    return SafeArea(
      child: Scaffold(
        backgroundColor: _isDark ? Colors.black : Colors.white,
        body: OrientationBuilder(
            builder: (context, orientation) =>
                orientation == Orientation.portrait
                    ? buildPortrait(context)
                    : buildLandscape(context)),
      ),
    );
  }

  Widget buildLandscape(context) {
    Size size = Utils(context).getScreenSize;
    final Color color = Utils(context).color;
    bool _isDark = Theme.of(context).brightness == Brightness.dark;
    return Row(
      children: [
        Hero(
          tag: 'image',
          child: Container(
            width: size.width * .27,
            height: size.width * .33,
            decoration: BoxDecoration(
              image: const DecorationImage(
                  image: AssetImage(
                    'images/image_avatar.jpg',
                  ),
                  fit: BoxFit.fitHeight),
              borderRadius: BorderRadius.circular(20.r),
              border: Border.all(
                  color: _isDark ? Colors.white : Colors.black54, width: 3),
            ),
          ),
        ),
        SizedBox(width: 10.w),
        Flexible(
          child: ListView(
            children: [
              TextWidget(
                text: 'Ohiocheoya Emmanuel',
                fontSize: 33.sp,
                fontWeight: FontWeight.w500,
                color: color,
              ),
              TextWidget(
                text: 'Flutter ${AppLocalizations.of(context)!.developer}',
                fontSize: 30.sp,
                //fontWeight: FontWeight.w500,
                color: _isDark ? Colors.white38 : Colors.grey.shade700,
              ),
              //const SizedBox(height: 10),
              //const Divider(thickness: 2),
              SizedBox(height: 20.h),
              TextWidget(
                text: AppLocalizations.of(context)!.careerHeading,
                fontSize: 27.sp,
                color: color,
                //fontWeight: FontWeight.w200,
              ),
              SizedBox(
                  width: size.width * .7, child: const Divider(thickness: 2)),
              TextWidget(
                text: '• ${AppLocalizations.of(context)!.canDo1}',
                fontSize: 24.sp,
                color: color,
              ),
              SizedBox(height: 20.h),
              TextWidget(
                text: '• ${AppLocalizations.of(context)!.canDo2}',
                fontSize: 24.sp,
                color: color,
              ),
              SizedBox(height: 20.h),
              TextWidget(
                text: '• ${AppLocalizations.of(context)!.canDo3}',
                fontSize: 24.sp,
                color: color,
              ),
              SizedBox(height: 20.h),
              TextWidget(
                text: '• ${AppLocalizations.of(context)!.canDo4}',
                fontSize: 24.sp,
                color: color,
              ),
              SizedBox(height: 20.h),
              TextWidget(
                text: '• ${AppLocalizations.of(context)!.canDo5}',
                fontSize: 24.sp,
                color: color,
              ),
              SizedBox(height: 20.h),
              TextWidget(
                text: '• ${AppLocalizations.of(context)!.canDo6}',
                fontSize: 24.sp,
                color: color,
              ),
              SizedBox(height: 20.h),
            ],
          ),
        ),

        //Image Avatar
      ],
    );
  }

  Widget buildPortrait(context) {
    Size size = Utils(context).getScreenSize;
    final Color color = Utils(context).color;
    bool _isDark = Theme.of(context).brightness == Brightness.dark;
    return Stack(
      children: [
        Container(
          height: size.height * .15,
          color: _isDark ? Colors.black : AppColor.mainDarkColor,
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: SizedBox(
            width: size.width,
            height: size.height * .76,
            // decoration: const BoxDecoration(
            //     color: Colors.white,
            //     borderRadius: BorderRadius.only(
            //         topLeft: Radius.circular(15),
            //         topRight: Radius.circular(15))),
            child: Container(
              decoration: BoxDecoration(
                  color: _isDark ? Colors.black : Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15.r),
                      topRight: Radius.circular(15.r))),
              padding: EdgeInsets.all(20.w),
              child: Column(
                children: [
                  SizedBox(height: 40.h),
                  TextWidget(
                    text: 'Ohiocheoya Emmanuel',
                    fontSize: 28.sp,
                    fontWeight: FontWeight.w500,
                    color: color,
                  ),

                  TextWidget(
                    text: 'Flutter ${AppLocalizations.of(context)!.developer}',
                    fontSize: 18.sp,
                    //fontWeight: FontWeight.w500,
                    color: _isDark ? Colors.white38 : Colors.grey.shade700,
                  ),
                  //const SizedBox(height: 10),
                  //const Divider(thickness: 2),
                  SizedBox(height: 10.h),
                  TextWidget(
                    text: AppLocalizations.of(context)!.careerHeading,
                    fontSize: 20.sp,
                    color: color,
                    //fontWeight: FontWeight.w200,
                  ),
                  SizedBox(
                      width: size.width * .7,
                      child: const Divider(thickness: 2)),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          TextWidget(
                            text: '• ${AppLocalizations.of(context)!.canDo1}',
                            fontSize: 16.sp,
                            color: color,
                          ),
                          SizedBox(height: 5.h),
                          TextWidget(
                            text: '• ${AppLocalizations.of(context)!.canDo2}',
                            fontSize: 16.sp,
                            color: color,
                          ),
                          SizedBox(height: 5.h),
                          TextWidget(
                            text: '• ${AppLocalizations.of(context)!.canDo3}',
                            fontSize: 16.sp,
                            color: color,
                          ),
                          SizedBox(height: 5.h),
                          TextWidget(
                            text: '• ${AppLocalizations.of(context)!.canDo4}',
                            fontSize: 16.sp,
                            color: color,
                          ),
                          SizedBox(height: 5.h),
                          TextWidget(
                            text: '• ${AppLocalizations.of(context)!.canDo5}',
                            fontSize: 16.sp,
                            color: color,
                          ),
                          SizedBox(height: 5.h),
                          TextWidget(
                            text: '• ${AppLocalizations.of(context)!.canDo6}',
                            fontSize: 16.sp,
                            color: color,
                          ),
                          SizedBox(height: 5.h),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        //Image Avatar
        Positioned(
            left: size.width * .37,
            //top: size.height * .03,
            child: Hero(
              tag: 'image',
              child: Container(
                width: size.width * .27,
                height: size.width * .27,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: AssetImage(
                        'images/image_avatar.jpg',
                      ),
                      fit: BoxFit.fill),
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.white, width: 3),
                ),
              ),
            ))
      ],
    );
  }
}
