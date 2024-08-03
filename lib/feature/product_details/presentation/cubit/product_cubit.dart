import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../injection_container.dart';
import '../../../../network/account-services.dart';
import '../../data/order_enquiry/order_enquiry_req.dart';
import '../../data/response/product_details_resp.dart';
part 'product_cubit.freezed.dart';

part 'product_state.dart';

class ProductDetailsCubit extends Cubit<ProductDetailsState> {
  List<ProductDetailsResponse>? productListing;

  ProductDetailsCubit() : super(const ProductDetailsState.initial());

  productDetailListDetails({required String id}) async {
    try {
      var productListing = await getIt<AccountServices>().getproductListDetals(
          id, getIt<SharedPreferences>().getString('id') ?? '0');
      print(productListing);
      emit(ProductDetailsState.loaded(productListing: productListing));
    } catch (e) {
      // print(e);
      emit(const ProductDetailsState.failure());
    }
  }

  dynamic data;
  Future<dynamic> orderEnquiry(
      {String? userId,
      String? enquiryQuantity,
      String? enquiryQuality,
      String? enquiryTimeline,
      String? enquiryComment,
      String? productId}) async {
    try {
      data = await getIt<AccountServices>().orderEnquiry(OrderEnquiryReq(
          enquiryComment: enquiryComment,
          enquiryProduct: enquiryQuality,
          enquiryQuantity: enquiryQuantity,
          enquiryTimeline: enquiryTimeline,
          enquiryProductId: productId,
          userId: userId));
      print(data);
      return data;
    } catch (e) {
      return e;
    }
  }
}
//  "userId":"7",
//     "enquiryQuantity":"11",
//     "enquiryProduct":"Printed Shirts",
//     "enquiryProductId":"92",
//     "enquiryTimeline":"23/4/2023",
//     "enquiryComment" : "hi"
//  required String? userId,
//     required String? enquiryQuantity,
//     required String? enquiryQuality,
//     required String? enquiryTimeline,
//     required String? enquiryComment,