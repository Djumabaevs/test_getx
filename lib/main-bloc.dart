import 'package:bloc/bloc.dart';

enum CounterEvent { incremenet, decrement }

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0);

  @override
  Stream<int> mapEventToState(CounterEvent event) async* {}
}
