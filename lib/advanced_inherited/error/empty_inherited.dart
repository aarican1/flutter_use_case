import 'package:flutter/material.dart';



class EmptyInherited extends StatefulWidget {
  const EmptyInherited({super.key});

  @override
  State<EmptyInherited> createState() => _EmptyInheritedState();
}

class _EmptyInheritedState extends State<EmptyInherited> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController userNameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Power of Inherited'),
      ),
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              UserNameTextFFWidget(
                userNameEditingController: userNameController,
              ),
              MakeDefaultButtonWidget(
                userNameController: userNameController,
              ),
              EmailRowWidget(
                emailEditingController: emailController,
              ),
              PasswordRowWidget(
                passwordEditingController: passwordController,
              ),
              const OnSubmitButtonWidget()
            ],
          ),
        ),
      ),
    );
  }
}

class OnSubmitButtonWidget extends StatelessWidget {
  const OnSubmitButtonWidget({
    super.key,
  });
    
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: () {}, child: const Text('Submit'));
  }
}

class MakeDefaultButtonWidget extends StatelessWidget {
  const MakeDefaultButtonWidget({super.key, required this.userNameController});
  final TextEditingController userNameController;
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          userNameController.text = 'Aricann';
        },
        child: const Text('Make a default'));
  }
}

class PasswordRowWidget extends StatelessWidget {
  const PasswordRowWidget({super.key, required this.passwordEditingController});
  final TextEditingController passwordEditingController;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextFormField(
            controller: passwordEditingController,
            decoration: const InputDecoration(labelText: 'Password'),
          ),
        ),
        TextButton(
            onPressed: passwordEditingController.clear,
            child: const Text('Reset password'))
      ],
    );
  }
}

class EmailRowWidget extends StatelessWidget {
  const EmailRowWidget({super.key, required this.emailEditingController});
  final TextEditingController emailEditingController;
  @override
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
            onPressed: () {
              emailEditingController.text = 'random@gmail.com';
            },
            child: const Text('Random')),
        Expanded(
          child: TextFormField(
            controller: emailEditingController,
            decoration: const InputDecoration(labelText: 'E-mail'),
          ),
        ),
      ],
    );
  }
}

class UserNameTextFFWidget extends StatelessWidget {
  const UserNameTextFFWidget(
      {super.key, required this.userNameEditingController});
  final TextEditingController userNameEditingController;
  @override
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: userNameEditingController,
      decoration: const InputDecoration(labelText: 'Username'),
    );
  }
}
