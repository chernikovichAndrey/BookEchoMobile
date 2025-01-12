part of 'app_bloc.dart';

sealed class AppState extends Equatable {
  const AppState();

  @override
  List<Object?> get props => [];
}

class AppStateLoading extends AppState {
  const AppStateLoading();
}

class AppStateAuthenticated extends AppState {
  const AppStateAuthenticated();
}

class AppStateUnauthenticated extends AppState {
  const AppStateUnauthenticated();
}
