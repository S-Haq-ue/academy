import 'package:academy/const_file.dart';
import 'package:academy/home_screen/home_screen.dart';
import 'package:academy/login_screen/provider_login_screen.dart';
import 'package:academy/widgets/custom_button.dart';
import 'package:academy/widgets/custome_text_field.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<LoginScreenProvider>(
      builder: (context, loginPageProvider, child) {
        return Scaffold(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          body: SafeArea(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Form(
                  key: loginPageProvider.formKey,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: paddingValue *2),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CustomTextField(
                          hintText: 'username',
                          keyboardType: TextInputType.emailAddress,
                          suffixIcon: const Icon(
                            Icons.email_outlined,
                            color: backgroundColor,
                          ),
                          controller: loginPageProvider.usernameController,
                          focusNode: loginPageProvider.emailFocusNode,
                          textInputAction: TextInputAction.next,
                          validator: (username) {
                            if (username!.isEmpty) {
                              return 'Please enter username';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        CustomTextField(
                          hintText: 'Password',
                          maxLength: 20,
                          keyboardType: TextInputType.visiblePassword,
                          suffixIcon: IconButton(
                            onPressed: () => loginPageProvider.changepasswodVisibility(),
                            icon: Icon(
                              loginPageProvider.passwordVisibility ? Icons.visibility : Icons.visibility_off,
                              color: backgroundColor,
                            ),
                          ),
                          controller: loginPageProvider.passwordController,
                          focusNode: loginPageProvider.passwordFocusNode,
                          textInputAction: TextInputAction.done,
                          obscureText: loginPageProvider.passwordVisibility,
                          validator: (password) {
                            if (password!.isEmpty) {
                              return 'Please enter password';
                            } else if (password.length < 4) {
                              return 'Password must be at least 6 characters long';
                            }
                            return null;
                          },
                          onFieldSubmitted: (mobile) async =>
                              loginClick(context: context, loginFuction: loginPageProvider.login),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        CustomButton(
                          isLoading: loginPageProvider.isLoading,
                          onPressed: () => loginClick(context: context, loginFuction: loginPageProvider.login),
                          child:  Text(
                            'Login',
                            textScaler: const TextScaler.linear(1),
                            style: normalText,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            
                          },
                          style: TextButton.styleFrom(
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            alignment: Alignment.center,
                          ),
                          child: const Text(
                            'Register',
                            textScaler: TextScaler.linear(1),
                            style: TextStyle(color: secondaryColor),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  void loginClick({required BuildContext context, required Future<String?> Function() loginFuction}) async {
    FocusScope.of(context).unfocus();
    ScaffoldMessenger.of(context).clearSnackBars();
    try {
      String? loginStatus = await loginFuction();
      if (loginStatus == 'Auth Success') {
        // ignore: use_build_context_synchronously
        Navigator.of(context).pushNamed(HomeScreen.classId);
      } else if (loginStatus == null) {
      } else {
        // ignore: use_build_context_synchronously
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              loginStatus,
              textScaler: const TextScaler.linear(1),
            ),
          ),
        );
      }
    } catch (e) {
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).clearSnackBars();
      debugPrint(e.toString());
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            'Something went wrong.',
            textScaler: TextScaler.linear(1),
          ),
        ),
      );
    }
  }
}
