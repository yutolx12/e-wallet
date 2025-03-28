import 'package:bank_dkg/shared/theme.dart';
import 'package:bank_dkg/ui/pages/home_page.dart';
import 'package:bank_dkg/ui/pages/onboarding_page.dart';
import 'package:bank_dkg/ui/pages/pin_page.dart';
import 'package:bank_dkg/ui/pages/profile_edit_page.dart';
import 'package:bank_dkg/ui/pages/profile_edit_pin_page.dart';
import 'package:bank_dkg/ui/pages/profile_edit_success_page.dart';
import 'package:bank_dkg/ui/pages/profile_page.dart';
import 'package:bank_dkg/ui/pages/sign_in_page.dart';
import 'package:bank_dkg/ui/pages/sign_up_page.dart';
import 'package:bank_dkg/ui/pages/sign_up_set_profile.dart';
import 'package:bank_dkg/ui/pages/sign_up_set_id_card.dart';
import 'package:bank_dkg/ui/pages/sign_up_success_page.dart';
import 'package:bank_dkg/ui/pages/splash_page.dart';
import 'package:bank_dkg/ui/pages/topup_amount_page.dart';
import 'package:bank_dkg/ui/pages/topup_page.dart';
import 'package:bank_dkg/ui/pages/topup_success.dart';
import 'package:bank_dkg/ui/pages/transfer_page.dart';
import 'package:flutter/material.dart';
// import '';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: lightBackgroundColor,
        appBarTheme: AppBarTheme(
          backgroundColor: lightBackgroundColor,
            elevation: 0,
            centerTitle: true,
            iconTheme: IconThemeData(color: blackColor),
            titleTextStyle: blackTextStyle.copyWith(
                fontSize: 20,
                fontWeight: semiBold,
              ),
        )
      ),
      // home: SplashPage(),
      routes: {
        '/': (context) => const SplashPage(),
        '/onboarding': (context) => const OnBoardingPage(),
        '/sign-in': (context) => const SignInPage(),
        '/sign-up': (context) => const SignUpPage(),
        '/sign-up-set-profile': (context) => const SignUpSetProfilePage(),
        '/sign-up-set-id-card': (context) => const SignUpSetIdCardPage(),
        '/sign-up-success': (context) => const SignUpSuccessPage(),
        '/home': (context) => const HomePage(),
        '/profile': (context) => const ProfilePage(),
        '/pin': (context) => const PinPage(),
        '/profile-edit': (context) => const ProfileEditPage(),
        '/profile-edit-pin': (context) => const ProfileEditPinPage(),
        '/profile-edit-success': (context) => const ProfileEditSuccessPage(),
        '/topup': (context) => const TopUpPage(),
        '/topup-amount': (context) => const TopUpAmountPage(),
        '/topup-success': (context) => const TopUpSuccessPage(),
        '/transfer' : (context) => const TransferPage()
      },
    );
  }
}
