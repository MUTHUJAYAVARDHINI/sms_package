part of 'app_bloc.dart';

@Freezed()
class AppEvent with _$AppEvent {
  const factory AppEvent.loaded() = _Loaded;
  const factory AppEvent.darkModeChanged() = _DarkModeChanged;
}
