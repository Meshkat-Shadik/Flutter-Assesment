import 'package:dartz/dartz.dart';
import 'package:ecommerce_demo/domain/failures/value_failures.dart';

Either<ValueFailure<String>, String> validateSearchTerms({
  required String? input,
}) {
  const searchTermRegex = r'''^[a-zA-Z]*$''';
  if (RegExp(searchTermRegex).hasMatch(input!) && input.isNotEmpty) {
    return right(input);
  } else {
    return left(
      ValueFailure.invalidSearch(
        failedValue: input,
      ),
    );
  }
}
