import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reo_resume/consts/app_colors.dart';
import 'package:reo_resume/providers/theme_provider.dart';
import 'package:reo_resume/screens/career_screen.dart';
import 'package:reo_resume/screens/education_screen.dart';
import 'package:reo_resume/screens/personal_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  final List<Map<String, dynamic>> _pages = [
    {
      'page': const PersonalScreen(),
      'title': 'Personal Screen',
    },
    {
      'page': const CareerScreen(),
      'title': 'Career Screen',
    },
    {
      'page': const EducationScreen(),
      'title': 'Education Screen',
    },
  ];
  void _selectedPage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    bool _isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _isDark ? Colors.black : AppColor.mainDarkColor,
        elevation: 0,
        actions: [
          DropdownButtonHideUnderline(
            child: Consumer<ThemeProvider>(builder: (context, provider, child) {
              return DropdownButton(
                  dropdownColor: _isDark ? Colors.grey.shade800 : Colors.white,
                  value: provider.currentTheme,
                  items: [
                    DropdownMenuItem(
                        value: 'light',
                        child: Text(
                          AppLocalizations.of(context)!.themeLight,
                          style: Theme.of(context).textTheme.bodyLarge,
                        )),
                    DropdownMenuItem(
                        value: 'dark',
                        child: Text(
                          AppLocalizations.of(context)!.themeDark,
                          style: Theme.of(context).textTheme.bodyLarge,
                        )),
                    DropdownMenuItem(
                        value: 'system',
                        child: Text(
                          AppLocalizations.of(context)!.themeSystem,
                          style: Theme.of(context).textTheme.bodyLarge,
                        )),
                  ],
                  onChanged: (value) {
                    provider.changeTheme(value ?? 'system');
                  });
            }),
          )
        ],
        //toolbarHeight: 40,
      ),
      body: _pages[_selectedIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          backgroundColor: _isDark ? Colors.black : Colors.white,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: _selectedIndex,
          unselectedItemColor: _isDark ? Colors.white24 : Colors.black26,
          selectedItemColor: _isDark ? Colors.white : Colors.black,
          onTap: _selectedPage,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: const Icon(Icons.person),
                label: AppLocalizations.of(context)!.personal),
            BottomNavigationBarItem(
                icon: const Icon(Icons.category),
                label: AppLocalizations.of(context)!.career),
            BottomNavigationBarItem(
                icon: const Icon(Icons.menu_book),
                label: AppLocalizations.of(context)!.education)
          ]),
    );
  }
}
