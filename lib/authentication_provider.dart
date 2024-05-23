import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'authentication_provider.g.dart';

enum AuthenticationState {
  initial,
  loading,
  success,
  error,
}

@riverpod
class Authentication extends _$Authentication {
  @override
  FutureOr<AuthenticationState> build() {
    return AuthenticationState.initial;
  }

  Future<void> login() async {
    state = AuthenticationState.loading;

    state = AuthenticationState.success;

    state = AuthenticationState.error;
  }
}

class LoginPage extends ConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(authenticationProvider, (previous, next) {
      if (next == AuthenticationState.succss) {
        // Navigate to home page
      } else if (next == AuthenticationState.error) {
        // Show error
      }
    });

    return const Placeholder();
  }
}
