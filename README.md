# resume_app

This app is a minimalistic resume application which simply contains my social media usernames, what I can bring to the company and my educational background.

The Theme switching is handled with the help of a provider class in the providers directory.
This app can switch between dark and light mode. The theme can be switched with the dropdown menu present at the right side of the app bar.
It can also take the system default theme as well.

This app supports four languages (English, German, French and Spanish). The languages switches automatically to the device language.

The inspiration for the UI design is gotten from [Ardian Hadibiguna](https://dribbble.com/hadibiguna) and [Mickael Guillaume](https://dribbble.com/mickaeldll)

[Here](https://drive.google.com/file/d/1Z7GNojPnwroe6gR1RNCWJdndDxvkCa3T/view?usp=sharing) is the link to the apk.

Packages used in this project:

- [Provider Package](https://pub.dev/packages/provider): For State Management.
- [Shared Preferences](https://pub.dev/packages/shared_preferences): This helps to store the last selected theme before closing the app.
- [Google Fonts](https://pub.dev/packages/google_fonts): To use google fonts.
- [Font Awesome Flutter](https://pub.dev/packages/font_awesome_flutter): To use Font Awesome Icon Pack.
- [Flutter ScreenUtil](https://pub.dev/packages/flutter_screenutil): For UI responsiveness.
- [Intl](https://pub.dev/packages/intl): For localization.