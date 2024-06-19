import 'package:flutter/material.dart';
import 'package:flutter_use_case_app/advanced_inherited/advanced_inherited_form.dart';
import 'package:flutter_use_case_app/advanced_inherited/advanced_inherited_state.dart';
import 'package:flutter_use_case_app/advanced_inherited/model/inherited_user_model.dart';

class AdvancedInheritedProvider extends StatefulWidget {
  const AdvancedInheritedProvider({super.key, required this.user});
  final InheritedSampleUser user;

  @override
  State<AdvancedInheritedProvider> createState() =>
      AdvancedInheritedProviderState();
}

class AdvancedInheritedProviderState extends State<AdvancedInheritedProvider>
    with AdvancedInheritedProviderStateMixin {
  @override
  void initState() {
    super.initState();
    userNameController.text = widget.user.userName;
  }

  @override
  void dispose() {
    super.dispose();
    userNameController.dispose();
    emailController.dispose();
    userNameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AdvanceInherited(
      data: this,
      child: const AdvancedInheritedForm(),
    );
  }
}

mixin AdvancedInheritedProviderStateMixin on State<AdvancedInheritedProvider> {
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController userNameController = TextEditingController();
  final ValueNotifier<bool> formValidateNotifier = ValueNotifier<bool>(false);
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  void updateUsernameFieldDefaultName() {
    userNameController.text = widget.user.userName;
  }

  ///when tap make default button create random e-mail
  void randomEmailCreater() {
    emailController.text = 'arican_random@gmail.com';
  }

  /// value controller
  void checkValidate() {
    formValidateNotifier.value = formKey.currentState?.validate() ?? false;
  }

//what do this method tap can when  password field
  void onTapOutside() {
    showDialog(
      context: context,
      builder: (context) {
        return const AlertDialog(
          title: Text('onTapOutside'),
        );
      },
    );
  }

  ///this method  clears password field
  void clearPasswordField() {
    passwordController.clear();
  }

  /// get user model
  SampleUserRequest get userRequest => SampleUserRequest(
      email: emailController.text,
      password: passwordController.text,
      userName: userNameController.text);
}
