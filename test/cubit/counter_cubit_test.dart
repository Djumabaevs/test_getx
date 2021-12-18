import 'package:bloc_test/bloc_test.dart';
import 'package:test_getx/fourth_approach/cubit/counter_cubit.dart';
import 'package:test/test.dart';

void main() {
  group('CounterCubit', () {
    CounterCubit4 counterCubit4;

    setUp(() {
      counterCubit4 = CounterCubit4();
    });

    tearDown(() {
      counterCubit4.close();
    });

    test('initial state of CounterCubit(counterValue:0', () {
      expect(counterCubit4.state, CounterState(counterValue: 0));
    });
        blocTest(
        'the CounterCubit should emit a CounterState(counterValue:1, wasIncremented:true) when the increment function is called',
        build: () => counterCubit,
        act: (cubit) => cubit.increment(),
        expect: [CounterState(counterValue: 1, wasIncremented: true)]);

    blocTest(
        'the CounterCubit should emit a CounterState(counterValue:-1, wasIncremented:false) when the decrement function is called',
        build: () => counterCubit,
        act: (cubit) => cubit.decrement(),
        expect: [CounterState(counterValue: -1, wasIncremented: false)]);
  });
  });
}
