import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:ecommerce_demo/domain/failures/failures.dart';
import 'package:ecommerce_demo/domain/failures/value_failures.dart';
import 'package:ecommerce_demo/domain/i_api_repository.dart';
import 'package:ecommerce_demo/domain/search/value_objects.dart';
import 'package:ecommerce_demo/infrastructure/model/api_data_model.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:ecommerce_demo/domain/dartz_x.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final IApiRepository _iApiRepository;
  SearchBloc(this._iApiRepository) : super(SearchState.initial()) {
    on<_SearchChanged>(
      (event, emit) {
        emit(
          state.copyWith(
            searchInput: SearchInput(input: event.input),
            failureOrSuccessOption: none(),
          ),
        );
      },
    );
    on<_SearchButtonPressed>(
      (event, emit) async {
        if (state.hasReachedMax) return;
        //  print(state.searchInput);
        try {
          Either<ApiDataFailure, List<Result>> products;
          //   String? searchNameVal;
          if (state.status == SearchStatus.initial) {
            if (state.searchInput.isValid()) {
              // print('Kisu ekta hocche!');
              // searchNameVal = state.searchInput.getOrCrash();
              products =
                  await _iApiRepository.getSearchedProduct(state.searchInput);
              //  print(products);
              if (products.asRight().isEmpty) {
                return emit(state.copyWith(
                  status: SearchStatus.failure,
                  searchedList: [],
                  hasReachedMax: false,
                ));
              } else {
                return emit(state.copyWith(
                  status: SearchStatus.success,
                  searchedList: products.asRight(),
                  hasReachedMax: false,
                ));
              }
            } else {
              return emit(state.copyWith(
                showErrorMessages: AutovalidateMode.always,
                status: SearchStatus.failure,
                searchedList: [],
                //failureOrSuccessOption: ,
              ));
            }
          }

          //   print('Search Input = ' + searchNameVal!);
          final lProducts = await _iApiRepository.getSearchedProduct(
              state.searchInput, state.searchedList.length);

          //  print(lProducts);
          emit(lProducts.asRight().isEmpty
              ? state.copyWith(hasReachedMax: true)
              : state.copyWith(
                  status: SearchStatus.success,
                  searchedList: List.of(state.searchedList)
                    ..addAll(lProducts.asRight()),
                  hasReachedMax: false,
                ));
        } catch (_) {
          emit(state.copyWith(status: SearchStatus.failure));
        }
      },
    );
  }
}


/*
  on<_SearchChanged>(
      (event, emit) {
        emit(
          state.copyWith(
            searchInput: SearchInput(
              input: event.searchInput,
            ),
            failureOrSuccessOption: none(),
          ),
        );
      },
    );

    on<_SearchPressed>(
      (event, emit) async {
        if (state.hasReachedMaxsearch) return;

        try {
          Either<ApiDataFailure, List<Result>> products;
          String? searchNameVal;
          if (state.searchStatus == SearchStatus.initial) {
            if (state.searchInput.isValid()) {
              searchNameVal = state.searchInput.getOrCrash();
              products =
                  await _iApiRepository.getSearchedProduct(state.searchInput);
              //  print(products);
              if (products.asRight().isEmpty) {
                return emit(state.copyWith(
                  searchStatus: SearchStatus.failure,
                  searchLoaded: false,
                  searchedList: [],
                  hasReachedMaxsearch: false,
                ));
              } else {
                return emit(state.copyWith(
                  searchStatus: SearchStatus.success,
                  searchedList: products.asRight(),
                  searchLoaded: true,
                  hasReachedMaxsearch: false,
                ));
              }
            }
            // } else {
            //   return emit(state.copyWith(
            //     showError: AutovalidateMode.always,
            //     searchStatus: SearchStatus.failure,
            //     searchLoaded: false,
            //     //failureOrSuccessOption: ,
            //   ));
            // }
          }
          print('Search Input = ' + searchNameVal!);
          final lProducts = await _iApiRepository.getSearchedProduct(
              state.searchInput, state.searchedList.length);

          print(lProducts);
          emit(lProducts.asRight().isEmpty
              ? state.copyWith(hasReachedMaxsearch: true)
              : state.copyWith(
                  searchStatus: SearchStatus.success,
                  productList: List.of(state.searchedList)
                    ..addAll(lProducts.asRight()),
                  hasReachedMaxsearch: false,
                ));
        } catch (_) {
          emit(state.copyWith(searchStatus: SearchStatus.failure));
        }
      },
      transformer: throttleDroppable(throttleDuration),
    );
    */