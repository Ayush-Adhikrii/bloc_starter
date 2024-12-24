import 'package:flutter_bloc/flutter_bloc.dart';

class VolumeCuboidCubit extends Cubit<double> {
  VolumeCuboidCubit() : super(0);

  void calculateVolume(double length, double bredth, double height) {
    emit(length * bredth * height);
  }
}
