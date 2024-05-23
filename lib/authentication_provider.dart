import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

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
}
