import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimpleblocObserver implements BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    debugPrint('change=$change');
  }

  @override
  void onClose(BlocBase bloc) {
    debugPrint('close=$bloc');
  }

  @override
  void onCreate(BlocBase bloc) {
    debugPrint('Create=$bloc');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    // TODO: implement onError
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    // TODO: implement onEvent
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    // TODO: implement onTransition
  }
}
