import 'package:ausied/repositories/repositories.dart';
import 'package:ausied/screens/login/cubit/login_cubit.dart';
import 'package:ausied/screens/login/fbhome.dart';
import 'package:ausied/screens/screens.dart';
import 'package:ausied/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
/*
class LoginScreen extends StatelessWidget {
  static const String routeName = '/login';

  static Route route() {
    return PageRouteBuilder(
      settings: const RouteSettings(name: routeName),
      transitionDuration: const Duration(seconds: 0),
      pageBuilder: (context, _, __) => BlocProvider<LoginCubit>(
        create: (_) =>
            LoginCubit(authRepository: context.read<AuthRepository>()),
        child: LoginScreen(),
      ),
    );
  }

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: BlocConsumer<LoginCubit, LoginState>(
          listener: (context, state) {
            if (state.status == LoginStatus.error) {
              showDialog(
                context: context,
                builder: (context) =>
                    ErrorDialog(content: state.failure.message),
              );
            }
          },
          builder: (context, state) {
            return Scaffold(
              resizeToAvoidBottomInset: false,
              body: Center(
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Card(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Text(
                              'Instagram',
                              style: TextStyle(
                                fontSize: 28.0,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 12.0),
                            TextFormField(
                              decoration: InputDecoration(hintText: 'Email'),
                              onChanged: (value) => context
                                  .read<LoginCubit>()
                                  .emailChanged(value),
                              validator: (value) => !value.contains('@')
                                  ? 'Please enter a valid email.'
                                  : null,
                            ),
                            const SizedBox(height: 16.0),
                            TextFormField(
                              decoration: InputDecoration(hintText: 'Password'),
                              obscureText: true,
                              onChanged: (value) => context
                                  .read<LoginCubit>()
                                  .passwordChanged(value),
                              validator: (value) => value.length < 6
                                  ? 'Must be at least 6 characters.'
                                  : null,
                            ),
                            const SizedBox(height: 28.0),
                            /*
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.black, // background
                                onPrimary: Colors.white, // foreground
                              ),
                              onPressed: () => _submitForm(
                                context,
                                state.status == LoginStatus.submitting,
                              ),
                              child: const Text('Log In'),
                            ),
                            */
                            SignInButtonBuilder(
                                onPressed: () => _submitForm(
                                context,
                                state.status == LoginStatus.submitting,
                              ),
                              text: 'Sign in with Email', 
                              backgroundColor: Colors.greenAccent,
                              icon: Icons.email,
                            ),
                            const SizedBox(height: 12.0),
                            SignInButton(
                              Buttons.Google, 
                              onPressed: () {},
                            ),
                            const SizedBox(height: 12.0),
                            SignInButton(
                              Buttons.Facebook, 
                              text: 'Sign in with Facebook',
                              onPressed: () {},
                              ),
                            const SizedBox(height: 12.0),
                            SignInButton(
                              Buttons.LinkedIn,
                              text: 'Sign in with LinkedIn', 
                              onPressed: () {}
                              ),
                            const SizedBox(height: 12.0),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white10, // background
                                onPrimary: Colors.blueAccent, // foreground
                              ),
                              onPressed: () => Navigator.of(context)
                                  .pushNamed(SignupScreen.routeName),
                              child: const Text('No account? Sign up'),
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
        ),
      ),
    );
  }

  void _submitForm(BuildContext context, bool isSubmitting) {
    if (_formKey.currentState.validate() && !isSubmitting) {
      context.read<LoginCubit>().logInWithCredentials();
    }
  }
}
*/

class LoginScreen extends StatefulWidget {
  static const String routeName = '/login';
  static Route route() {
    return PageRouteBuilder(
      settings: const RouteSettings(name: routeName),
      transitionDuration: const Duration(seconds: 0),
      pageBuilder: (context, _, __) => BlocProvider<LoginCubit>(
        create: (_) =>
            LoginCubit(authRepository: context.read<AuthRepository>()),
        child: LoginScreen(),
      ),
    );
  }

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: BlocConsumer<LoginCubit, LoginState>(
          listener: (context, state) {
            if (state.status == LoginStatus.error) {
              showDialog(
                context: context,
                builder: (context) =>
                    ErrorDialog(content: state.failure.message),
              );
            }
          },
          builder: (context, state) {
            return Scaffold(
              resizeToAvoidBottomInset: false,
              body: Center(
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Card(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Text(
                              'AUSIEDU',
                              style: TextStyle(
                                fontSize: 28.0,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 12.0),
                            TextFormField(
                              decoration: InputDecoration(hintText: 'Email'),
                              onChanged: (value) => context
                                  .read<LoginCubit>()
                                  .emailChanged(value),
                              validator: (value) => !value.contains('@')
                                  ? 'Please enter a valid email.'
                                  : null,
                            ),
                            const SizedBox(height: 16.0),
                            TextFormField(
                              decoration: InputDecoration(hintText: 'Password'),
                              obscureText: true,
                              onChanged: (value) => context
                                  .read<LoginCubit>()
                                  .passwordChanged(value),
                              validator: (value) => value.length < 6
                                  ? 'Must be at least 6 characters.'
                                  : null,
                            ),
                            const SizedBox(height: 28.0),
                            /*
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.black, // background
                                onPrimary: Colors.white, // foreground
                              ),
                              onPressed: () => _submitForm(
                                context,
                                state.status == LoginStatus.submitting,
                              ),
                              child: const Text('Log In'),
                            ),
                            */
                            SignInButtonBuilder(
                              onPressed: () => _submitForm(
                                context,
                                state.status == LoginStatus.submitting,
                              ),
                              text: 'Sign in with Email',
                              backgroundColor: Colors.greenAccent,
                              icon: Icons.email,
                            ),
                            const SizedBox(height: 12.0),
                            SignInButton(
                              Buttons.Google,
                              onPressed: () =>
                                  context.read<LoginCubit>().logInWithGoogle(),
                            ),
                            const SizedBox(height: 12.0),
                            SignInButton(
                              Buttons.Facebook,
                              text: 'Sign in with Facebook',
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => 
                                  HomePage()),
                                );
                              },
                            ),
                            const SizedBox(height: 12.0),
                            SignInButton(Buttons.LinkedIn,
                                text: 'Sign in with LinkedIn',
                                onPressed: () {}),
                            const SizedBox(height: 12.0),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white10, // background
                                onPrimary: Colors.blueAccent, // foreground
                              ),
                              onPressed: () => Navigator.of(context)
                                  .pushNamed(SignupScreen.routeName),
                              child: const Text('No account? Sign up'),
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
        ),
      ),
    );
  }

  void _submitForm(BuildContext context, bool isSubmitting) {
    if (_formKey.currentState.validate() && !isSubmitting) {
      context.read<LoginCubit>().logInWithCredentials();
    }
  }
}
