import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gerywhite/feature/my_order/presentation/cubit/my_order_cubit.dart';
import 'package:gerywhite/injection_container.dart';
import 'package:gerywhite/pages/data_notfound.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../core/constants/color/color_constant.dart';
import '../../../core/constants/image/image_constant.dart';
import '../../../core/helper/layout_helper.dart';
import '../../../core/helper/loader_helper.dart';
import '../../../core/navigation/route.dart';
import '../../../core/theme/app_text_theme.dart';
import '../../../widgets/appbar/custom_app_bar.dart';
import '../../../widgets/custom_image.dart';

class MyOrder extends StatefulWidget {
  const MyOrder({super.key});

  @override
  State<MyOrder> createState() => _MyOrderState();
}

class _MyOrderState extends State<MyOrder> {
  bool dataLoaded = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(65.0),
            child: CustomAppBar(
              title: 'My Order',
              backbutton: true,
              onPressed: () {
                Navigator.of(context).pop();
              },
            )),
        backgroundColor: ColorConstant.whiteA700,
        body: BlocProvider(
          create: (context) => getIt<MyOrderCubit>()
            ..myordertDetailListDetails(
                id: getIt<SharedPreferences>().getString('id') ?? '0'),
          child: Stack(
            children: [
              BlocConsumer<MyOrderCubit, MyOrderState>(
                  listener: (context, state) {
                state.maybeWhen(
                    loaded: (data) => {
                          setState(() {
                            dataLoaded = true;
                          }),
                        },
                    failure: () => {
                          setState(() {
                            dataLoaded = true;
                          })
                        },
                    orElse: () {});
              }, builder: (context, state) {
                return state.maybeWhen(
                    initial: () => const Center(child: Text('')),
                    loading: () => Loader.loadingIndicatorDefault(true),
                    loaded: (
                      responseData,
                    ) {
                      if (responseData!.status_code == '200') {
                        return SingleChildScrollView(
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              ListView.builder(
                                shrinkWrap: true,
                                itemCount: responseData.result!.length,
                                itemBuilder: (context, int index) {
                                  return Align(
                                    alignment: Alignment.center,
                                    child: InkWell(
                                      onTap: () async {
                                        // ProductDetailsScreen
                                        // await getIt<AppRouter>().push(
                                        //     TrackEnquiryScreenRoute(
                                        //         enquiryId: responseData
                                        //                 .result![index]
                                        //             ['enquiryId']));
                                      },
                                      child: Card(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: Container(
                                            alignment: Alignment.center,
                                            height: 100,
                                            width: LayoutHelper.getWidth(
                                                context,
                                                fraction: .90),
                                            child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      const SizedBox(
                                                        width: 10,
                                                      ),
                                                      Column(
                                                        children: [
                                                          CustomImageView(
                                                            url:
                                                                'https://demos.thewebdemo.net/graywhite-dev/${responseData.result![index]['orderIimage']}',
                                                            height: 70,
                                                            width: 70,
                                                          ),
                                                        ],
                                                      ),
                                                      const SizedBox(
                                                        width: 20,
                                                      ),
                                                      SizedBox(
                                                        width: LayoutHelper
                                                            .getWidth(context,
                                                                fraction: .55),
                                                        child: Column(
                                                          children: [
                                                            Row(
                                                              children: [
                                                                Expanded(
                                                                    child: Text(
                                                                        'Po Number ${responseData.result![index]['enquiryPO']}',
                                                                        maxLines:
                                                                            2,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: TextStyle(
                                                                            color:
                                                                                ColorConstant.black900,
                                                                            fontWeight: FontWeight.w600,
                                                                            fontSize: 11)))
                                                              ],
                                                            ),
                                                            Row(
                                                              children: [
                                                                Expanded(
                                                                  child: Text(
                                                                      responseData
                                                                          .result![
                                                                              index]
                                                                              [
                                                                              'product_title']
                                                                          .toString(),
                                                                      maxLines:
                                                                          null,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtRobotoMedium15),
                                                                ),
                                                              ],
                                                            ),
                                                            Row(
                                                              children: [
                                                                Expanded(
                                                                    child: Text(
                                                                        'Order Date ${responseData.result![index]['dateAdded']}',
                                                                        maxLines:
                                                                            2,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtRobotoRegular12Gray700))
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                        width: 10,
                                                      ),
                                                    ],
                                                  )
                                                ])),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                        );
                      } else {
                        return const DataNotFoundPage(
                          message:
                              "Please make your first order, No Order avaliable!!",
                        );
                      }
                    },
                    orElse: () => Container(),
                    failure: () => const DataNotFoundPage());
              }),
              if (!dataLoaded) Loader.loadingIndicatorDefault(true)
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: ColorConstant.pink700Primary,
          child: const Icon(Icons.message_outlined),
        ),
      ),
    );
  }
}
