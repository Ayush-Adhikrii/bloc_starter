import 'package:bloc_test/cubit/volume_cuboid_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VolumeCuboidCubitView extends StatelessWidget {
  VolumeCuboidCubitView({super.key});

  final formKey = GlobalKey<FormState>();
  final lengthController = TextEditingController();
  final bredthController = TextEditingController();
  final heightController = TextEditingController();

  double length = 0;
  double bredth = 0;
  double height = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cuboid Volume cubit"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SafeArea(
            child: Form(
          key: formKey,
          child: Column(
            children: [
              TextFormField(
                controller: lengthController,
                decoration: const InputDecoration(
                  labelText: 'Length',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter length';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: bredthController,
                decoration: const InputDecoration(
                  labelText: 'Bredth',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter bredth';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: heightController,
                decoration: const InputDecoration(
                  labelText: 'Height',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter height';
                  }
                  return null;
                },
              ),
              BlocBuilder<VolumeCuboidCubit, double>(
                builder: (context, state) {
                  return Text(
                    "Volume: $state",
                    style: const TextStyle(
                        fontSize: 48, fontWeight: FontWeight.bold),
                  );
                },
              ),
              ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    length = double.parse(lengthController.text);
                    bredth = double.parse(bredthController.text);
                    height = double.parse(heightController.text);

                    context
                        .read<VolumeCuboidCubit>()
                        .calculateVolume(length, bredth, height);
                  }

                  lengthController.clear();
                  bredthController.clear();
                  heightController.clear();
                },
                child: Text("Calculate VolumeI"),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
