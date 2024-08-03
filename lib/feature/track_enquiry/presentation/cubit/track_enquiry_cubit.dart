import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../injection_container.dart';
import '../../../../network/account-services.dart';
import '../../data/track_enquiry_resp.dart';
part 'track_enquiry_cubit.freezed.dart';

part 'track_enquiry_state.dart';

class TrackEnquiryCubit extends Cubit<TrackMyEnquiryState> {
  List<TrackEnquiryResponse>? enquiryResponse;

  TrackEnquiryCubit() : super(const TrackMyEnquiryState.initial());

  enquiryDetial({required String id}) async {
    try {
      TrackEnquiryResponse trackEnquiryResponse =
          await getIt<AccountServices>().enquiryDetial(id);

      emit(TrackMyEnquiryState.loaded(
          trackEnquiryResponse: trackEnquiryResponse));
    } catch (e) {
      // print(e);
      emit(const TrackMyEnquiryState.failure());
    }
  }
}
