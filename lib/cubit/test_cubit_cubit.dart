import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'test_cubit_state.dart';
part 'test_cubit_cubit.freezed.dart';

class TestCubitCubit extends Cubit<TestCubitState> {
  TestCubitCubit() : super(const TestCubitState.initial());

  final List<String> items = List.generate(10, (index) => 'Item $index');
  void changeState() {
    emit(const TestCubitState.loading());
  }

  void loadItems() {
    emit(TestCubitState.loaded(items));
  }
}
