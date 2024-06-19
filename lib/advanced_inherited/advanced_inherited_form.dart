import 'package:flutter/material.dart';
import 'package:flutter_use_case_app/advanced_inherited/advanced_inherited_state.dart';

class AdvancedInheritedForm extends StatefulWidget {
  const AdvancedInheritedForm({
    super.key,
  });

  @override
  State<AdvancedInheritedForm> createState() => _AdvancedInheritedFormState();
}

final class _AdvancedInheritedFormState extends State<AdvancedInheritedForm> {
  @override
  Widget build(BuildContext context) {
    final currentState = AdvanceInherited.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Power of Inherited'),
      ),
      body: Form(
        key: currentState.formKey,
        onChanged: 
          currentState.checkValidate
        ,
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              UserNameTextFFWidget(),
              MakeDefaultButtonWidget(),
              EmailRowWidget(),
              PasswordRowWidget(),
              OnSubmitButton(),
            ],
          ),
        ),
      ),
    );
  }
}

final class OnSubmitButton extends StatelessWidget {
  const OnSubmitButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final currentState = AdvanceInherited.of(context);
    return ValueListenableBuilder(
      valueListenable: currentState.formValidateNotifier,
      builder: (context, value, child) {
        return ElevatedButton(
            onPressed: !value
                ? null
                : () {
                    final userRequest = currentState.userRequest;
                    print(userRequest);
                  },
            child: const Text('Submit'));
      },
    );
  }
}

final class MakeDefaultButtonWidget extends StatelessWidget {
  const MakeDefaultButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final currentState = AdvanceInherited.of(context);
    return TextButton(
        onPressed: () {
          currentState.updateUsernameFieldDefaultName();
        },
        child: const Text('Make a default'));
  }
}

final class PasswordRowWidget extends StatelessWidget {
  const PasswordRowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final currentState = AdvanceInherited.of(context);
    return Row(
      children: [
        Expanded(
          child: TextFormField(
            onTapOutside: (event) => currentState.onTapOutside,
            validator: (String? value) =>
                value?.isEmpty ?? true ? 'Empty' : null,
            controller: currentState.passwordController,
            decoration: const InputDecoration(labelText: 'Password'),
          ),
        ),
        TextButton(
            onPressed: currentState.clearPasswordField,
            child: const Text('Reset password'))
      ],
    );
  }
}

final class EmailRowWidget extends StatelessWidget {
  const EmailRowWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final currentState = AdvanceInherited.of(context);
    return Row(
      children: [
        TextButton(
            onPressed: currentState.randomEmailCreater,
            child: const Text('Random')),
        Expanded(
          child: TextFormField(
            controller: currentState.emailController,
            decoration: const InputDecoration(labelText: 'E-mail'),
          ),
        ),
      ],
    );
  }
}

final class UserNameTextFFWidget extends StatelessWidget {
  const UserNameTextFFWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final currentState = AdvanceInherited.of(context);
    return TextFormField(
      controller: currentState.userNameController,
      decoration: const InputDecoration(labelText: 'Username'),
    );
  }
}
