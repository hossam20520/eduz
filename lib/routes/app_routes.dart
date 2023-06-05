import 'package:eduz/presentation/chooselanguage_screen/chooselanguage_screen.dart';
import 'package:eduz/presentation/chooselanguage_screen/binding/chooselanguage_binding.dart';
import 'package:eduz/presentation/home_container_screen/home_container_screen.dart';
import 'package:eduz/presentation/home_container_screen/binding/home_container_binding.dart';
import 'package:eduz/presentation/splashscreen_screen/splashscreen_screen.dart';
import 'package:eduz/presentation/splashscreen_screen/binding/splashscreen_binding.dart';
import 'package:eduz/presentation/onbording_one_screen/onbording_one_screen.dart';
import 'package:eduz/presentation/onbording_one_screen/binding/onbording_one_binding.dart';
import 'package:eduz/presentation/onbording_two_screen/onbording_two_screen.dart';
import 'package:eduz/presentation/onbording_two_screen/binding/onbording_two_binding.dart';
import 'package:eduz/presentation/onbording_three_screen/onbording_three_screen.dart';
import 'package:eduz/presentation/onbording_three_screen/binding/onbording_three_binding.dart';
import 'package:eduz/presentation/account_type_screen/account_type_screen.dart';
import 'package:eduz/presentation/account_type_screen/binding/account_type_binding.dart';
import 'package:eduz/presentation/choose_auth_screen/choose_auth_screen.dart';
import 'package:eduz/presentation/choose_auth_screen/binding/choose_auth_binding.dart';
import 'package:eduz/presentation/create_account_screen/create_account_screen.dart';
import 'package:eduz/presentation/create_account_screen/binding/create_account_binding.dart';
import 'package:eduz/presentation/login_screen/login_screen.dart';
import 'package:eduz/presentation/login_screen/binding/login_binding.dart';
import 'package:eduz/presentation/success_screen/success_screen.dart';
import 'package:eduz/presentation/success_screen/binding/success_binding.dart';
import 'package:eduz/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:eduz/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:eduz/presentation/home_screen/home_screen.dart';
import 'package:eduz/presentation/home_screen/binding/home_binding.dart';
import 'package:get/get.dart';
import 'package:eduz/presentation/calander_screen/calander_screen.dart';
import 'package:eduz/presentation/chat_screen/chat_screen.dart';
import 'package:eduz/presentation/chat_screen/binding/chat_binding.dart';
import 'package:eduz/presentation/tab_container_screen/tab_container_screen.dart';
import 'package:eduz/presentation/tab_container_screen/binding/single_supplie_policy_tab_tab_container_binding.dart';
import 'package:eduz/presentation/products_screen/products_screen.dart';
import 'package:eduz/presentation/products_screen/binding/products_binding.dart';
import 'package:eduz/presentation/school_screen/school_screen.dart';
import 'package:eduz/presentation/school_screen/binding/school_binding.dart';
import 'package:eduz/presentation/teachers_screen/teachers_screen.dart';
import 'package:eduz/presentation/teachers_screen/binding/teachers_binding.dart';
import 'package:eduz/presentation/universities_screen/universities_screen.dart';
import 'package:eduz/presentation/universities_screen/binding/universities_binding.dart';
import 'package:eduz/presentation/schools_info_screen/schools_info_screen.dart';
import 'package:eduz/presentation/schools_info_screen/binding/schools_info_binding.dart';
import 'package:eduz/presentation/schools_facilities_screen/schools_facilities_screen.dart';
import 'package:eduz/presentation/schools_facilities_screen/binding/schools_facilities_binding.dart';
import 'package:eduz/presentation/schools_activities_screen/schools_activities_screen.dart';
import 'package:eduz/presentation/schools_activities_screen/binding/schools_activities_binding.dart';
import 'package:eduz/presentation/schools_reviews_screen/schools_reviews_screen.dart';
import 'package:eduz/presentation/schools_reviews_screen/binding/schools_reviews_binding.dart';
import 'package:eduz/presentation/cart_screen/cart_screen.dart';
import 'package:eduz/presentation/cart_screen/binding/cart_binding.dart';
import 'package:eduz/presentation/formschool_screen/formschool_screen.dart';
import 'package:eduz/presentation/formschool_screen/binding/formschool_binding.dart';

import 'package:eduz/presentation/kindergarten_screen/kindergarten_screen.dart';
import 'package:eduz/presentation/kindergarten_screen/binding/kindergarten_binding.dart';

class AppRoutes {
  static const String universitiesScreen = '/universities_screen';
  static const String kindergartenScreen = '/kindergarten_screen';
  static const String specialNeedsCentersScreen =
      '/special_needs_centers_screen';
  // static const String singleSupplieReviewTabPage = '/single_supplie_review_tab_page';
  static const String schoolScreen = '/school_screen';
  static const String singleSuppliePolicyTabPage =
      '/single_supplie_policy_tab_page';
  static const String teachersScreen = '/teachers_screen';
  static const String TabContainerScreen = '/tab_container_screen';

  static const String chooselanguageScreen = '/chooselanguage_screen';
  static const String favoriteScreen = '/favorite_screen';
  static const String calanderScreen = '/calander_screen';
  static const String cartScreen = '/cart_screen';
  static const String splashscreenScreen = '/splashscreen_screen';

  static const String onbordingOneScreen = '/onbording_one_screen';

  static const String onbordingTwoScreen = '/onbording_two_screen';

  static const String onbordingThreeScreen = '/onbording_three_screen';

  static const String accountTypeScreen = '/account_type_screen';

  static const String chooseAuthScreen = '/choose_auth_screen';

  static const String createAccountScreen = '/create_account_screen';

  static const String loginScreen = '/login_screen';

  static const String successScreen = '/success_screen';

  static const String homeScreen = '/home_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String homeContainerScreen = '/home_container_screen';

  static const String homeContainer1Page = '/home_container1_page';
  static const String productsScreen = '/products_screen';
  static const String initialRoute = '/initialRoute';
  static const String chatScreen = '/chat_screen';
  static const String profileScreen = '/profile_screen';
  static const String formschoolScreen = '/formschool_screen';
  static const String schoolsInfoScreen = '/schools_info_screen';

  static const String schoolsFacilitiesScreen = '/schools_facilities_screen';

  static const String schoolsActivitiesScreen = '/schools_activities_screen';

  static const String schoolsReviewsScreen = '/schools_reviews_screen';

  static List<GetPage> pages = [
    GetPage(
      name: TabContainerScreen,
      page: () => TabTabContainerScreen(),
      bindings: [
        SingleSuppliePolicyTabTabContainerBinding(),
      ],
    ),
    GetPage(
      name: cartScreen,
      page: () => CartScreen(),
      bindings: [
        CartBinding(),
      ],
    ),
    GetPage(
      name: schoolsInfoScreen,
      page: () => SchoolsInfoScreen(),
      bindings: [
        SchoolsInfoBinding(),
      ],
    ),
    GetPage(
      name: kindergartenScreen,
      page: () => KindergartenScreen(),
      bindings: [
        KindergartenBinding(),
      ],
    ),
    GetPage(
      name: schoolsFacilitiesScreen,
      page: () => SchoolsFacilitiesScreen(),
      bindings: [
        SchoolsFacilitiesBinding(),
      ],
    ),
    GetPage(
      name: schoolsActivitiesScreen,
      page: () => SchoolsActivitiesScreen(),
      bindings: [
        SchoolsActivitiesBinding(),
      ],
    ),
    GetPage(
      name: schoolsReviewsScreen,
      page: () => SchoolsReviewsScreen(),
      bindings: [
        SchoolsReviewsBinding(),
      ],
    ),
    GetPage(
      name: formschoolScreen,
      page: () => FormschoolScreen(),
      bindings: [
        FormschoolBinding(),
      ],
    ),
    GetPage(
      name: chooselanguageScreen,
      page: () => ChooselanguageScreen(),
      bindings: [
        ChooselanguageBinding(),
      ],
    ),
    GetPage(
      name: chatScreen,
      page: () => ChatScreen(),
      bindings: [
        ChatBinding(),
      ],
    ),
    GetPage(
      name: homeContainerScreen,
      page: () => HomeContainerScreen(),
      bindings: [
        HomeContainerBinding(),
      ],
    ),
    GetPage(
      name: splashscreenScreen,
      page: () => SplashscreenScreen(),
      bindings: [
        SplashscreenBinding(),
      ],
    ),
    GetPage(
      name: teachersScreen,
      page: () => TeachersScreen(),
      bindings: [
        TeachersBinding(),
      ],
    ),
    GetPage(
      name: schoolScreen,
      page: () => SchoolScreen(),
      bindings: [
        SchoolBinding(),
      ],
    ),
    GetPage(
      name: productsScreen,
      page: () => ProductsScreen(),
      bindings: [
        ProductsBinding(),
      ],
    ),
    GetPage(
      name: universitiesScreen,
      page: () => UniversitiesScreen(),
      bindings: [
        UniversitiesBinding(),
      ],
    ),
    GetPage(
      name: onbordingOneScreen,
      page: () => OnbordingOneScreen(),
      bindings: [
        OnbordingOneBinding(),
      ],
    ),
    GetPage(
      name: onbordingTwoScreen,
      page: () => OnbordingTwoScreen(),
      bindings: [
        OnbordingTwoBinding(),
      ],
    ),
    GetPage(
      name: onbordingThreeScreen,
      page: () => OnbordingThreeScreen(),
      bindings: [
        OnbordingThreeBinding(),
      ],
    ),
    GetPage(
      name: accountTypeScreen,
      page: () => AccountTypeScreen(),
      bindings: [
        AccountTypeBinding(),
      ],
    ),
    GetPage(
      name: chooseAuthScreen,
      page: () => ChooseAuthScreen(),
      bindings: [
        ChooseAuthBinding(),
      ],
    ),
    GetPage(
      name: createAccountScreen,
      page: () => CreateAccountScreen(),
      bindings: [
        CreateAccountBinding(),
      ],
    ),
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    ),
    GetPage(
      name: successScreen,
      page: () => SuccessScreen(),
      bindings: [
        SuccessBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => ChooselanguageScreen(),
      bindings: [
        ChooselanguageBinding(),
      ],
    )
  ];
}
