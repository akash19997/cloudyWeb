import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../injection_container.dart';
import '../../../../network/account-services.dart';
import '../../data/response/product_response.dart';
part 'home_screen_cubit.freezed.dart';
part 'home_screen_state.dart';

class HomeScreenCubit extends Cubit<HomeScreenState> {
  List<ProductListing>? productListing;

  HomeScreenCubit() : super(const HomeScreenState.initial());

  productDetailListDetails() async {
    try {
      ProductListing productListing =
          await getIt<AccountServices>().productsListing();
      // print(productListing);
      emit(HomeScreenState.loaded(productListing: productListing));
    } catch (e) {
      // print(e);
      emit(const HomeScreenState.failure());
    }
  }
}
