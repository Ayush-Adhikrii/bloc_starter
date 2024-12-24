import 'package:flutter_bloc/flutter_bloc.dart';

class SimpleInterestCubit extends Cubit<double> {
  SimpleInterestCubit() : super(0);

  void calculateSI(double principle, double time, double rate) {
    emit(principle * time * rate / 100);
  }
}
