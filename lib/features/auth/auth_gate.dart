import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterfire_ui/auth.dart';
import 'package:game_management/app/core/theme/app_colors.dart';
import 'package:game_management/app/core/theme/app_text_theme_extension.dart';
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
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                colorScheme: const ColorScheme.dark(
                  primary: AppColors.primary,
                ),
                inputDecorationTheme: InputDecorationTheme(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: AppColors.primary),
                  ),
                ),
                outlinedButtonTheme: OutlinedButtonThemeData(
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsets>(
                      const EdgeInsets.all(24),
                    ),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(AppColors.primary),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(AppColors.dark),
                  ),
                ),
              ),
              home: SignInScreen(
                providerConfigs: const [
                  EmailProviderConfiguration(),
                ],
                headerBuilder: (context, constraints, _) {
                  return SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 30.0, top: 60),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Welcome to',
                            style: Theme.of(context).xTextTheme.body2,
                          ),
                          Text(
                            'GameManagement®',
                            style: Theme.of(context).xTextTheme.body2,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            );
          }
          return HomePage(currentUser: user);
        },
      ),
    );
  }
}
