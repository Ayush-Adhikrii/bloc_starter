import 'package:bloc_test/bloc/arithmetic_bloc.dart';
import 'package:bloc_test/bloc/counter_bloc.dart';
import 'package:bloc_test/cubit/area_circe_cubit.dart';
import 'package:bloc_test/cubit/arithmetic_cubit.dart';
import 'package:bloc_test/cubit/counter_cubit.dart';
import 'package:bloc_test/cubit/simple_interest_cubit.dart';
import 'package:bloc_test/cubit/student_cubit.dart';
import 'package:bloc_test/cubit/volume_cuboid_cubit.dart';
import 'package:bloc_test/view/area_circle_cubit_view.dart';
import 'package:bloc_test/view/arithmetic_cubit_view.dart';
import 'package:bloc_test/view/counter_bloc_view.dart';
import 'package:bloc_test/view/counter_cubit_view.dart';
import 'package:bloc_test/view/interest_cubit_view.dart';
import 'package:bloc_test/view/student_cubit_view.dart';
import 'package:bloc_test/view/volume_cuboid_cubit_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardCubit extends Cubit<void> {
  DashboardCubit(
    this._counterCubit,
    this._arithmeticCubit,
    this._studentCubit,
    this._simpleInterestCubit,
    this._areaCirceCubit,
    this._volumeCuboid,
    this._arithmeticBloc,
    this._counterBloc,
  ) : super(null);

  final CounterCubit _counterCubit;
  final ArithmeticCubit _arithmeticCubit;
  final StudentCubit _studentCubit;
  final SimpleInterestCubit _simpleInterestCubit;
  final AreaCirceCubit _areaCirceCubit;
  final VolumeCuboidCubit _volumeCuboid;

  final CounterBloc _counterBloc;
  final ArithmeticBloc _arithmeticBloc;

  void openCounterView(BuildContext context) {
    // Widget build(BuildContext context) {
    // return MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   title: 'Flutter BLoC',
    //   home: BlocProvider(
    //     create: (context) => CounterCubit(),
    //     child: CounterCubitView(),
    //   ),
    // );
    // }

    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => BlocProvider.value(
                  // value: _counterBloc,
                  value: _counterCubit,
                  child: CounterCubitView(),
                )));
  }

  void openCounterBlocView(BuildContext context) {
    // Widget build(BuildContext context) {
    // return MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   title: 'Flutter BLoC',
    //   home: BlocProvider(
    //     create: (context) => CounterCubit(),
    //     child: CounterCubitView(),
    //   ),
    // );
    // }

    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => BlocProvider.value(
                  value: _counterBloc,
                  // value: _counterCubit,
                  child: CounterBlocView(),
                )));
  }

  void openArithmeticView(BuildContext context) {
    // Widget build(BuildContext context) {
    // return MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   title: 'Flutter BLoC',
    //   home: BlocProvider(
    //     create: (context) => CounterCubit(),
    //     child: CounterCubitView(),
    //   ),
    // );
    // }

    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => BlocProvider.value(
                  // value: _arithmeticBloc,
                  value: _arithmeticCubit,
                  child: ArithmeticCubitView(),
                )));
  }

  void openArithmeticBlocView(BuildContext context) {
    // Widget build(BuildContext context) {
    // return MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   title: 'Flutter BLoC',
    //   home: BlocProvider(
    //     create: (context) => CounterCubit(),
    //     child: CounterCubitView(),
    //   ),
    // );
    // }

    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => BlocProvider.value(
                  value: _arithmeticBloc,
                  // value: _arithmeticCubit,
                  child: ArithmeticCubitView(),
                )));
  }

  void openStudentView(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => BlocProvider.value(
                  value: _studentCubit,
                  child: StudentCubitView(),
                )));
  }

  void openSimpleInterestView(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => BlocProvider.value(
                  value: _simpleInterestCubit,
                  child: InterestCubitView(),
                )));
  }

  void openAreaCircleView(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => BlocProvider.value(
                  value: _areaCirceCubit,
                  child: AreaCircleCubitView(),
                )));
  }

  void openVolumeCuboidView(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => BlocProvider.value(
                  value: _volumeCuboid,
                  child: VolumeCuboidCubitView(),
                )));
  }
}
