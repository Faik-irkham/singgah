import 'package:flutter/material.dart';
import 'package:singgah/shared/theme.dart';
import 'package:singgah/ui/home_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        children: [
          const SizedBox(height: 60),
          Column(
            children: [
              Text(
                'Sign In',
                style: blackTextStyle.copyWith(
                  fontSize: 24,
                  fontWeight: semiBold,
                ),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.all(12),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'email',
                hintStyle: greyTextStyle,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomePage(),
                ),
                (route) => false,
              );
            },
            child: Text(
              'Sign In',
              style: blackTextStyle,
            ),
          ),
        ],
      ),
    );
  }
}
