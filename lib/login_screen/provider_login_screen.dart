import 'package:academy/services/user_model.dart';
import 'package:flutter/material.dart';

class LoginScreenProvider with ChangeNotifier {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _emailFocusNode = FocusNode();
  final _passwordFocusNode = FocusNode();
  final _formKey = GlobalKey<FormState>();
  bool _isLoading = false;
  bool _passwordVisibility = true;

  TextEditingController get usernameController => _usernameController;
  TextEditingController get passwordController => _passwordController;
  FocusNode get emailFocusNode => _emailFocusNode;
  FocusNode get passwordFocusNode => _passwordFocusNode;
  GlobalKey<FormState> get formKey => _formKey;
  bool get isLoading => _isLoading;
  bool get passwordVisibility => _passwordVisibility;

  void changepasswodVisibility() {
    _passwordVisibility = !_passwordVisibility;
    notifyListeners();
  }

  Future<String?> login() async {
    if (!_formKey.currentState!.validate()) {
      return null;
    }
    _isLoading = true;
    notifyListeners();
    try {
      final loginCred = UserDetails(name: usernameController.text, password: passwordController.text);
      if (loginCred == userCred) {
        _isLoading = false;
        notifyListeners();
        return "Auth Success";
      }
      _isLoading = false;
      notifyListeners();
      return null;
    } catch (e) {
      _isLoading = false;
      notifyListeners();
      return e.toString();
    }
  }

  @override
  void dispose() {
    _passwordController.dispose();
    _emailFocusNode.dispose();
    _passwordFocusNode.dispose();
    _usernameController.dispose();
    super.dispose();
  }
}
