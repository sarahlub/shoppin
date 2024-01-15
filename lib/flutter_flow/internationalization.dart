import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'es', 'de', 'fr'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? esText = '',
    String? deText = '',
    String? frText = '',
  }) =>
      [enText, esText, deText, frText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // mainHomePage
  {
    '3zw5e4jz': {
      'en': 'Featured Products ',
      'de': '',
      'es': '',
      'fr': '',
    },
    'g8b0s79l': {
      'en': 'View our latest products from across our store below.',
      'de': '',
      'es': '',
      'fr': '',
    },
    'hcp6ssy1': {
      'en': 'Fresh Fish',
      'de': '',
      'es': '',
      'fr': '',
    },
    '9xk2thwj': {
      'en': '3.1k Products',
      'de': '',
      'es': '',
      'fr': '',
    },
    'i5dr8d6u': {
      'en': 'Smoked Fish',
      'de': '',
      'es': '',
      'fr': '',
    },
    'vm34k0gy': {
      'en': '1.4k Products',
      'de': '',
      'es': '',
      'fr': '',
    },
    '1y0lyt8q': {
      'en': 'Shrimps',
      'de': '',
      'es': '',
      'fr': '',
    },
    'q8fltmt6': {
      'en': '320 Products',
      'de': '',
      'es': '',
      'fr': '',
    },
    'gopg9ww2': {
      'en': 'Fresh Fish',
      'de': '',
      'es': '',
      'fr': '',
    },
    '95jyfenz': {
      'en': 'Shrimps',
      'de': '',
      'es': '',
      'fr': '',
    },
    '7qseb7qj': {
      'en': 'Smoked Fish',
      'de': '',
      'es': '',
      'fr': '',
    },
    'wv2rsr1u': {
      'en': 'Snails',
      'de': '',
      'es': '',
      'fr': '',
    },
    '6n2bsulc': {
      'en': 'Crabs',
      'de': '',
      'es': '',
      'fr': '',
    },
    '5y55ni8w': {
      'en': 'Fresh Fish',
      'de': '',
      'es': '',
      'fr': '',
    },
    'lcf27cbq': {
      'en': 'Order Summary',
      'de': '',
      'es': '',
      'fr': '',
    },
    'ncrtjk30': {
      'en': 'Below is a list of your items.',
      'de': '',
      'es': '',
      'fr': '',
    },
    '207xyrfr': {
      'en': 'Quanity: 1',
      'de': '',
      'es': '',
      'fr': '',
    },
    'zvrmd9v4': {
      'en': 'Air Max',
      'de': '',
      'es': '',
      'fr': '',
    },
    '2vmvwadw': {
      'en': '\$117.00',
      'de': '',
      'es': '',
      'fr': '',
    },
    'pujourrq': {
      'en': 'Quanity: 1',
      'de': '',
      'es': '',
      'fr': '',
    },
    'igunqflb': {
      'en': 'Total',
      'de': '',
      'es': '',
      'fr': '',
    },
    'r7396la1': {
      'en': 'Checkout',
      'de': '',
      'es': '',
      'fr': '',
    },
    'lquuaaj7': {
      'en': '__',
      'de': '',
      'es': '',
      'fr': '',
    },
  },
  // productDetails
  {
    'wghw4cez': {
      'en': 'Product Details',
      'de': '',
      'es': '',
      'fr': '',
    },
    'z2btbqgz': {
      'en': 'Shoe Size',
      'de': '',
      'es': '',
      'fr': '',
    },
    'h179r5gy': {
      'en': 'Size 8',
      'de': '',
      'es': '',
      'fr': '',
    },
    '7piolwm2': {
      'en': 'Size 9',
      'de': '',
      'es': '',
      'fr': '',
    },
    'p2492ulr': {
      'en': 'Size 10',
      'de': '',
      'es': '',
      'fr': '',
    },
    '8qv0vstp': {
      'en': 'Size 11',
      'de': '',
      'es': '',
      'fr': '',
    },
    '4adr13a9': {
      'en': 'Size 12',
      'de': '',
      'es': '',
      'fr': '',
    },
    'v6ad547c': {
      'en': 'Size 13',
      'de': '',
      'es': '',
      'fr': '',
    },
    'zvwwbre5': {
      'en': 'Size 8',
      'de': '',
      'es': '',
      'fr': '',
    },
    'r8kdo7it': {
      'en': 'Color',
      'de': '',
      'es': '',
      'fr': '',
    },
    '4ayn4x0z': {
      'en': 'Gray',
      'de': '',
      'es': '',
      'fr': '',
    },
    'y14p8r56': {
      'en': 'White',
      'de': '',
      'es': '',
      'fr': '',
    },
    'jkcqt5p5': {
      'en': 'Black & Charcoal',
      'de': '',
      'es': '',
      'fr': '',
    },
    'mayjbgxg': {
      'en': 'Blue & White',
      'de': '',
      'es': '',
      'fr': '',
    },
    'c1tqdbid': {
      'en': 'Gray',
      'de': '',
      'es': '',
      'fr': '',
    },
    'hre4psm5': {
      'en': ' Size',
      'de': '',
      'es': '',
      'fr': '',
    },
    '1ji5n9su': {
      'en': 'small',
      'de': '',
      'es': '',
      'fr': '',
    },
    '77dcwl4c': {
      'en': 'medium',
      'de': '',
      'es': '',
      'fr': '',
    },
    'hkoikk6l': {
      'en': 'big',
      'de': '',
      'es': '',
      'fr': '',
    },
    'bf2b34pu': {
      'en': 'extra big',
      'de': '',
      'es': '',
      'fr': '',
    },
    'qczz5jwr': {
      'en': 'jumbo',
      'de': '',
      'es': '',
      'fr': '',
    },
    'rwlmuf3x': {
      'en': 'small',
      'de': '',
      'es': '',
      'fr': '',
    },
    'g6yrtsw6': {
      'en': 'Color',
      'de': '',
      'es': '',
      'fr': '',
    },
    'ji1mh09q': {
      'en': 'Gray',
      'de': '',
      'es': '',
      'fr': '',
    },
    '6w4kkly4': {
      'en': 'White',
      'de': '',
      'es': '',
      'fr': '',
    },
    'j4u0rpbq': {
      'en': 'Black & Charcoal',
      'de': '',
      'es': '',
      'fr': '',
    },
    '8emszwrq': {
      'en': 'Blue & White',
      'de': '',
      'es': '',
      'fr': '',
    },
    '5js09b9y': {
      'en': 'Gray',
      'de': '',
      'es': '',
      'fr': '',
    },
    'n2rku45k': {
      'en': 'Tomisin',
      'de': '',
      'es': '',
      'fr': '',
    },
    'a64co8au': {
      'en': '240 Sales',
      'de': '',
      'es': '',
      'fr': '',
    },
    'o4gjhe64': {
      'en': 'Makoko, Lagos',
      'de': '',
      'es': '',
      'fr': '',
    },
    'yzd1od0t': {
      'en': 'Ratings',
      'de': '',
      'es': '',
      'fr': '',
    },
    'droykuiq': {
      'en': 'Read the ratings for this product below',
      'de': '',
      'es': '',
      'fr': '',
    },
    'm30o0ffd': {
      'en': 'Leave Review',
      'de': '',
      'es': '',
      'fr': '',
    },
    'at6zn327': {
      'en': 'Overall',
      'de': '',
      'es': '',
      'fr': '',
    },
    'jh4vix9n': {
      'en': 'Add to Cart',
      'de': '',
      'es': '',
      'fr': '',
    },
    'nl5kab4k': {
      'en': 'Page Title',
      'de': '',
      'es': '',
      'fr': '',
    },
    'tl5w2hi4': {
      'en': 'Home',
      'de': '',
      'es': '',
      'fr': '',
    },
  },
  // fullCartView
  {
    'rme2bpd2': {
      'en': 'My Cart',
      'de': '',
      'es': '',
      'fr': '',
    },
    '1j34un40': {
      'en': 'Your Cart',
      'de': '',
      'es': '',
      'fr': '',
    },
    'qnwwiuc0': {
      'en': 'Clear Cart',
      'de': '',
      'es': '',
      'fr': '',
    },
    'jogpr4j1': {
      'en': 'Below is the list of items in your cart.',
      'de': '',
      'es': '',
      'fr': '',
    },
    'l3frrwkd': {
      'en': 'Quanity',
      'de': '',
      'es': '',
      'fr': '',
    },
    'vi6rmzfl': {
      'en': 'Item Price (',
      'de': '',
      'es': '',
      'fr': '',
    },
    'j9obc7bn': {
      'en': ')',
      'de': '',
      'es': '',
      'fr': '',
    },
    'rfbwe6ov': {
      'en': 'Remove',
      'de': '',
      'es': '',
      'fr': '',
    },
    'kjxy8g4h': {
      'en': 'Order Summary',
      'de': '',
      'es': '',
      'fr': '',
    },
    'egjdjp2u': {
      'en': 'Below is a list of your items.',
      'de': '',
      'es': '',
      'fr': '',
    },
    'ojpf1s1y': {
      'en': 'Price Breakdown',
      'de': '',
      'es': '',
      'fr': '',
    },
    'ga8ktgw4': {
      'en': 'Sub Total',
      'de': '',
      'es': '',
      'fr': '',
    },
    'c6d463ut': {
      'en': 'Taxes',
      'de': '',
      'es': '',
      'fr': '',
    },
    '6bnpl3fs': {
      'en': 'Shipping Fee',
      'de': '',
      'es': '',
      'fr': '',
    },
    '41amsrb0': {
      'en': 'Total',
      'de': '',
      'es': '',
      'fr': '',
    },
    'g5m7bu2f': {
      'en': 'Checkout Now',
      'de': '',
      'es': '',
      'fr': '',
    },
    'c3flze6z': {
      'en': 'Home',
      'de': '',
      'es': '',
      'fr': '',
    },
  },
  // mainFavorites
  {
    'zxtln8ol': {
      'en': 'My Favorites',
      'de': '',
      'es': '',
      'fr': '',
    },
    '4fwh6pxk': {
      'en': 'Below are your items that you have favorited.',
      'de': '',
      'es': '',
      'fr': '',
    },
    'fk4t12h5': {
      'en': 'My Favorites',
      'de': '',
      'es': '',
      'fr': '',
    },
    'r13uku1m': {
      'en': '__',
      'de': '',
      'es': '',
      'fr': '',
    },
  },
  // sellerDetails
  {
    'xp3k9uo6': {
      'en': 'Product Details',
      'de': '',
      'es': '',
      'fr': '',
    },
    'recmxv1z': {
      'en': 'Seller Details',
      'de': '',
      'es': '',
      'fr': '',
    },
    'nm85o1zu': {
      'en': 'Randy Alcorn',
      'de': '',
      'es': '',
      'fr': '',
    },
    'igyjsan9': {
      'en': '240 Sales',
      'de': '',
      'es': '',
      'fr': '',
    },
    'v9iy1tiz': {
      'en': 'San Antonio, Tx.',
      'de': '',
      'es': '',
      'fr': '',
    },
    'wnemwnep': {
      'en': 'Tomisin',
      'de': '',
      'es': '',
      'fr': '',
    },
    's68lfylu': {
      'en': '240 Sales',
      'de': '',
      'es': '',
      'fr': '',
    },
    'xvgn05g3': {
      'en': 'Makoko, Lagos',
      'de': '',
      'es': '',
      'fr': '',
    },
    'sioyk981': {
      'en': 'Purchased Items',
      'de': '',
      'es': '',
      'fr': '',
    },
    '1fgo9413': {
      'en': 'Fresh Cat Fish',
      'de': '',
      'es': '',
      'fr': '',
    },
    'gwh84tik': {
      'en': 'Ordered on Dec 15, 2023',
      'de': '',
      'es': '',
      'fr': '',
    },
    '40j4sjcj': {
      'en': '#2500.20',
      'de': '',
      'es': '',
      'fr': '',
    },
    'jd38hyuu': {
      'en': 'Fresh mackerel fish',
      'de': '',
      'es': '',
      'fr': '',
    },
    'g2gazda8': {
      'en': 'Ordered on Dec 15, 2023',
      'de': '',
      'es': '',
      'fr': '',
    },
    'o8ty4e6u': {
      'en': '#1200.00',
      'de': '',
      'es': '',
      'fr': '',
    },
    'pcsyvjid': {
      'en': 'Fresh tilapia fish',
      'de': '',
      'es': '',
      'fr': '',
    },
    'qop0utq4': {
      'en': 'Ordered on Dec 15, 2023',
      'de': '',
      'es': '',
      'fr': '',
    },
    '0f9ghbdy': {
      'en': '#950.00',
      'de': '',
      'es': '',
      'fr': '',
    },
    '9k9o1usz': {
      'en': 'Fresh jumbo prawns',
      'de': '',
      'es': '',
      'fr': '',
    },
    'zwsyb75n': {
      'en': 'Ordered on Dec 15, 2023',
      'de': '',
      'es': '',
      'fr': '',
    },
    '7h13vm1y': {
      'en': '#3200.00',
      'de': '',
      'es': '',
      'fr': '',
    },
    'nzb9quxn': {
      'en': 'Sold Items',
      'de': '',
      'es': '',
      'fr': '',
    },
    'tms7z9l0': {
      'en': 'Vitsoe 1982',
      'de': '',
      'es': '',
      'fr': '',
    },
    'zukvebil': {
      'en': 'Ordered on Feb 15, 2022',
      'de': '',
      'es': '',
      'fr': '',
    },
    'ny33f3sg': {
      'en': '\$126.20',
      'de': '',
      'es': '',
      'fr': '',
    },
    '9znic1t6': {
      'en': 'Vitsoe 1982',
      'de': '',
      'es': '',
      'fr': '',
    },
    'nmfxcvuy': {
      'en': 'Ordered on Feb 15, 2022',
      'de': '',
      'es': '',
      'fr': '',
    },
    'mtekn84b': {
      'en': '\$126.20',
      'de': '',
      'es': '',
      'fr': '',
    },
    '6z2f0xtb': {
      'en': 'Vitsoe 1982',
      'de': '',
      'es': '',
      'fr': '',
    },
    '23xtih5e': {
      'en': 'Ordered on Feb 15, 2022',
      'de': '',
      'es': '',
      'fr': '',
    },
    'qu1tcewe': {
      'en': '\$126.20',
      'de': '',
      'es': '',
      'fr': '',
    },
    'updre08g': {
      'en': 'Vitsoe 1982',
      'de': '',
      'es': '',
      'fr': '',
    },
    '2u4kw89o': {
      'en': 'Ordered on Feb 15, 2022',
      'de': '',
      'es': '',
      'fr': '',
    },
    'i3rbdgg3': {
      'en': '\$126.20',
      'de': '',
      'es': '',
      'fr': '',
    },
    '3wqz9aas': {
      'en': 'Reviews',
      'de': '',
      'es': '',
      'fr': '',
    },
    'rit8s57n': {
      'en': 'UserName',
      'de': '',
      'es': '',
      'fr': '',
    },
    '0s2monir': {
      'en': 'user@domainname.com',
      'de': '',
      'es': '',
      'fr': '',
    },
    'pu1my2ed': {
      'en': 'Overall',
      'de': '',
      'es': '',
      'fr': '',
    },
    'hk7nuz3d': {
      'en': '5',
      'de': '',
      'es': '',
      'fr': '',
    },
    'd63wz320': {
      'en':
          '"These sports shoes are incredibly comfortable, lightweight, and provide excellent support for my feet during workouts and runs. I\'ve noticed a significant improvement in my performance since wearing them!"',
      'de': '',
      'es': '',
      'fr': '',
    },
    'ln21h0c0': {
      'en': 'UserName',
      'de': '',
      'es': '',
      'fr': '',
    },
    'sjg6yamn': {
      'en': 'user@domainname.com',
      'de': '',
      'es': '',
      'fr': '',
    },
    'q23nrsx0': {
      'en': 'Overall',
      'de': '',
      'es': '',
      'fr': '',
    },
    '8rq6jved': {
      'en': '5',
      'de': '',
      'es': '',
      'fr': '',
    },
    'mapdswqy': {
      'en':
          '"These sports shoes are incredibly comfortable, lightweight, and provide excellent support for my feet during workouts and runs. I\'ve noticed a significant improvement in my performance since wearing them!"',
      'de': '',
      'es': '',
      'fr': '',
    },
    'wd97o48g': {
      'en': 'Home',
      'de': '',
      'es': '',
      'fr': '',
    },
  },
  // loginPage
  {
    'mmt7hft9': {
      'en': 'ShoppinFun',
      'de': '',
      'es': '',
      'fr': '',
    },
    '63evhbwo': {
      'en': 'Sign In',
      'de': '',
      'es': '',
      'fr': '',
    },
    '08848k8j': {
      'en': 'Welcome Back',
      'de': '',
      'es': '',
      'fr': '',
    },
    'h6hqp7tn': {
      'en': 'Fill out the information below in order to access your account.',
      'de': '',
      'es': '',
      'fr': '',
    },
    'p8p3ug5q': {
      'en': 'Email',
      'de': '',
      'es': '',
      'fr': '',
    },
    '845kowjl': {
      'en': 'Password',
      'de': '',
      'es': '',
      'fr': '',
    },
    '0d5y5fgo': {
      'en': 'Forgot Password?',
      'de': '',
      'es': '',
      'fr': '',
    },
    '6r0ljwyw': {
      'en': 'Sign In',
      'de': '',
      'es': '',
      'fr': '',
    },
    '5g0kiqag': {
      'en': 'Or sign in with',
      'de': '',
      'es': '',
      'fr': '',
    },
    'm3evjiwa': {
      'en': 'Continue with Google',
      'de': '',
      'es': '',
      'fr': '',
    },
    'mj04khyd': {
      'en': 'Continue with Apple',
      'de': '',
      'es': '',
      'fr': '',
    },
    'b4epc1ai': {
      'en': 'Continue as Guest',
      'de': '',
      'es': '',
      'fr': '',
    },
    '3dbmwys2': {
      'en': 'Sign Up',
      'de': '',
      'es': '',
      'fr': '',
    },
    'gibf5owk': {
      'en': 'Create Account',
      'de': '',
      'es': '',
      'fr': '',
    },
    'zafoxtlf': {
      'en': 'Let\'s get started by filling out the form below.',
      'de': '',
      'es': '',
      'fr': '',
    },
    '59iz8vxz': {
      'en': 'Email',
      'de': '',
      'es': '',
      'fr': '',
    },
    's2e9ga0b': {
      'en': 'Password',
      'de': '',
      'es': '',
      'fr': '',
    },
    '4ub5okuz': {
      'en': 'Get Started',
      'de': '',
      'es': '',
      'fr': '',
    },
    '5ahi7agd': {
      'en': 'Or sign up with',
      'de': '',
      'es': '',
      'fr': '',
    },
    'h72jmzg4': {
      'en': 'Continue with Google',
      'de': '',
      'es': '',
      'fr': '',
    },
    'zb7c4egh': {
      'en': 'Continue with Apple',
      'de': '',
      'es': '',
      'fr': '',
    },
    'qvbf2ez5': {
      'en': 'Continue as Guest',
      'de': '',
      'es': '',
      'fr': '',
    },
    'vxhz5q4y': {
      'en': 'Home',
      'de': '',
      'es': '',
      'fr': '',
    },
  },
  // mainOrderHistory
  {
    '4q82t2wl': {
      'en': 'Order History',
      'de': '',
      'es': '',
      'fr': '',
    },
    'rd3b2n3k': {
      'en': 'Pending Orders',
      'de': '',
      'es': '',
      'fr': '',
    },
    '1298j82z': {
      'en': 'This Month',
      'de': '',
      'es': '',
      'fr': '',
    },
    'f4acz78w': {
      'en': 'Jumbo Shrimps',
      'de': '',
      'es': '',
      'fr': '',
    },
    'ih1vo2p7': {
      'en': 'Dec 15, 2023',
      'de': '',
      'es': '',
      'fr': '',
    },
    'x1cn6fde': {
      'en': '#1850.200',
      'de': '',
      'es': '',
      'fr': '',
    },
    'mg1p2jmf': {
      'en': 'Fresh Cat Fish',
      'de': '',
      'es': '',
      'fr': '',
    },
    'n5ha6ml4': {
      'en': 'Dec 15, 2023',
      'de': '',
      'es': '',
      'fr': '',
    },
    'oc2jf196': {
      'en': '#5500.50',
      'de': '',
      'es': '',
      'fr': '',
    },
    'r56dcdo9': {
      'en': 'Order History',
      'de': '',
      'es': '',
      'fr': '',
    },
    'l5ilz3fv': {
      'en': '__',
      'de': '',
      'es': '',
      'fr': '',
    },
  },
  // mainProfile
  {
    '0ngf3rzd': {
      'en': 'Edit Profile',
      'de': '',
      'es': '',
      'fr': '',
    },
    'h8z8jjj5': {
      'en': 'Payment Methods',
      'de': '',
      'es': '',
      'fr': '',
    },
    'f0mlchdv': {
      'en': 'Seller Stats',
      'de': '',
      'es': '',
      'fr': '',
    },
    'ykq8y5jz': {
      'en': 'Start Selling',
      'de': '',
      'es': '',
      'fr': '',
    },
    'kpst1m1e': {
      'en': 'LOG OUT',
      'de': '',
      'es': '',
      'fr': '',
    },
    'z1ngi4hk': {
      'en': 'Activity',
      'de': '',
      'es': '',
      'fr': '',
    },
    'xl4nce4f': {
      'en': 'Bio',
      'de': '',
      'es': '',
      'fr': '',
    },
    'rqf23jb7': {
      'en': '152',
      'de': '',
      'es': '',
      'fr': '',
    },
    'hn5j6qas': {
      'en': 'Purchased Products',
      'de': '',
      'es': '',
      'fr': '',
    },
    'wsvoca5d': {
      'en': '24k',
      'de': '',
      'es': '',
      'fr': '',
    },
    'imocwkk2': {
      'en': 'Total Sales',
      'de': '',
      'es': '',
      'fr': '',
    },
    'vs60s0al': {
      'en': '240',
      'de': '',
      'es': '',
      'fr': '',
    },
    '9w43ziyi': {
      'en': 'Loyalty Points',
      'de': '',
      'es': '',
      'fr': '',
    },
    'xhp6p7hi': {
      'en': 'Recent Transactions',
      'de': '',
      'es': '',
      'fr': '',
    },
    'sku0r2j0': {
      'en': 'Order #42402424',
      'de': '',
      'es': '',
      'fr': '',
    },
    'yp72zogo': {
      'en': 'Purchased on: May 24, 2023',
      'de': '',
      'es': '',
      'fr': '',
    },
    'qhv3evig': {
      'en': '\$182.42',
      'de': '',
      'es': '',
      'fr': '',
    },
    'ohb5e4uu': {
      'en': 'Order #42402424',
      'de': '',
      'es': '',
      'fr': '',
    },
    'hb08a9wi': {
      'en': 'Purchased on: May 24, 2023',
      'de': '',
      'es': '',
      'fr': '',
    },
    '8gc9xs25': {
      'en': '\$1.50',
      'de': '',
      'es': '',
      'fr': '',
    },
    '6z350j4y': {
      'en': 'Order #42402424',
      'de': '',
      'es': '',
      'fr': '',
    },
    '0h6vx0pq': {
      'en': 'Purchased on: May 24, 2023',
      'de': '',
      'es': '',
      'fr': '',
    },
    '4x05hcr5': {
      'en': '\$1.50',
      'de': '',
      'es': '',
      'fr': '',
    },
    'wkvg3n2t': {
      'en': 'Activity',
      'de': '',
      'es': '',
      'fr': '',
    },
    'zbj5s21m': {
      'en': 'Bio',
      'de': '',
      'es': '',
      'fr': '',
    },
    'zlm10mko': {
      'en': 'I sell fresh, smoked seafoods. Get 10% on your first purchase!',
      'de': '',
      'es': '',
      'fr': '',
    },
    '5aj0cigd': {
      'en': '152',
      'de': '',
      'es': '',
      'fr': '',
    },
    'dwmf4xt3': {
      'en': 'Purchased Products',
      'de': '',
      'es': '',
      'fr': '',
    },
    'a2xo4r3d': {
      'en': '24k',
      'de': '',
      'es': '',
      'fr': '',
    },
    'ryq1uokp': {
      'en': 'Total Sales',
      'de': '',
      'es': '',
      'fr': '',
    },
    'kdu7uqqg': {
      'en': '240',
      'de': '',
      'es': '',
      'fr': '',
    },
    'kx0g73jh': {
      'en': 'Loyalty Points',
      'de': '',
      'es': '',
      'fr': '',
    },
    '1usohcf2': {
      'en': 'Settings',
      'de': '',
      'es': '',
      'fr': '',
    },
    'lnlw3ah9': {
      'en': 'My Profile',
      'de': '',
      'es': '',
      'fr': '',
    },
    '8rrd6r1s': {
      'en': '__',
      'de': '',
      'es': '',
      'fr': '',
    },
  },
  // createProfile
  {
    'zryy56si': {
      'en': 'Create your Profile',
      'de': '',
      'es': '',
      'fr': '',
    },
  },
  // successPage
  {
    'w9xjl1k7': {
      'en': 'Payment Confirmed!',
      'de': '',
      'es': '',
      'fr': '',
    },
    '3snsuufk': {
      'en':
          'Your payment has been confirmed, it may take 1-2 hours in order for your payment to go through and show up in your transation list.',
      'de': '',
      'es': '',
      'fr': '',
    },
    '280a1fz6': {
      'en': 'Go to Order History',
      'de': '',
      'es': '',
      'fr': '',
    },
    'qv6u2wrs': {
      'en': 'Home',
      'de': '',
      'es': '',
      'fr': '',
    },
  },
  // orderHistory_Details
  {
    '4ls882fq': {
      'en': 'Order Details',
      'de': '',
      'es': '',
      'fr': '',
    },
    'im2rg0ui': {
      'en': 'Your Shipping Address',
      'de': '',
      'es': '',
      'fr': '',
    },
    '3ysi18hk': {
      'en': ', ',
      'de': '',
      'es': '',
      'fr': '',
    },
    'yzb60vr4': {
      'en': ' ',
      'de': '',
      'es': '',
      'fr': '',
    },
    'dtdeeakw': {
      'en': ', ',
      'de': '',
      'es': '',
      'fr': '',
    },
    '04b1aboj': {
      'en': ' ',
      'de': '',
      'es': '',
      'fr': '',
    },
    'gjxsc10p': {
      'en': 'Selected Shipping',
      'de': '',
      'es': '',
      'fr': '',
    },
    'xw15e8w6': {
      'en': 'Quanity: 1',
      'de': '',
      'es': '',
      'fr': '',
    },
    'hrehlvvm': {
      'en': 'Air Max',
      'de': '',
      'es': '',
      'fr': '',
    },
    'iei2x885': {
      'en': '\$117.00',
      'de': '',
      'es': '',
      'fr': '',
    },
    'x2ydonpc': {
      'en': 'Quanity: 1',
      'de': '',
      'es': '',
      'fr': '',
    },
    'p2sk1y0q': {
      'en': 'Order',
      'de': '',
      'es': '',
      'fr': '',
    },
    'vjcli6rv': {
      'en': 'Home',
      'de': '',
      'es': '',
      'fr': '',
    },
  },
  // forgotPassword
  {
    'r58jzbvk': {
      'en': 'Forgot Password',
      'de': '',
      'es': '',
      'fr': '',
    },
    'stk2htop': {
      'en': 'Forgot Password',
      'de': '',
      'es': '',
      'fr': '',
    },
    'segiy4bi': {
      'en':
          'Type in your email address below and we will send you a reset link.',
      'de': '',
      'es': '',
      'fr': '',
    },
    'xbid7bb9': {
      'en': 'Your email address...',
      'de': '',
      'es': '',
      'fr': '',
    },
    'twm2qxz3': {
      'en': 'Send Reset Link',
      'de': '',
      'es': '',
      'fr': '',
    },
    '5yqwjsso': {
      'en': 'Home',
      'de': '',
      'es': '',
      'fr': '',
    },
  },
  // checkout_FullPage
  {
    'lskqkxrr': {
      'en': 'Checkout',
      'de': '',
      'es': '',
      'fr': '',
    },
    'wbre9mud': {
      'en': 'Enter your information',
      'de': '',
      'es': '',
      'fr': '',
    },
    'zllgx8x1': {
      'en': 'Below is the list of items in your cart.',
      'de': '',
      'es': '',
      'fr': '',
    },
    'tap7cqbq': {
      'en': 'Address',
      'de': '',
      'es': '',
      'fr': '',
    },
    'gigu2s0m': {
      'en': 'Enter your address below',
      'de': '',
      'es': '',
      'fr': '',
    },
    'ddu4ixpl': {
      'en': 'Please enter the information below to continue',
      'de': '',
      'es': '',
      'fr': '',
    },
    'mqkwxus7': {
      'en': 'Your saved addresses',
      'de': '',
      'es': '',
      'fr': '',
    },
    '11r7p03w': {
      'en': ', ',
      'de': '',
      'es': '',
      'fr': '',
    },
    '7flq96a1': {
      'en': ' ',
      'de': '',
      'es': '',
      'fr': '',
    },
    'dcfs8exj': {
      'en': ', ',
      'de': '',
      'es': '',
      'fr': '',
    },
    'znd98bou': {
      'en': ' ',
      'de': '',
      'es': '',
      'fr': '',
    },
    '7s73n551': {
      'en': 'Delivery Options',
      'de': '',
      'es': '',
      'fr': '',
    },
    'pdiowic3': {
      'en': 'Please select a delivery option below.',
      'de': '',
      'es': '',
      'fr': '',
    },
    'eh4zjlff': {
      'en': 'Please enter the information below to continue',
      'de': '',
      'es': '',
      'fr': '',
    },
    'bn6vina7': {
      'en': 'Continue',
      'de': '',
      'es': '',
      'fr': '',
    },
    'v73vklm0': {
      'en': 'Payment Information',
      'de': '',
      'es': '',
      'fr': '',
    },
    '6sdejxyz': {
      'en': 'Enter your payment details below',
      'de': '',
      'es': '',
      'fr': '',
    },
    'tkurfptq': {
      'en': 'Please enter the information below to continue',
      'de': '',
      'es': '',
      'fr': '',
    },
    '7yps5hcn': {
      'en': 'Order Summary',
      'de': '',
      'es': '',
      'fr': '',
    },
    '6pz5oq1z': {
      'en': 'Below is a list of your items.',
      'de': '',
      'es': '',
      'fr': '',
    },
    '0ynz2bsp': {
      'en': 'Price Breakdown',
      'de': '',
      'es': '',
      'fr': '',
    },
    'axq17by8': {
      'en': 'Sub Total',
      'de': '',
      'es': '',
      'fr': '',
    },
    '7v8w2meb': {
      'en': 'Taxes',
      'de': '',
      'es': '',
      'fr': '',
    },
    'ho7yc7m0': {
      'en': 'Shipping',
      'de': '',
      'es': '',
      'fr': '',
    },
    'yqmwtfp3': {
      'en': 'Total',
      'de': '',
      'es': '',
      'fr': '',
    },
    'dzuo0w2l': {
      'en': 'Checkout Now',
      'de': '',
      'es': '',
      'fr': '',
    },
    'i5czdy26': {
      'en': 'Home',
      'de': '',
      'es': '',
      'fr': '',
    },
  },
  // checkoutCopy
  {
    'jbot5vzt': {
      'en': 'Enter your information',
      'de': '',
      'es': '',
      'fr': '',
    },
    '57hhgx1c': {
      'en': 'Below is the list of items in your cart.',
      'de': '',
      'es': '',
      'fr': '',
    },
    'zkmchk4i': {
      'en': 'Delivery Options',
      'de': '',
      'es': '',
      'fr': '',
    },
    'm9501nv5': {
      'en': 'Please select a delivery option below.',
      'de': '',
      'es': '',
      'fr': '',
    },
    'd58pmlsg': {
      'en': 'Please enter the information below to continue',
      'de': '',
      'es': '',
      'fr': '',
    },
    '746moss5': {
      'en': 'Express Delivery',
      'de': '',
      'es': '',
      'fr': '',
    },
    'yps1qu5y': {
      'en': 'Select next day or 2 day shipping depending on your address.',
      'de': '',
      'es': '',
      'fr': '',
    },
    'i0ubmhoi': {
      'en': '\$25.00',
      'de': '',
      'es': '',
      'fr': '',
    },
    '51b8ehir': {
      'en': 'Continue',
      'de': '',
      'es': '',
      'fr': '',
    },
    'qrlmn7fo': {
      'en': 'Order Summary',
      'de': '',
      'es': '',
      'fr': '',
    },
    'ymj506cw': {
      'en': 'Below is a list of your items.',
      'de': '',
      'es': '',
      'fr': '',
    },
    'dv5niqwq': {
      'en': 'Price Breakdown',
      'de': '',
      'es': '',
      'fr': '',
    },
    'vi7srk5b': {
      'en': 'Sub Total',
      'de': '',
      'es': '',
      'fr': '',
    },
    '1ljb0tcn': {
      'en': 'Taxes',
      'de': '',
      'es': '',
      'fr': '',
    },
    '1lxnhu4b': {
      'en': 'Marketplace Fee',
      'de': '',
      'es': '',
      'fr': '',
    },
    'hi8o9zed': {
      'en': 'Total',
      'de': '',
      'es': '',
      'fr': '',
    },
    'd0depxn7': {
      'en': 'Checkout Now',
      'de': '',
      'es': '',
      'fr': '',
    },
    'dba6qaq2': {
      'en': 'Home',
      'de': '',
      'es': '',
      'fr': '',
    },
  },
  // create_Item
  {
    'r6ilo3e1': {
      'en': 'Send',
      'de': '',
      'es': '',
      'fr': '',
    },
    'eiwrauh8': {
      'en': 'Cancel',
      'de': '',
      'es': '',
      'fr': '',
    },
    'zy4znt9s': {
      'en': 'Andres Franchellis',
      'de': '',
      'es': '',
      'fr': '',
    },
    'o20r07sk': {
      'en': '@andresfrans',
      'de': '',
      'es': '',
      'fr': '',
    },
    'yvmavxd9': {
      'en': 'What\'s happening?',
      'de': '',
      'es': '',
      'fr': '',
    },
    'czxkn2l0': {
      'en': 'Home',
      'de': '',
      'es': '',
      'fr': '',
    },
  },
  // checkout_modal
  {
    '6iwg8tp1': {
      'en': 'Checkout',
      'de': '',
      'es': '',
      'fr': '',
    },
    'nvwnt32a': {
      'en': 'Fill in the information below to place your order.',
      'de': '',
      'es': '',
      'fr': '',
    },
    'xlyqms9z': {
      'en': 'Price Breakdown',
      'de': '',
      'es': '',
      'fr': '',
    },
    'xkh5cxdg': {
      'en': 'Base Price',
      'de': '',
      'es': '',
      'fr': '',
    },
    'qqevgi8n': {
      'en': '#156.00',
      'de': '',
      'es': '',
      'fr': '',
    },
    '0oiwxdhj': {
      'en': 'Taxes',
      'de': '',
      'es': '',
      'fr': '',
    },
    'qpxdtdga': {
      'en': '#24.20',
      'de': '',
      'es': '',
      'fr': '',
    },
    'yhomposp': {
      'en': 'Shipping Fee',
      'de': '',
      'es': '',
      'fr': '',
    },
    '09top1zo': {
      'en': '#40.00',
      'de': '',
      'es': '',
      'fr': '',
    },
    'g1qz7cce': {
      'en': 'Total',
      'de': '',
      'es': '',
      'fr': '',
    },
    '9338vrbu': {
      'en': '#230.20',
      'de': '',
      'es': '',
      'fr': '',
    },
    'jr9saw32': {
      'en': 'Pay w/ Credit Card',
      'de': '',
      'es': '',
      'fr': '',
    },
    '9gl1c3on': {
      'en': 'Or use an option below',
      'de': '',
      'es': '',
      'fr': '',
    },
    'jbyt440o': {
      'en': 'Apple Pay',
      'de': '',
      'es': '',
      'fr': '',
    },
    'nir1d1mc': {
      'en': 'Pay w/Paypal',
      'de': '',
      'es': '',
      'fr': '',
    },
  },
  // orderSummary
  {
    'mtgzcu14': {
      'en': 'Order Summary',
      'de': '',
      'es': '',
      'fr': '',
    },
    '43d0yrtr': {
      'en': 'Below is a list of your items.',
      'de': '',
      'es': '',
      'fr': '',
    },
    'o9xj48v5': {
      'en': 'Quanity: 1',
      'de': '',
      'es': '',
      'fr': '',
    },
    'l2eu6zdr': {
      'en': 'Air Max',
      'de': '',
      'es': '',
      'fr': '',
    },
    '9uy4xxdr': {
      'en': '\$117.00',
      'de': '',
      'es': '',
      'fr': '',
    },
    'edtzu59y': {
      'en': 'Quanity: 1',
      'de': '',
      'es': '',
      'fr': '',
    },
    'yckh3jpo': {
      'en': 'Sub-Total',
      'de': '',
      'es': '',
      'fr': '',
    },
    't6q627ct': {
      'en': 'Clear Cart',
      'de': '',
      'es': '',
      'fr': '',
    },
    'pkjekqp3': {
      'en': 'Go to Cart',
      'de': '',
      'es': '',
      'fr': '',
    },
  },
  // reviewModal
  {
    'k2cf9t3t': {
      'en': 'Amazing Product!',
      'de': '',
      'es': '',
      'fr': '',
    },
    'qp2j3it0': {
      'en': '4/5',
      'de': '',
      'es': '',
      'fr': '',
    },
    'oc621a2d': {
      'en': 'Thursday, May 25th',
      'de': '',
      'es': '',
      'fr': '',
    },
    'zf23fxii': {
      'en': 'Amazing fish, I love it so much. So tasty!',
      'de': '',
      'es': '',
      'fr': '',
    },
    'g7i0y40a': {
      'en': 'Leave a Review',
      'de': '',
      'es': '',
      'fr': '',
    },
  },
  // reviewModal_Create
  {
    'rlg079tj': {
      'en': 'Review product',
      'de': '',
      'es': '',
      'fr': '',
    },
    'u6odh1by': {
      'en': 'Please fill out the information below in order to leave a review.',
      'de': '',
      'es': '',
      'fr': '',
    },
    'cczw1g77': {
      'en': 'Review title here...',
      'de': '',
      'es': '',
      'fr': '',
    },
    '5v2j52ou': {
      'en': 'Label here...',
      'de': '',
      'es': '',
      'fr': '',
    },
    'uzsctvib': {
      'en': 'Description here...',
      'de': '',
      'es': '',
      'fr': '',
    },
    'cs18z7tu': {
      'en': 'Please select a rating from above to get started!',
      'de': '',
      'es': '',
      'fr': '',
    },
    'dd62kjui': {
      'en': 'Please submit a rating above.',
      'de': '',
      'es': '',
      'fr': '',
    },
    'mggeatnm': {
      'en': 'Leave a Review',
      'de': '',
      'es': '',
      'fr': '',
    },
    'i3epttld': {
      'en': 'Please enter a title...',
      'de': '',
      'es': '',
      'fr': '',
    },
    'e4cqa9zh': {
      'en': 'Please choose an option from the dropdown',
      'de': '',
      'es': '',
      'fr': '',
    },
    'l3wtbrd7': {
      'en': 'Field is required',
      'de': '',
      'es': '',
      'fr': '',
    },
    '76drxmj7': {
      'en': 'Please choose an option from the dropdown',
      'de': '',
      'es': '',
      'fr': '',
    },
  },
  // topNav
  {
    'vhruafs3': {
      'en': 'My Orders',
      'de': '',
      'es': '',
      'fr': '',
    },
    '0tko3nu2': {
      'en': 'Favorites',
      'de': '',
      'es': '',
      'fr': '',
    },
    'j623i7e0': {
      'en': 'Notifications',
      'de': '',
      'es': '',
      'fr': '',
    },
    'fqmht91l': {
      'en': 'My Account',
      'de': '',
      'es': '',
      'fr': '',
    },
    '1x1alzmd': {
      'en': 'Login',
      'de': '',
      'es': '',
      'fr': '',
    },
    'yt1xkvvi': {
      'en': 'My Cart',
      'de': '',
      'es': '',
      'fr': '',
    },
  },
  // editProfileForm
  {
    'pq5lnnya': {
      'en': 'Your Name',
      'de': '',
      'es': '',
      'fr': '',
    },
    'ehmoq1hk': {
      'en': 'Abia',
      'de': '',
      'es': '',
      'fr': '',
    },
    'zc5uhvjm': {
      'en': 'Adamawa',
      'de': '',
      'es': '',
      'fr': '',
    },
    'kkqefmz5': {
      'en': 'Akwa Ibom',
      'de': '',
      'es': '',
      'fr': '',
    },
    'xc2d67ih': {
      'en': 'Anambra',
      'de': '',
      'es': '',
      'fr': '',
    },
    '6c5kvui9': {
      'en': 'Bauchi',
      'de': '',
      'es': '',
      'fr': '',
    },
    'z3mzn6jx': {
      'en': 'Bayelsa',
      'de': '',
      'es': '',
      'fr': '',
    },
    'pxrpbk8g': {
      'en': 'Benue',
      'de': '',
      'es': '',
      'fr': '',
    },
    '0tns3tlo': {
      'en': 'Borno',
      'de': '',
      'es': '',
      'fr': '',
    },
    'vav4xu9s': {
      'en': 'Cross River',
      'de': '',
      'es': '',
      'fr': '',
    },
    'vqhw11ys': {
      'en': 'Delta',
      'de': '',
      'es': '',
      'fr': '',
    },
    'wlse34mt': {
      'en': 'Ebonyi',
      'de': '',
      'es': '',
      'fr': '',
    },
    'sopbqnqb': {
      'en': 'Edo',
      'de': '',
      'es': '',
      'fr': '',
    },
    'dkus1ewu': {
      'en': 'Ekiti',
      'de': '',
      'es': '',
      'fr': '',
    },
    'i4vhkjzk': {
      'en': 'Enugu',
      'de': '',
      'es': '',
      'fr': '',
    },
    'zogrvszb': {
      'en': 'Gombe',
      'de': '',
      'es': '',
      'fr': '',
    },
    'g0p8sa3a': {
      'en': 'Imo',
      'de': '',
      'es': '',
      'fr': '',
    },
    'q01y81ot': {
      'en': 'Jigawa',
      'de': '',
      'es': '',
      'fr': '',
    },
    '18y30fpp': {
      'en': 'Kaduna',
      'de': '',
      'es': '',
      'fr': '',
    },
    '7inetmni': {
      'en': 'Kano',
      'de': '',
      'es': '',
      'fr': '',
    },
    '6mbs4wie': {
      'en': 'Katsina',
      'de': '',
      'es': '',
      'fr': '',
    },
    'i26ks34u': {
      'en': 'Kebbi',
      'de': '',
      'es': '',
      'fr': '',
    },
    'ln6macg3': {
      'en': 'Kogi',
      'de': '',
      'es': '',
      'fr': '',
    },
    'ylzrmvol': {
      'en': 'Kwara',
      'de': '',
      'es': '',
      'fr': '',
    },
    'mxu40o1r': {
      'en': 'Lagos',
      'de': '',
      'es': '',
      'fr': '',
    },
    'o6rv4kdj': {
      'en': 'Nasarawa',
      'de': '',
      'es': '',
      'fr': '',
    },
    'rwq5q7xu': {
      'en': 'Niger',
      'de': '',
      'es': '',
      'fr': '',
    },
    'vkl069pl': {
      'en': 'Ogun',
      'de': '',
      'es': '',
      'fr': '',
    },
    'wdzk55x3': {
      'en': 'Ondo',
      'de': '',
      'es': '',
      'fr': '',
    },
    'omxyzp8b': {
      'en': 'Osun',
      'de': '',
      'es': '',
      'fr': '',
    },
    '0bjb84rr': {
      'en': 'Oyo',
      'de': '',
      'es': '',
      'fr': '',
    },
    'kkbtkfiv': {
      'en': 'Plateau',
      'de': '',
      'es': '',
      'fr': '',
    },
    'gqq1lwz9': {
      'en': 'Rivers',
      'de': '',
      'es': '',
      'fr': '',
    },
    'tqdhcpv4': {
      'en': 'Sokoto',
      'de': '',
      'es': '',
      'fr': '',
    },
    'oux99e9i': {
      'en': 'Taraba',
      'de': '',
      'es': '',
      'fr': '',
    },
    'l0bifuak': {
      'en': 'Yobe',
      'de': '',
      'es': '',
      'fr': '',
    },
    're5l6153': {
      'en': 'Zamfara',
      'de': '',
      'es': '',
      'fr': '',
    },
    '8tyj7w8i': {
      'en': 'FCT',
      'de': '',
      'es': '',
      'fr': '',
    },
    'rjmc4vdp': {
      'en': 'Select State',
      'de': '',
      'es': '',
      'fr': '',
    },
    '5zr499ki': {
      'en': 'Your bio',
      'de': '',
      'es': '',
      'fr': '',
    },
    's1crwzpe': {
      'en': 'Save Changes',
      'de': '',
      'es': '',
      'fr': '',
    },
  },
  // Modal07SearchAdvanced
  {
    'x90xn47m': {
      'en': 'Search platform...',
      'de': '',
      'es': '',
      'fr': '',
    },
    't30aue4r': {
      'en': 'Search',
      'de': '',
      'es': '',
      'fr': '',
    },
    'of0cogqi': {
      'en': 'Templates',
      'de': '',
      'es': '',
      'fr': '',
    },
    'v7vdgffb': {
      'en': 'Name',
      'de': '',
      'es': '',
      'fr': '',
    },
    'kdmwga8n': {
      'en': 'Category',
      'de': '',
      'es': '',
      'fr': '',
    },
    'qigv0stz': {
      'en': 'Status',
      'de': '',
      'es': '',
      'fr': '',
    },
    'czg84emd': {
      'en': '[Template Name]',
      'de': '',
      'es': '',
      'fr': '',
    },
    'c1asu882': {
      'en': 'cateogry',
      'de': '',
      'es': '',
      'fr': '',
    },
    'me9rnnvb': {
      'en': 'Enabled',
      'de': '',
      'es': '',
      'fr': '',
    },
    '7eqsmqcq': {
      'en': '[Template Name]',
      'de': '',
      'es': '',
      'fr': '',
    },
    'v1vs9yi0': {
      'en': 'cateogry',
      'de': '',
      'es': '',
      'fr': '',
    },
    'alrvg5py': {
      'en': 'Enabled',
      'de': '',
      'es': '',
      'fr': '',
    },
    'zbne5jyj': {
      'en': '[Template Name]',
      'de': '',
      'es': '',
      'fr': '',
    },
    'w9bq28vs': {
      'en': 'cateogry',
      'de': '',
      'es': '',
      'fr': '',
    },
    'dspbp30e': {
      'en': 'Disabled',
      'de': '',
      'es': '',
      'fr': '',
    },
    'azggl4oh': {
      'en': 'Components',
      'de': '',
      'es': '',
      'fr': '',
    },
    'um40n03k': {
      'en': 'Name',
      'de': '',
      'es': '',
      'fr': '',
    },
    'i1vzbqqm': {
      'en': 'Category',
      'de': '',
      'es': '',
      'fr': '',
    },
    '61qvdpl0': {
      'en': 'Status',
      'de': '',
      'es': '',
      'fr': '',
    },
    'x0ti23ay': {
      'en': '[Template Name]',
      'de': '',
      'es': '',
      'fr': '',
    },
    'tw65rgtz': {
      'en': 'cateogry',
      'de': '',
      'es': '',
      'fr': '',
    },
    'o2hokerr': {
      'en': 'Enabled',
      'de': '',
      'es': '',
      'fr': '',
    },
    'luvnqevb': {
      'en': '[Template Name]',
      'de': '',
      'es': '',
      'fr': '',
    },
    '40pppkdz': {
      'en': 'cateogry',
      'de': '',
      'es': '',
      'fr': '',
    },
    '8z7mrp27': {
      'en': 'Enabled',
      'de': '',
      'es': '',
      'fr': '',
    },
    'j95yt51x': {
      'en': '[Template Name]',
      'de': '',
      'es': '',
      'fr': '',
    },
    'j7jyatwb': {
      'en': 'cateogry',
      'de': '',
      'es': '',
      'fr': '',
    },
    'fu9hnk0r': {
      'en': 'Disabled',
      'de': '',
      'es': '',
      'fr': '',
    },
    'ohpfov4h': {
      'en': 'Tutorials',
      'de': '',
      'es': '',
      'fr': '',
    },
    '4f3qjrxo': {
      'en': 'Tutorials are here...',
      'de': '',
      'es': '',
      'fr': '',
    },
    'k8pm8wmm': {
      'en': 'FlutterFlow x AI',
      'de': '',
      'es': '',
      'fr': '',
    },
    'setfpymf': {
      'en':
          'Customize your app design with FlutterFlow\'s vast library of components and responsive layout tools.',
      'de': '',
      'es': '',
      'fr': '',
    },
    '3c3i38p7': {
      'en': '4 Minutes',
      'de': '',
      'es': '',
      'fr': '',
    },
    '219m83h1': {
      'en': 'Active',
      'de': '',
      'es': '',
      'fr': '',
    },
    'hyzics61': {
      'en': 'FlutterFlow Basics',
      'de': '',
      'es': '',
      'fr': '',
    },
    'u0rzu22e': {
      'en':
          'In this tutorial, we\'ll dive into the essentials of using FlutterFlow to build amazing apps.',
      'de': '',
      'es': '',
      'fr': '',
    },
    'fy4izqci': {
      'en': '4 Minutes',
      'de': '',
      'es': '',
      'fr': '',
    },
    '9iqmz0g1': {
      'en': 'Active',
      'de': '',
      'es': '',
      'fr': '',
    },
    'mw5zez89': {
      'en': 'FlutterFlow 101',
      'de': '',
      'es': '',
      'fr': '',
    },
    'b5thv7sx': {
      'en':
          'Save time and effort with FlutterFlow\'s built-in integration for popular third-party services.',
      'de': '',
      'es': '',
      'fr': '',
    },
    '83pq0ebn': {
      'en': '4 Minutes',
      'de': '',
      'es': '',
      'fr': '',
    },
    'gd6odn0u': {
      'en': 'Active',
      'de': '',
      'es': '',
      'fr': '',
    },
    'w88mawm5': {
      'en': 'FlutterFlow Command Palette',
      'de': '',
      'es': '',
      'fr': '',
    },
    'dwoqmn2t': {
      'en':
          'Learn how to create interactive components and navigate smoothly between screens in FlutterFlow.',
      'de': '',
      'es': '',
      'fr': '',
    },
    'dfr32t1y': {
      'en': '4 Minutes',
      'de': '',
      'es': '',
      'fr': '',
    },
    '2i6h0vie': {
      'en': 'Active',
      'de': '',
      'es': '',
      'fr': '',
    },
  },
  // modal_CreateAccount
  {
    'c87n82u4': {
      'en': 'Access acccount to checkout',
      'de': '',
      'es': '',
      'fr': '',
    },
    'tyahwgg8': {
      'en': 'Please choose an option below in order to check out!',
      'de': '',
      'es': '',
      'fr': '',
    },
    '69wmix8k': {
      'en': 'Login to your account',
      'de': '',
      'es': '',
      'fr': '',
    },
    'dti8ez0c': {
      'en':
          'Keep track of your orders by logging into your account or creating an account.',
      'de': '',
      'es': '',
      'fr': '',
    },
    'nrtfhoe5': {
      'en': 'Access Acount',
      'de': '',
      'es': '',
      'fr': '',
    },
    'g1buii5j': {
      'en': 'Continue as Guest',
      'de': '',
      'es': '',
      'fr': '',
    },
    '74bgmz8e': {
      'en':
          'Continue as a guest through checkout, your order history won\'t be saved.',
      'de': '',
      'es': '',
      'fr': '',
    },
    'llfc7p80': {
      'en': 'Continue as Guest',
      'de': '',
      'es': '',
      'fr': '',
    },
  },
  // modal_Create
  {
    'xxm4nkbw': {
      'en': 'Sell a product',
      'de': '',
      'es': '',
      'fr': '',
    },
    '09714uvs': {
      'en': 'Please enter the information below to add a product.',
      'de': '',
      'es': '',
      'fr': '',
    },
    '441vns3r': {
      'en': 'Add Photo',
      'de': '',
      'es': '',
      'fr': '',
    },
    '6fucw9xd': {
      'en': 'Upload an image here...',
      'de': '',
      'es': '',
      'fr': '',
    },
    'dv0jvsa4': {
      'en': 'Enter Product Name',
      'de': '',
      'es': '',
      'fr': '',
    },
    'bd5bs86o': {
      'en': 'Description here...',
      'de': '',
      'es': '',
      'fr': '',
    },
    '6qryejzv': {
      'en': 'Price',
      'de': '',
      'es': '',
      'fr': '',
    },
    '2l2289c2': {
      'en': 'category',
      'de': '',
      'es': '',
      'fr': '',
    },
    '50wypzfc': {
      'en': 'Advertise product',
      'de': '',
      'es': '',
      'fr': '',
    },
    'rmiizl61': {
      'en': 'Field is required',
      'de': '',
      'es': '',
      'fr': '',
    },
    '6mdfxfzm': {
      'en': 'Please enter a real name',
      'de': '',
      'es': '',
      'fr': '',
    },
    'nhchkcw5': {
      'en': 'Please choose an option from the dropdown',
      'de': '',
      'es': '',
      'fr': '',
    },
    '4uwey38c': {
      'en': 'Please enter a short desription',
      'de': '',
      'es': '',
      'fr': '',
    },
    'sk0zm24f': {
      'en': 'Please choose an option from the dropdown',
      'de': '',
      'es': '',
      'fr': '',
    },
    'o9h0binw': {
      'en': 'We have to have a URL for the project.',
      'de': '',
      'es': '',
      'fr': '',
    },
    'pgt55fqp': {
      'en': 'Please enter a valid URL...',
      'de': '',
      'es': '',
      'fr': '',
    },
    '55a4z0l2': {
      'en': 'Please choose an option from the dropdown',
      'de': '',
      'es': '',
      'fr': '',
    },
    'm0chmlpn': {
      'en': 'Field is required',
      'de': '',
      'es': '',
      'fr': '',
    },
    'vfbz50ft': {
      'en': 'Please choose an option from the dropdown',
      'de': '',
      'es': '',
      'fr': '',
    },
  },
  // dropdownMenu
  {
    'qt6ck8j0': {
      'en': 'Options',
      'de': '',
      'es': '',
      'fr': '',
    },
    '18wzwch1': {
      'en': 'View Details',
      'de': '',
      'es': '',
      'fr': '',
    },
    '6017rlrn': {
      'en': 'Re-Order',
      'de': '',
      'es': '',
      'fr': '',
    },
    'xfemfuj5': {
      'en': 'Contact Seller',
      'de': '',
      'es': '',
      'fr': '',
    },
  },
  // dropdown_Account
  {
    'z20nt4lu': {
      'en': 'Account Options',
      'de': '',
      'es': '',
      'fr': '',
    },
    '08qyr3gb': {
      'en': 'My Account',
      'de': '',
      'es': '',
      'fr': '',
    },
    'tgx6favb': {
      'en': 'Settings',
      'de': '',
      'es': '',
      'fr': '',
    },
    '1xjeskh2': {
      'en': 'Billing Details',
      'de': '',
      'es': '',
      'fr': '',
    },
    'syn0pvjd': {
      'en': 'Free Plan',
      'de': '',
      'es': '',
      'fr': '',
    },
    'qfnpr52s': {
      'en': '45,200 actions',
      'de': '',
      'es': '',
      'fr': '',
    },
    'u8vowxfw': {
      'en': 'Upgrade',
      'de': '',
      'es': '',
      'fr': '',
    },
    'ehfvs022': {
      'en': 'Log out',
      'de': '',
      'es': '',
      'fr': '',
    },
  },
  // dropdown_Notifications
  {
    'tm44p8jg': {
      'en': 'Notifications',
      'de': '',
      'es': '',
      'fr': '',
    },
    '01gn7ngv': {
      'en': 'New',
      'de': '',
      'es': '',
      'fr': '',
    },
    'wl7zw4hb': {
      'en': 'All',
      'de': '',
      'es': '',
      'fr': '',
    },
    'mujx2qol': {
      'en': 'New',
      'de': '',
      'es': '',
      'fr': '',
    },
  },
  // orderSummaryNew
  {
    '17ewedhc': {
      'en': 'Order Summary',
      'de': '',
      'es': '',
      'fr': '',
    },
    'vqb642hh': {
      'en': 'Below is a list of your items.',
      'de': '',
      'es': '',
      'fr': '',
    },
    '93b4a0e4': {
      'en': 'x (',
      'de': '',
      'es': '',
      'fr': '',
    },
    '95pr94k2': {
      'en': ')',
      'de': '',
      'es': '',
      'fr': '',
    },
    'u3hpva0o': {
      'en': 'Air Max',
      'de': '',
      'es': '',
      'fr': '',
    },
    'hy94ux6w': {
      'en': '\$117.00',
      'de': '',
      'es': '',
      'fr': '',
    },
    '5xsfx8ho': {
      'en': 'Quanity: 1',
      'de': '',
      'es': '',
      'fr': '',
    },
    '9bm711su': {
      'en': 'Sub-Total',
      'de': '',
      'es': '',
      'fr': '',
    },
    '995iyu3x': {
      'en': 'Clear Cart',
      'de': '',
      'es': '',
      'fr': '',
    },
    'jdgqvl9y': {
      'en': 'Go to Cart',
      'de': '',
      'es': '',
      'fr': '',
    },
  },
  // addAddress_Base
  {
    'cwx0ohgd': {
      'en': 'Your Address',
      'de': '',
      'es': '',
      'fr': '',
    },
    'ie3glyri': {
      'en': 'Street Address 2 (optional)',
      'de': '',
      'es': '',
      'fr': '',
    },
    'rnsnjok9': {
      'en': 'City',
      'de': '',
      'es': '',
      'fr': '',
    },
    '5o52wj0u': {
      'en': 'State',
      'de': '',
      'es': '',
      'fr': '',
    },
    'untmquvv': {
      'en': 'Zip Code',
      'de': '',
      'es': '',
      'fr': '',
    },
    'pbpmm914': {
      'en': 'Save Address',
      'de': '',
      'es': '',
      'fr': '',
    },
    'oq8j9gv3': {
      'en': 'Please enter your address',
      'de': '',
      'es': '',
      'fr': '',
    },
    '0ezzsz4w': {
      'en': 'Please choose an option from the dropdown',
      'de': '',
      'es': '',
      'fr': '',
    },
    'xvcnlipy': {
      'en': 'Field is required',
      'de': '',
      'es': '',
      'fr': '',
    },
    'kwvgrj7r': {
      'en': 'Please choose an option from the dropdown',
      'de': '',
      'es': '',
      'fr': '',
    },
    '6hz6w9yz': {
      'en': 'Field is required',
      'de': '',
      'es': '',
      'fr': '',
    },
    'l9ryhgtz': {
      'en': 'Please choose an option from the dropdown',
      'de': '',
      'es': '',
      'fr': '',
    },
    '2mlczyqs': {
      'en': 'Field is required',
      'de': '',
      'es': '',
      'fr': '',
    },
    'rbeyl912': {
      'en': 'Please choose an option from the dropdown',
      'de': '',
      'es': '',
      'fr': '',
    },
    'y8a2wp7i': {
      'en': 'Field is required',
      'de': '',
      'es': '',
      'fr': '',
    },
    'smxmgjes': {
      'en': 'Please choose an option from the dropdown',
      'de': '',
      'es': '',
      'fr': '',
    },
  },
  // modal_AddAddress
  {
    '5963gchd': {
      'en': 'Create Address',
      'de': '',
      'es': '',
      'fr': '',
    },
    'f3euu4bg': {
      'en': 'Please choose an option below in order to check out!',
      'de': '',
      'es': '',
      'fr': '',
    },
  },
  // Miscellaneous
  {
    '7z3rkqc9': {
      'en': 'Continue to Checkout',
      'de': '',
      'es': '',
      'fr': '',
    },
    '4y9lgsxi': {
      'en': 'Cancel',
      'de': '',
      'es': '',
      'fr': '',
    },
    'rqofv116': {
      'en': 'Button',
      'de': '',
      'es': '',
      'fr': '',
    },
    'o1528f5u': {
      'en': 'Label here...',
      'de': '',
      'es': '',
      'fr': '',
    },
    'hifr6inu': {
      'en': 'Cancel',
      'de': '',
      'es': '',
      'fr': '',
    },
    'ydzidqwx': {
      'en': 'Cancel',
      'de': '',
      'es': '',
      'fr': '',
    },
    'fvjc0qsh': {
      'en': 'Continue to Checkout',
      'de': '',
      'es': '',
      'fr': '',
    },
    'cvfh1cur': {
      'en': 'Cancel',
      'de': '',
      'es': '',
      'fr': '',
    },
    '9nyj8iri': {
      'en': 'Message...',
      'de': '',
      'es': '',
      'fr': '',
    },
    'xpxohd6s': {
      'en': '',
      'de': '',
      'es': '',
      'fr': '',
    },
    'jtrnbw2d': {
      'en': '',
      'de': '',
      'es': '',
      'fr': '',
    },
    'wg065deb': {
      'en': 'To calculate ETA',
      'de': '',
      'es': '',
      'fr': '',
    },
    'ws3vvjz2': {
      'en': '',
      'de': '',
      'es': '',
      'fr': '',
    },
    'fd6xjabq': {
      'en': '',
      'de': '',
      'es': '',
      'fr': '',
    },
    '34ijkqrs': {
      'en': '',
      'de': '',
      'es': '',
      'fr': '',
    },
    'sysv1o4y': {
      'en': '',
      'de': '',
      'es': '',
      'fr': '',
    },
    'md9mxt3j': {
      'en': '',
      'de': '',
      'es': '',
      'fr': '',
    },
    '0iwlu2uk': {
      'en': '',
      'de': '',
      'es': '',
      'fr': '',
    },
    'l3x7egq8': {
      'en': '',
      'de': '',
      'es': '',
      'fr': '',
    },
    'gyfi86bd': {
      'en': '',
      'de': '',
      'es': '',
      'fr': '',
    },
    'ddoq8edt': {
      'en': '',
      'de': '',
      'es': '',
      'fr': '',
    },
    'mmo6jikm': {
      'en': '',
      'de': '',
      'es': '',
      'fr': '',
    },
    'lpbiwa18': {
      'en': '',
      'de': '',
      'es': '',
      'fr': '',
    },
    '8bd0h44s': {
      'en': '',
      'de': '',
      'es': '',
      'fr': '',
    },
    'hs73x0ru': {
      'en': '',
      'de': '',
      'es': '',
      'fr': '',
    },
    '18qqxju4': {
      'en': '',
      'de': '',
      'es': '',
      'fr': '',
    },
    'zw3fxxjj': {
      'en': '',
      'de': '',
      'es': '',
      'fr': '',
    },
    '4mfxos1l': {
      'en': '',
      'de': '',
      'es': '',
      'fr': '',
    },
    '61hqb3ml': {
      'en': '',
      'de': '',
      'es': '',
      'fr': '',
    },
    'aqnizh0u': {
      'en': '',
      'de': '',
      'es': '',
      'fr': '',
    },
    'sy8b9osz': {
      'en': '',
      'de': '',
      'es': '',
      'fr': '',
    },
    't2ccte6p': {
      'en': '',
      'de': '',
      'es': '',
      'fr': '',
    },
    'sb0g9z77': {
      'en': '',
      'de': '',
      'es': '',
      'fr': '',
    },
    'p8rwhn7h': {
      'en': '',
      'de': '',
      'es': '',
      'fr': '',
    },
    'p15j2hx7': {
      'en': '',
      'de': '',
      'es': '',
      'fr': '',
    },
    'vi2yen9s': {
      'en': '',
      'de': '',
      'es': '',
      'fr': '',
    },
  },
].reduce((a, b) => a..addAll(b));
