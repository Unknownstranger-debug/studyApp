import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:project_app/constants/exports.dart';
import 'package:project_app/screens/contact_us/contact_us_screen.dart';
import 'package:project_app/screens/searching/searching_screen.dart';
import 'package:project_app/screens/setting/setting_screen.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  final Set<Marker> _markers = {};

  void _onMapCreated(GoogleMapController controller) {
    setState(() {
      _markers.add(
        const Marker(
          markerId: MarkerId('id-1'),
          position: LatLng(1.3524375747326318 , 103.94649806924429),
        ),
      );
    });
  }

  /// vision panel dropdown items
  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      const DropdownMenuItem(value: "Location", child: Text("Location")),
      const DropdownMenuItem(value: "Abcd", child: Text("Abcd")),
      const DropdownMenuItem(value: "DEF", child: Text("DEF")),
      const DropdownMenuItem(value: "GHIJ", child: Text("GHIJ")),
      const DropdownMenuItem(value: "KLMN", child: Text("KLMN")),
    ];
    return menuItems;
  }

  String dropDownItemVal = 'Location';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SizedBox(
        height: screenHeight(context),
        width: screenWidth(context),
        child: Stack(
          children: [
            SizedBox(
              height: screenHeight(context),
              width: screenWidth(context),
              child: GoogleMap(
                onMapCreated: _onMapCreated,
                markers: _markers,
                zoomControlsEnabled: false,
                initialCameraPosition: const CameraPosition(
                  target: LatLng(1.3524375747326318 , 103.94649806924429),
                  //zoom: 5,
                ),
              ),
            ),
            SafeArea(
              child: SizedBox(
                height: 80.0,
                width: screenWidth(context),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Tampines',
                        style: poppinsBold.copyWith(
                          fontSize: 30.0,
                          color: AppColors.blackColor,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {
                            Get.bottomSheet(
                              const SettingScreen(),
                              isScrollControlled: true,
                            );
                          },
                          borderRadius: BorderRadius.circular(8.0),
                          child: Ink(
                            height: 55.0,
                            width: 55.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              color: AppColors.whiteColor,
                            ),
                            child: const Center(
                              child: Icon(
                                Icons.settings,
                                color: AppColors.blackColor,
                                size: 36.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: screenHeight(context) * 0.13),
                    child: CustomButton(
                      onTap: () {
                        Get.defaultDialog(
                          title: '',
                          content: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 12.0),
                                child: Text(
                                  'How do you want to find \nothers around you?',
                                  textAlign: TextAlign.center,
                                  style: poppinsSemiBold.copyWith(
                                    fontSize: 15.0,
                                    color: AppColors.blackColor,
                                  ),
                                ),
                              ),
                              SizedBox(height: screenHeight(context) * 0.01),
                              Container(
                                height: 50,
                                margin: EdgeInsets.symmetric(
                                    horizontal: screenHeight(context) * 0.024),
                                width: screenWidth(context),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  color: AppColors.whiteColor,
                                  border: Border.all(
                                    width: 1.0,
                                    color: AppColors.blueColor,
                                  ),
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const SizedBox(width: 16.0),
                                    Expanded(
                                      child: DropdownButton(
                                        value: dropDownItemVal,
                                        items: dropdownItems,
                                        hint: Text(
                                          'Location',
                                          style: poppinsRegular.copyWith(
                                            color: AppColors.greyColor,
                                            fontSize: 13.0,
                                          ),
                                        ),
                                        style: poppinsRegular.copyWith(
                                          color: AppColors.blackColor,
                                          fontSize: 13.0,
                                        ),
                                        underline: const SizedBox(),
                                        icon: const Icon(
                                            Icons
                                                .arrow_drop_down_circle_outlined,
                                            color: AppColors.primaryColor),
                                        isExpanded: true,
                                        onChanged: (String? value) {
                                          setState(() {
                                            dropDownItemVal = value!;
                                          });
                                        },
                                      ),
                                    ),
                                    const SizedBox(width: 8.0),
                                  ],
                                ),
                              ),
                              SizedBox(height: screenHeight(context) * 0.024),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: screenHeight(context) * 0.07),
                                child: CustomButton(
                                  onTap: () {
                                    Get.back();
                                    Get.to(SearchingScreen());
                                  },
                                  btnText: 'Begin Search',
                                  btnColor: AppColors.blackColor,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                      btnText: 'Search',
                      fontSize: 20.0,
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {
                        Get.bottomSheet(
                          ContactUsScreen(),
                          isScrollControlled: true,
                          ignoreSafeArea: true,
                        );
                      },
                      borderRadius: BorderRadius.circular(8.0),
                      child: Ink(
                        height: 64.0,
                        width: 64.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: AppColors.blackColor,
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.chat_bubble,
                            color: AppColors.whiteColor,
                            size: 36.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
