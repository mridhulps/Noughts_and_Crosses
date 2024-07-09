import 'package:flutter/material.dart';

import 'package:noughts_and_crosses/global/refactors/spacing_widget.dart';

import 'package:noughts_and_crosses/presentation/authpage/widgets/customtext_field.dart';
import 'package:noughts_and_crosses/presentation/authpage/widgets/loginorsignup_title.dart';

class Authentication extends StatelessWidget {
  const Authentication({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, bottom: 20),
          child: SizedBox(
            child: Column(
              children: [
                // SIGNUP OF LOGIN CONTAINER;
                Expanded(
                    flex: 3,
                    child: Container(
                      //   color: Colors.grey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const LoginOrSignupTitle(
                            title: 'SignuP',
                            fontsize: 40,
                          ),
                          Spacing.height(
                              Spacing.mediaquerySize(context).height / 7),
                          const CustomTextField(
                            hintText: 'Email',
                            borderradius: 20,
                          ),
                          Spacing.height(30),
                          const CustomTextField(
                            hintText: 'Password',
                            borderradius: 20,
                          ),
                        ],
                      ),
                    )),
                //SIGNUP OR LOGIN BUTTON CONTAINER;
                Expanded(
                    child: SizedBox(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                        style: ButtonStyle(
                            shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)))),
                        onPressed: () {},
                        child: const SizedBox(
                            width: double.infinity,
                            child: Center(child: Text('Login'))),
                      ),
                    ],
                  ),
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
