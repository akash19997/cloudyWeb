import 'package:flutter/material.dart';
import '../../../core/constants/image/image_constant.dart';
import '../../../core/constants/utils/size_utils.dart';
import '../../../widgets/appbar/custom_app_bar.dart';
import '../../../widgets/drawer/drawer.dart';

class Category extends StatefulWidget {
  const Category({super.key});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  void dispose() {
    super.dispose();
  }

  final List<ImageString> imageUrls = [
    ImageString(imageName: ImageConstant.m1, name: "Embroidered Fabric"),
    ImageString(imageName: ImageConstant.m2, name: "Finished "),
    ImageString(imageName: ImageConstant.m3, name: "Greige Fabric "),
    ImageString(imageName: ImageConstant.m4, name: "Imported Fabric"),
    ImageString(imageName: ImageConstant.m5, name: "RFD Fabric"),
    ImageString(imageName: ImageConstant.m6, name: "Top Dyed Fabric"),
    ImageString(imageName: ImageConstant.m7, name: "Knitted Fabric")
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        key: _key,
        backgroundColor: const Color.fromRGBO(255, 255, 255, 0.94),
        drawer: const LeftMenuOneDraweritem(),
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(65.0),
            child: CustomAppBar(
              title: 'Categories',
              backbutton: true,
              onPressed: () {
                Navigator.of(context).pop();
              },
            )),
        body: SingleChildScrollView(
          child: SizedBox(
            width: size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10),
                  child: GridView.builder(
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 18,
                    ),
                    itemCount: imageUrls.length,
                    itemBuilder: (context, index) {
                      return Card(
                        elevation: 0,
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Column(
                          children: [
                            // const SizedBox(height: 10),
                            Container(
                              height: 120,
                              decoration: BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(8)),
                                image: DecorationImage(
                                    image: AssetImage(
                                        imageUrls[index].imageName.toString()),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            // Image.asset(
                            //   height: 120,
                            //   imageUrls[index].imageName.toString(),
                            //   fit: BoxFit.fill,
                            // ),
                            const SizedBox(height: 10),
                            Text(
                              imageUrls[index].name.toString(),
                              style:
                                  const TextStyle(fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(height: 10),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 70),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ImageString {
  String? imageName;
  String? name;
  ImageString({this.imageName, this.name});
}
