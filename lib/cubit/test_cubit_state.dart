part of 'test_cubit_cubit.dart';

@freezed
class TestCubitState with _$TestCubitState {
  const factory TestCubitState.initial() = _Initial;
  const factory TestCubitState.loading() = _Loading;
  const factory TestCubitState.loaded(List<String> items) = _Loaded;

}
