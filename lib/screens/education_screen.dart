import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:reo_resume/consts/app_colors.dart';
import 'package:reo_resume/services/utils.dart';
import 'package:reo_resume/widgets/list_tile_widget.dart';
import 'package:reo_resume/widgets/text_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class EducationScreen extends StatelessWidget {
  const EducationScreen({Key? key}) : super(key: key);

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
            // decoration:  BoxDecoration(
            //     color: Colors.white,
            //     borderRadius: BorderRadius.only(
            //         topLeft: Radius.circular(15.r),
            //         topRight: Radius.circular(15.r))),
            child: Container(
              decoration: BoxDecoration(
                  color: _isDark ? Colors.black : Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15.r),
                      topRight: Radius.circular(15.r))),
              padding: EdgeInsets.all(10.w),
              child: Column(
                children: [
                  SizedBox(height: 50.h),
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
                  Wrap(children: [
                    TextWidget(
                      text: '${AppLocalizations.of(context)!.education}  ',
                      fontSize: 20.sp,
                      color: color,
                      //fontWeight: FontWeight.w200,
                    ),
                    Icon(
                      FontAwesomeIcons.graduationCap,
                      color: color,
                    )
                  ]),
                  SizedBox(
                      width: size.width * .7,
                      child: const Divider(thickness: 2)),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          ListTileWidget(
                            icon: FontAwesomeIcons.school,
                            color: _isDark ? Colors.white38 : Colors.black54,
                            title: TextWidget(
                              text:
                                  '${AppLocalizations.of(context)!.higherEducation} Benin',
                              fontSize: 15.sp,
                              color: color,
                            ),
                            subtitle: TextWidget(
                              text: AppLocalizations.of(context)!.date1,
                              fontSize: 13.sp,
                              color: _isDark ? Colors.white30 : Colors.grey,
                            ),
                          ),
                          const Divider(thickness: 2),
                          ListTileWidget(
                            icon: FontAwesomeIcons.school,
                            color: _isDark ? Colors.white38 : Colors.black54,
                            title: TextWidget(
                              text: 'Beulah Model College',
                              fontSize: 15.sp,
                              color: color,
                            ),
                            subtitle: TextWidget(
                              text: AppLocalizations.of(context)!.date2,
                              fontSize: 13.sp,
                              color: _isDark ? Colors.white30 : Colors.grey,
                            ),
                          ),
                          const Divider(thickness: 2),
                          ListTileWidget(
                            icon: FontAwesomeIcons.school,
                            color: _isDark ? Colors.white38 : Colors.black54,
                            title: TextWidget(
                              text: 'Beulah Montessori School',
                              fontSize: 15.sp,
                              color: color,
                            ),
                            subtitle: TextWidget(
                              text: AppLocalizations.of(context)!.date3,
                              fontSize: 13.sp,
                              color: _isDark ? Colors.white30 : Colors.grey,
                            ),
                          ),
                          const Divider(thickness: 2),
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
              const SizedBox(height: 5),
              Wrap(children: [
                TextWidget(
                  text: '${AppLocalizations.of(context)!.education}  ',
                  fontSize: 27.sp,
                  color: color,
                  //fontWeight: FontWeight.w200,
                ),
                Icon(
                  FontAwesomeIcons.graduationCap,
                  color: color,
                  size: 20,
                )
              ]),
              SizedBox(
                  width: size.width * .7, child: const Divider(thickness: 2)),
              ListTileWidget(
                icon: FontAwesomeIcons.school,
                iconSize: 20,
                color: _isDark ? Colors.white38 : Colors.black54,
                title: TextWidget(
                  text:
                      '${AppLocalizations.of(context)!.higherEducation} Benin',
                  fontSize: 24.sp,
                  color: color,
                ),
                subtitle: TextWidget(
                  text: AppLocalizations.of(context)!.date1,
                  fontSize: 20.sp,
                  color: _isDark ? Colors.white30 : Colors.grey,
                ),
              ),
              const Divider(thickness: 2),
              ListTileWidget(
                icon: FontAwesomeIcons.school,
                iconSize: 20,
                color: _isDark ? Colors.white38 : Colors.black54,
                title: TextWidget(
                  text: 'Beulah Model College',
                  fontSize: 24.sp,
                  color: color,
                ),
                subtitle: TextWidget(
                  text: AppLocalizations.of(context)!.date2,
                  fontSize: 20.sp,
                  color: _isDark ? Colors.white30 : Colors.grey,
                ),
              ),
              const Divider(thickness: 2),
              ListTileWidget(
                icon: FontAwesomeIcons.school,
                iconSize: 20,
                color: _isDark ? Colors.white38 : Colors.black54,
                title: TextWidget(
                  text: 'Beulah Montessori School',
                  fontSize: 24.sp,
                  color: color,
                ),
                subtitle: TextWidget(
                  text: AppLocalizations.of(context)!.date3,
                  fontSize: 20.sp,
                  color: _isDark ? Colors.white30 : Colors.grey,
                ),
              ),
              const Divider(thickness: 2),
            ],
          ),
        ),
      ],
    );
  }
}
