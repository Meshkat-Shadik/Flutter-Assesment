import 'package:ecommerce_demo/application/api_data/api_data_bloc.dart';
import 'package:ecommerce_demo/constants.dart';
import 'package:ecommerce_demo/presentation/core/error_page.dart';
import 'package:ecommerce_demo/presentation/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<ApiDataBloc, ApiDataState>(
      listener: (context, state) {
        // state.map(
        //   initial: (_) {},
        //   loadInProgress: (_) {},
        //   loadSucess: (_) {
        // Navigator.pushReplacement(
        //   context,
        //   MaterialPageRoute(
        //     builder: (context) => const MyHomePage(),
        //   ),
        // );
        //   },
        //   loadFailure: (_) {},
        // );
        state.failureOrSuccessOption.fold(
          () => {},
          (eitherVal) => {
            eitherVal.fold(
              (l) {
                l.map(
                  unexpected: (_) => Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ErrorPage(
                        errorName: 'Unexpected Error Occured',
                        errorCode: UNEXPECTED_ERROR_CODE,
                      ),
                    ),
                  ),
                  internetConnectionFailure: (_) => Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ErrorPage(
                        errorName: 'Internet Connection Failure',
                        errorCode: INTERNET_ERROR_CODE,
                      ),
                    ),
                  ),
                  requestDenied: (_) => Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ErrorPage(
                        errorName: 'Request Denied!',
                        errorCode: REQUEST_DENIED_CODE,
                      ),
                    ),
                  ),
                );
              },
              (r) {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyHomePage(
                      products: r,
                    ),
                  ),
                );
              },
            )
          },
        );
      },
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text('Loading Data\nPlease wait!\n'),
              CircularProgressIndicator(),
            ],
          ),
        ),
      ),
    );
  }
}
