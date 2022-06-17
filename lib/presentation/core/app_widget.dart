import 'package:ecommerce_demo/application/api_data/api_data_bloc.dart';
import 'package:ecommerce_demo/injection.dart';
import 'package:ecommerce_demo/presentation/core/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt!<ApiDataBloc>()
            ..add(
              const ApiDataEvent.watchAllstarted(),
            ),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashPage(),
      ),
    );
  }
}
