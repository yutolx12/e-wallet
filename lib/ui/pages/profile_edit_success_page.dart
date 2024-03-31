import 'package:bank_dkg/shared/theme.dart';
import 'package:bank_dkg/ui/widgets/buttons.dart';
import 'package:flutter/material.dart';

class ProfileEditSuccessPage extends StatelessWidget {
  const ProfileEditSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: lightBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Nice Update!',
              style:
                  blackTextStyle.copyWith(fontSize: 20, fontWeight: semiBold),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 26,
            ),
            Text(
              'Your data is safe with\nour system',
              style: greyTextStyle.copyWith(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 50,
            ),
            CustomFilledButton(
              width: 183,
              title: 'My Profile',
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/profile', (route) => false);
              },
            )
          ],
        ),
      ),
    );
  }
}
