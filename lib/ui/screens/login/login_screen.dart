import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:nievec_base/ui/styles.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreen();
}

class _LoginScreen extends ConsumerState<LoginScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: const Text('NIEVEC', style: TextStyle(color: Styles.primaryColor))),
      body: Center(
        child: Column(
          children:[
            const Text('Login', style: TextStyle(color: Styles.primaryColor),),
            TextButton(
              onPressed: () => context.go('/'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.white,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5))),
              ),
              child: const Text('Home', style: TextStyle(color: Styles.primaryColor),),
            )
          ]
        ),
      ),
    );
  }
}