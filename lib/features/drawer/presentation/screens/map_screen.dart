import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iam_hungry2/core/src/styles.dart';
import 'package:iam_hungry2/core/src/widgets/custom_button.dart';
import 'package:iam_hungry2/features/drawer/presentation/controller/map_controller.dart';

class MapScreen extends GetView<MapController> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Obx(
      () => Scaffold(
        body: Stack(
          children: [
            GoogleMap(
              myLocationEnabled: true,
              zoomControlsEnabled: false,
              myLocationButtonEnabled: false,
              markers: controller.markers.toSet(),
              mapType: MapType.normal,
              polygons: controller.polygon,
              initialCameraPosition: CameraPosition(
                target: LatLng(controller.lat.value, controller.long.value),
                zoom: 16,
              ),
              onMapCreated: (mapController) =>
                  controller.mapController.complete(mapController),
            ),
            SafeArea(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  controller: controller.searchTEC,
                  onSubmitted: (value) => controller.onSubmitSearchTF(),
                  style: textTheme.caption,
                  decoration: CustomStyle.authInputDecoration.copyWith(
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
            Positioned(
              bottom: 0,
              child: Container(
                decoration: CustomStyle.containerShadowDecoration.copyWith(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                width: 1.sw,
                height: .31.sh,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  child: ListView(
                    physics: BouncingScrollPhysics(),
                    padding: EdgeInsets.zero,
                    children: [
                      TextField(
                        controller: controller.placeNameTEC,
                        style: textTheme.caption,
                        decoration: CustomStyle.authInputDecoration
                            .copyWith(hintText: 'Place title (Home, Work...)'),
                      ),
                      SizedBox(height: 6),
                      TextField(
                        controller: controller.streetTEC,
                        style: textTheme.caption,
                        decoration: CustomStyle.authInputDecoration.copyWith(
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
                              decoration: CustomStyle.authInputDecoration
                                  .copyWith(hintText: 'Building/Villa No.'),
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: TextField(
                              controller: controller.floorTEC,
                              style: textTheme.caption,
                              keyboardType: TextInputType.number,
                              decoration: CustomStyle.authInputDecoration
                                  .copyWith(hintText: 'Floor/Flat No.'),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Center(
                        child: CustomButton(
                          onPressed: () {},
                          title: 'Add Address',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
