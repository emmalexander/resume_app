import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_de.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_fr.dart';

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'gen_l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('de'),
    Locale('en'),
    Locale('es'),
    Locale('fr')
  ];

  /// The current Language
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get language;

  /// socials
  ///
  /// In en, this message translates to:
  /// **'Socials'**
  String get socials;

  /// developer
  ///
  /// In en, this message translates to:
  /// **'Developer'**
  String get developer;

  /// What I can do
  ///
  /// In en, this message translates to:
  /// **'What I can do for you?'**
  String get careerHeading;

  /// Can do 1
  ///
  /// In en, this message translates to:
  /// **'Building application user interfaces (UIs) to provide mobile functionality with Flutter.'**
  String get canDo1;

  /// Can do 2
  ///
  /// In en, this message translates to:
  /// **'Keeping up to date with the vocabulary, concepts, and best practices for coding mobile apps discussing the client\'s requirements and the proposed solution with colleagues.'**
  String get canDo2;

  /// Can do 3
  ///
  /// In en, this message translates to:
  /// **'Adapting and repurposing current online applications for mobile applications.'**
  String get canDo3;

  /// Can do 4
  ///
  /// In en, this message translates to:
  /// **'Experience with MVC frameworks, REST/RPC API design and development.'**
  String get canDo4;

  /// Can do 5
  ///
  /// In en, this message translates to:
  /// **'Experience in communicating with users, other technical teams, and management to collect requirements, describe software product features, and technical designs.'**
  String get canDo5;

  /// Can do 6
  ///
  /// In en, this message translates to:
  /// **'Ability to take a project from scoping requirements through actual launch of the project.'**
  String get canDo6;

  /// Education
  ///
  /// In en, this message translates to:
  /// **'Education'**
  String get education;

  /// Higher Education Cert
  ///
  /// In en, this message translates to:
  /// **'Bachelor of Engineering from the University of'**
  String get higherEducation;

  /// Oct 2015 - Sept 2021
  ///
  /// In en, this message translates to:
  /// **'Oct 2015 - Sept 2021'**
  String get date1;

  /// Oct 2010 - May 2015
  ///
  /// In en, this message translates to:
  /// **'Oct 2010 - May 2015'**
  String get date2;

  /// Oct 2005 - Sept 2010
  ///
  /// In en, this message translates to:
  /// **'Oct 2005 - Sept 2010'**
  String get date3;

  /// Light Mode
  ///
  /// In en, this message translates to:
  /// **'Light'**
  String get themeLight;

  /// Dark Mode
  ///
  /// In en, this message translates to:
  /// **'Dark'**
  String get themeDark;

  /// System Mode
  ///
  /// In en, this message translates to:
  /// **'System'**
  String get themeSystem;

  /// Personal
  ///
  /// In en, this message translates to:
  /// **'Personal'**
  String get personal;

  /// Career
  ///
  /// In en, this message translates to:
  /// **'Career'**
  String get career;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['de', 'en', 'es', 'fr'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'de': return AppLocalizationsDe();
    case 'en': return AppLocalizationsEn();
    case 'es': return AppLocalizationsEs();
    case 'fr': return AppLocalizationsFr();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
