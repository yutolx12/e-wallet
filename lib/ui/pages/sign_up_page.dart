import 'package:bank_dkg/ui/widgets/buttons.dart';
import 'package:flutter/material.dart';

import '../../shared/theme.dart';
import '../widgets/forms.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: lightBackgroundColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          Container(
            width: 155,
            height: 50,
            margin: const EdgeInsets.only(
              top: 100,
              bottom: 100,
            ),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/img_logo_light.png'))),
          ),
          Text('Join Us to Unlock\nYour Growth',
              style: blackTextStyle.copyWith(
                fontSize: 20,
                fontWeight: semiBold,
              )),
          const SizedBox(
            height: 30,
          ),
          Container(
              padding: const EdgeInsets.all(22),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: whiteColor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // FULL NAME INPUT
                  CustomFormField(title: 'Full Name'),
                  const SizedBox(
                    height: 16,
                  ),
                  // EMAIL INPUT
                  CustomFormField(title: 'Email Address'),
                  const SizedBox(
                    height: 16,
                  ),
                  CustomFormField(
                    title: 'Password',
                    obsureText: true,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  CustomFilledButton(
                    title: 'Continue',
                    onPressed: () {
                      Navigator.pushNamed(context, '/sign-up-set-profile');
                    },
                  )
                ],
              )),
          SizedBox(
            height: 50,
          ),
          CustomTextButton(
            title: 'Sign In',
            onPressed: () {
              Navigator.pushNamed(context, '/sign-in');
            },
          )
          // SizedBox(
          //   width: double.infinity,
          //   height: 24,
          //   child: TextButton(
          //     onPressed: () {
          //       Navigator.pushNamed(context, '/sign-in');
          //     },
          //     style: TextButton.styleFrom(
          //       padding: EdgeInsets.zero,
          //     ),
          //     child: Text(
          //       'Sign In',
          //       style: greyTextStyle.copyWith(
          //         fontSize: 16,
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
