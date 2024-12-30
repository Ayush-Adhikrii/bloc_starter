import 'package:bloc_test/cubit/dashboard_cubit.dart';
import 'package:bloc_test/init_depenencies.dart';
import 'package:bloc_test/view/dashboard_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    // return MultiBlocProvider(
    //     providers: [
    // BlocProvider(create: (context) => CounterCubit()),
    // BlocProvider(create: (context) => ArithmeticCubit()),
    // BlocProvider(create: (context) => StudentCubit()),
    // BlocProvider(create: (context) => SimpleInterestCubit()),
    // BlocProvider(create: (context) => AreaCirceCubit()),
    // BlocProvider(create: (context) => VolumeCuboidCubit()),
    // BlocProvider(
    //     create: (context) => DashboardCubit(
    //           context.read<CounterCubit>(),
    //           context.read<ArithmeticCubit>(),
    //           context.read<StudentCubit>(),
    //           context.read<SimpleInterestCubit>(),
    //           context.read<AreaCirceCubit>(),
    //           context.read<VolumeCuboidCubit>(),
    //         )),

    //   BlocProvider<CounterCubit>(
    //     //method 1
    //     create: (context) => serviceLocator(),
    //   ),
    //   BlocProvider(
    //     //method 2
    //     create: (context) => serviceLocator<ArithmeticCubit>(),
    //   ),
    //   BlocProvider(create: (context) => serviceLocator<StudentCubit>()),
    //   BlocProvider(
    //       create: (context) => serviceLocator<SimpleInterestCubit>()),
    //   BlocProvider(create: (context) => serviceLocator<AreaCirceCubit>()),
    //   BlocProvider(
    //       create: (context) => serviceLocator<VolumeCuboidCubit>()),
    // ],
    // child: MaterialApp(
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter BLoC',
      home: BlocProvider.value(
        value: serviceLocator<DashboardCubit>(),
        child: DashboardView(),
      ),
    );

    // );
  }
}
