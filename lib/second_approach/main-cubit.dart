import 'package:bloc/bloc.dart';

class CounterCubit2 extends Cubit<int> {
  CounterCubit2() : super(0);

  void increment() => emit(state + 1);
  void decrement() => emit(state - 1);
}

Future<void> main(List<String> args) async {
  final cubit = CounterCubit2();

  final streamSubscription = cubit.listen(print);

  cubit.increment();
  cubit.increment();
  cubit.increment();
  cubit.increment();

  await Future.delayed(Duration.zero);
  await streamSubscription.cancel();
  await cubit.close();
}
