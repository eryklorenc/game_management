import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterfire_ui/auth.dart';
import 'package:game_management/features/auth/cubit/root_cubit.dart';
import 'package:game_management/features/home/home_page.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RootCubit()..start(),
      child: BlocBuilder<RootCubit, RootState>(
        builder: (context, state) {
          final user = state.user;
          if (user == null) {
            return SignInScreen(
                providerConfigs: const [
                  EmailProviderConfiguration(),
                ],
                headerBuilder: (context, constraints, _) {
                  return const Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Welcome!',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 30,
                            color: Color.fromARGB(255, 199, 194, 194),
                          ),
                        ),
                        Icon(
                          Icons.handshake_outlined,
                          color: Color.fromARGB(255, 199, 194, 194),
                        )
                      ],
                    ),
                  );
                },
                footerBuilder: (context, action) {
                  return const Image(
                    image: AssetImage('assets/logoGame.png'),
                  );
                });
          }
          return HomePage(currentUser: user);
        },
      ),
    );
  }
}
