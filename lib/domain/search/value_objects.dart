import 'package:dartz/dartz.dart';
import 'package:ecommerce_demo/domain/core/value_objects.dart';
import 'package:ecommerce_demo/domain/core/value_validators.dart';
import 'package:ecommerce_demo/domain/failures/value_failures.dart';

class SearchInput extends ValueObject<String> {
  factory SearchInput({String? input}) {
    return SearchInput._(validateSearchTerms(input: input));
  }
  const SearchInput._(this.value);
  @override
  final Either<ValueFailure<String>, String> value;
}
