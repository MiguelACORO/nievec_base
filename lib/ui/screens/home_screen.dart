import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import 'package:nievec_base/ui/styles.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreen();
}

class _HomeScreen extends ConsumerState<HomeScreen> {

  FToast fToast = FToast();

  @override
  void initState() {
    super.initState();
    fToast.init(context);
  }

  @override
  Widget build(BuildContext context){
    final text = AppLocalizations.of(context)!;

    // ignore: prefer_typing_uninitialized_variables
    var ctime;

    return WillPopScope(
      child: body(text),
      onWillPop: () async {
        DateTime now = DateTime.now();
        if (ctime == null || now.difference(ctime) > const Duration(seconds: 2)) {
          ctime = now;

          fToast.showToast(
            child: toast(text),
            gravity: ToastGravity.BOTTOM,
            toastDuration: const Duration(seconds: 2),
          );

          //scaffold message, you can show Toast message too.
          return Future.value(false);
        }

        return Future.value(true);
      },
    );
  }

  Widget body(AppLocalizations text) {
    return Scaffold(
      appBar: AppBar(leading: const Text('NIEVEC', style: TextStyle(color: Styles.primaryColor))),
      body: Center(
        child: Column(
            children:[
              const Text('Home', style: TextStyle(color: Styles.primaryColor),),
              TextButton(
                onPressed: () => context.go('/login'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.white,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                ),
                child: const Text('Login', style: TextStyle(color: Styles.primaryColor),),
              )
            ]
        ),
      ),
    );
  }

  Widget toast(AppLocalizations text) {
    return Container(
      padding:
      const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0)
      ,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: Styles.secondaryColor,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            width: 12.0,
          ),
          Text(text.doubleTap),
        ]
        ,
      ),
    );
  }
}