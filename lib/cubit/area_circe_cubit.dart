import 'package:flutter_bloc/flutter_bloc.dart';

class AreaCirceCubit extends Cubit<double> {
  AreaCirceCubit() : super(0);

  void calculateArea(double radius) {
    emit(22 / 7 * radius * radius);
  }
}
