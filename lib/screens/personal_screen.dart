import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reo_resume/consts/app_colors.dart';
import 'package:reo_resume/services/utils.dart';
import 'package:reo_resume/widgets/list_tile_widget.dart';
import 'package:reo_resume/widgets/text_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PersonalScreen extends StatelessWidget {
  const PersonalScreen({Key? key}) : super(key: key);

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

  Widget buildPortrait(context) {
    final Color color = Utils(context).color;
    Size size = Utils(context).getScreenSize;
    //final themeState = Provider.of<ThemeProvider>(context);
    bool _isDark = Theme.of(context).brightness == Brightness.dark;
    return Stack(
      children: [
        Container(
          height: size.height * .33,
          color: _isDark ? Colors.black : AppColor.mainDarkColor,
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: SizedBox(
            width: size.width,
            height: size.height * .74,
            // decoration: BoxDecoration(
            //     color: _isDark ? Colors.black87 : Colors.white,
            //     borderRadius: const BorderRadius.only(
            //         topLeft: Radius.circular(15),
            //         topRight: Radius.circular(15))),
            child: Container(
              //color: _isDark ? Colors.black87 : Colors.white,
              decoration: BoxDecoration(
                  color: _isDark ? Colors.black : Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15.r),
                      topRight: Radius.circular(15.r))),
              padding: EdgeInsets.all(10.w),
              child: Column(
                children: [
                  SizedBox(height: 80.h),
                  TextWidget(
                    text: 'Ohiocheoya Emmanuel',
                    fontSize: 28.sp,
                    fontWeight: FontWeight.w500,
                    color: color,
                  ),
                  TextWidget(
                    text: 'Emmalexander',
                    fontSize: 25.sp,
                    fontWeight: FontWeight.w400,
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
                  //SizedBox(height: 5.h),
                  TextWidget(
                    text: AppLocalizations.of(context)!.socials,
                    fontSize: 20.sp,
                    color: color,
                    //fontWeight: FontWeight.w200,
                  ),
                  SizedBox(
                      width: size.width * .6,
                      child: const Divider(thickness: 2)),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          ListTileWidget(
                            icon: FontAwesomeIcons.envelope,
                            color: Colors.blueGrey,
                            title: TextWidget(
                                text: 'emmanuelohiocheoya@gmail.com',
                                color: color,
                                fontSize: 14.sp),
                          ),
                          ListTileWidget(
                            icon: FontAwesomeIcons.linkedin,
                            color: Colors.blue.shade800,
                            title: TextWidget(
                              text: 'emmanuel-ohiocheoya',
                              fontSize: 15.sp,
                              color: color,
                            ),
                          ),
                          ListTileWidget(
                              icon: FontAwesomeIcons.twitter,
                              color: Colors.blue,
                              title: TextWidget(
                                text: 'OhioNuel',
                                fontSize: 15.sp,
                                color: color,
                              )),
                          ListTileWidget(
                              icon: FontAwesomeIcons.meta,
                              color: Colors.blue,
                              title: TextWidget(
                                text: 'ohiocheoya-emmanuel',
                                fontSize: 15.sp,
                                color: color,
                              )),
                          ListTileWidget(
                              icon: FontAwesomeIcons.instagram,
                              color: Colors.red.shade300,
                              title: TextWidget(
                                text: 'reonuel',
                                fontSize: 15.sp,
                                color: color,
                              )),
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
            left: size.width * .32,
            //bottom: size.height * .6,
            child: Hero(
              tag: 'image',
              child: Container(
                width: size.width * .37,
                height: size.width * .37,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: AssetImage(
                        'images/image_avatar.jpg',
                      ),
                      fit: BoxFit.fill),
                  borderRadius: BorderRadius.circular(50.r),
                  border: Border.all(color: Colors.white, width: 3),
                ),
              ),
            ))
      ],
    );
  }

  Widget buildLandscape(context) {
    final Color color = Utils(context).color;
    Size size = Utils(context).getScreenSize;
    //final themeState = Provider.of<ThemeProvider>(context);
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
                fontSize: 30.sp,
                fontWeight: FontWeight.w500,
                color: color,
              ),
              TextWidget(
                text: 'Emmalexander',
                fontSize: 28.sp,
                fontWeight: FontWeight.w400,
                color: color,
              ),
              TextWidget(
                text: 'Flutter ${AppLocalizations.of(context)!.developer}',
                fontSize: 26.sp,
                //fontWeight: FontWeight.w500,
                color: _isDark ? Colors.white38 : Colors.grey.shade700,
              ),
              //const SizedBox(height: 10),
              //const Divider(thickness: 2),
              SizedBox(height: 5.h),
              TextWidget(
                text: AppLocalizations.of(context)!.socials,
                fontSize: 23.sp,
                color: color,
                //fontWeight: FontWeight.w200,
              ),
              SizedBox(
                  width: size.width * .6, child: const Divider(thickness: 2)),
              ListTileWidget(
                icon: FontAwesomeIcons.envelope,
                color: Colors.blueGrey,
                title: TextWidget(
                    text: 'emmanuelohiocheoya@gmail.com',
                    color: color,
                    fontSize: 25.sp),
              ),
              ListTileWidget(
                icon: FontAwesomeIcons.linkedin,
                color: Colors.blue.shade800,
                title: TextWidget(
                  text: 'emmanuel-ohiocheoya',
                  fontSize: 25.sp,
                  color: color,
                ),
              ),
              ListTileWidget(
                  icon: FontAwesomeIcons.twitter,
                  color: Colors.blue,
                  title: TextWidget(
                    text: 'OhioNuel',
                    fontSize: 25.sp,
                    color: color,
                  )),
              ListTileWidget(
                  icon: FontAwesomeIcons.meta,
                  color: Colors.blue,
                  title: TextWidget(
                    text: 'ohiocheoya-emmanuel',
                    fontSize: 25.sp,
                    color: color,
                  )),
              ListTileWidget(
                  icon: FontAwesomeIcons.instagram,
                  color: Colors.red.shade300,
                  title: TextWidget(
                    text: 'reonuel',
                    fontSize: 25.sp,
                    color: color,
                  )),
            ],
          ),
        ),
      ],
    );
  }
}
