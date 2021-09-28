import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iam_hungry2/core/src/routes.dart';
import 'package:iam_hungry2/core/src/styles.dart';
import 'package:iam_hungry2/core/src/widgets/custom_button.dart';
import 'package:iam_hungry2/core/feature/location/presentation/controller/map_controller.dart';

class MapScreen extends GetView<MapController> {
  final bool? isFirstTimeAddLocation;

  MapScreen({this.isFirstTimeAddLocation});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Obx(
      () => Scaffold(
        body: Stack(
          children: [
            Column(
              children: [
                SizedBox(
                  height: .69.sh,
                  child: GoogleMap(
                      myLocationEnabled: true,
                      zoomControlsEnabled: true,
                      myLocationButtonEnabled: true,
                      // padding: EdgeInsets.only(top: .6.sh),
                      markers: controller.markers.toSet(),
                      polygons: controller.polygon,
                      initialCameraPosition: CameraPosition(
                        target: LatLng(controller.lat.value, controller.long.value),
                        zoom: 16,
                      ),
                      onMapCreated: (mapController) {
                        if (!controller.mapController.isCompleted) {
                          controller.mapController.complete(mapController);
                        }
                      }),
                ),
                Container(
                  decoration: CustomStyle.containerShadowDecoration.copyWith(
                    borderRadius: BorderRadius.only(
                      topLeft: const Radius.circular(20),
                      topRight: const Radius.circular(20),
                    ),
                  ),
                  width: 1.sw,
                  height: .31.sh,
                  child: ListView(
                    padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    physics: BouncingScrollPhysics(),
                    children: [
                      TextField(
                        controller: controller.placeNameTEC,
                        style: textTheme.caption,
                        decoration: CustomStyle.roundedBorderInputDecoration
                            .copyWith(hintText: 'Place title (Home, Work...)'),
                      ),
                      SizedBox(height: 6),
                      TextField(
                        controller: controller.streetTEC,
                        style: textTheme.caption,
                        decoration:
                        CustomStyle.roundedBorderInputDecoration.copyWith(
                          hintText: 'Street',
                        ),
                      ),
                      SizedBox(height: 6),
                      Row(
                        children: [
                          Expanded(
                            child: TextField(
                              controller: controller.buildingTEC,
                              style: textTheme.caption,
                              keyboardType: TextInputType.number,
                              decoration: CustomStyle.roundedBorderInputDecoration
                                  .copyWith(hintText: 'Building/Villa No.'),
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: TextField(
                              controller: controller.floorTEC,
                              style: textTheme.caption,
                              keyboardType: TextInputType.number,
                              decoration: CustomStyle.roundedBorderInputDecoration
                                  .copyWith(hintText: 'Floor/Flat No.'),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Center(
                        child: CustomButton(
                          onPressed: () => isFirstTimeAddLocation ?? false
                              ? Get.toNamed(Routes.homeScreen)
                              : Get.back(),
                          title: 'Add Address',
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SafeArea(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  controller: controller.searchTEC,
                  onSubmitted: (value) => controller.onSubmitSearchTF(),
                  style: textTheme.caption,
                  decoration: CustomStyle.roundedBorderInputDecoration.copyWith(
                    hintText: 'Search...',
                    suffixIcon: IconButton(
                      icon: Icon(Icons.close),
                      onPressed: () => controller.searchTEC.clear(),
                    ),
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
