import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gerywhite/widgets/appbar/custom_app_bar.dart';
import '../../../core/constants/color/color_constant.dart';
import '../../../core/helper/loader_helper.dart';
import '../../../core/navigation/route.dart';
import '../../../core/theme/app_text_theme.dart';
import '../../../injection_container.dart';
import '../../../pages/data_notfound.dart';
import '../../../widgets/custom_image.dart';
import 'cubit/yarn_cubit.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  @override
  void initState() {
    super.initState();
  }

  int selectedCard = -1;
  bool dataLoaded = false;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => getIt<YarnCubit>()..getyarnDetails(),
        child: SafeArea(
          top: false,
          bottom: false,
          child: Stack(
            children: [
              Scaffold(
                backgroundColor: ColorConstant.whiteA700,
                appBar: PreferredSize(
                    preferredSize: const Size.fromHeight(65.0),
                    child: CustomAppBar(
                        title: "Filter",
                        backbutton: true,
                        onPressed: () {
                          Navigator.of(context).pop();
                        })),
                body: BlocConsumer<YarnCubit, YarnState>(
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
                        if (responseData!['status_code'] == '200') {
                          //  return Text(responseData.toString());
                          return SingleChildScrollView(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Yarns Type',
                                    style: TextStyle(
                                        color: ColorConstant.black90001,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 17),
                                  ),
                                ),
                                GridView.builder(
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    itemCount: responseData['result'].length,
                                    gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                      childAspectRatio: MediaQuery.of(context)
                                              .size
                                              .width /
                                          (MediaQuery.of(context).size.height /
                                              2.2),
                                    ),
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            selectedCard = index;
                                          });
                                        },
                                        onDoubleTap: () async {
                                          // await getIt<AppRouter>()
                                          //     .push(const MyAccountPageRoute());
                                          Navigator.pop(context);
                                        },
                                        child: Card(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          color: selectedCard == index
                                              ? ColorConstant.indigo900
                                              : Colors.white,
                                          child: SizedBox(
                                            height: 220,
                                            width: 180,
                                            child: Center(
                                                child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                CustomImageView(
                                                  url:
                                                      'https://demos.thewebdemo.net/graywhite-dev/${responseData['result'][index]['yarnImage']}',
                                                  height: 70,
                                                  width: 70,
                                                  color: selectedCard == index
                                                      ? Colors.white
                                                      : Colors.grey,
                                                ),
                                                const SizedBox(height: 5),
                                                Text(
                                                  responseData['result'][index]
                                                          ['yarnCatName']
                                                      .toString(),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoRegular15WhiteA700
                                                      .copyWith(
                                                    color: selectedCard == index
                                                        ? Colors.white
                                                        : Colors.grey,
                                                  ),
                                                ),

                                                // Text(
                                                //   responseData['result'][index]
                                                //           ['dateAdded']
                                                //       .toString(),
                                                //   overflow:
                                                //       TextOverflow.ellipsis,
                                                //   textAlign: TextAlign.left,
                                                //   style: AppStyle
                                                //       .txtRobotoRegular15WhiteA700,
                                                // ),
                                              ],
                                            )),
                                          ),
                                        ),
                                      );
                                    }),
                              ],
                            ),
                          );
                        } else {
                          return const DataNotFoundPage();
                        }
                      },
                      orElse: () => Container(),
                      failure: () => const DataNotFoundPage());
                }),
              ),
              if (!dataLoaded) Loader.loadingIndicatorDefault(true)
            ],
          ),
        ));
  }

  onTapArrowleft2(BuildContext context) {
    Navigator.pop(context);
  }
}
