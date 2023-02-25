import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_image_slider/carousel.dart';
import 'package:onlinemakeupstore/bloc/All_blocs.dart';
import 'package:onlinemakeupstore/bloc/event.dart';
import 'package:onlinemakeupstore/bloc/states.dart';
import 'package:onlinemakeupstore/globals.dart';
import 'package:onlinemakeupstore/model/SalesDetails.dart';
import 'package:onlinemakeupstore/model/similarRenatlhomesSales.dart';
import 'package:onlinemakeupstore/repository/repository.dart';
import 'package:onlinemakeupstore/ui/SalesHomeAfterclick.dart';
import 'package:onlinemakeupstore/ui/categoryProductsList.dart';
import 'package:onlinemakeupstore/ui/similarproprties.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:readmore/readmore.dart';
import 'package:intl/intl.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SalesPropertyDetailsPage extends StatefulWidget {
  @override
  _SalesPropertyDetailsPageState createState() =>
      _SalesPropertyDetailsPageState();
}

class _SalesPropertyDetailsPageState extends State<SalesPropertyDetailsPage> {
  SaleHomedetailsBloc saleHomedetailsBloc;
  SimilarPropertiesBloc similarPropertiesBloc;
  SaleSimilarHomeBloc saleSimilarHomeBloc;

  @override
  void initState() {
    saleHomedetailsBloc = BlocProvider.of<SaleHomedetailsBloc>(context);
    saleHomedetailsBloc.add(FetchEvent());
    // similarPropertiesBloc = BlocProvider.of<SimilarPropertiesBloc>(context);
    // similarPropertiesBloc.add(FetchEvent());
    // saleSimilarHomeBloc = BlocProvider.of<SaleSimilarHomeBloc>(context);
    // saleSimilarHomeBloc.add(FetchEvent());
    // data =api.bronzer();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(child: BlocBuilder<SaleHomedetailsBloc, ClassStates>(
              // ignore: missing_return
              builder: (context, state) {
                if (state is Initialstate) {
                  return Center(
                    child: Container(),
                  );
                } else if (state is Loadingstate) {
                  return Center(
                    child: Container(),
                  );
                } else if (state is Loaded) {
                  //  print(state.makeup);
                  return SalesHomedetails(state.saleDetails, context);
                } else if (state is Errorstate) {
                  return buildError(state.message);
                }
                return Center(
                  child: Container(),
                );
              },
            )),
            Container(child: BlocBuilder<SaleSimilarHomeBloc, ClassStates>(
              // ignore: missing_return
              builder: (context, state) {
                print(state);
                if (state is Loadingstate) {
                  return Padding(
                    padding: EdgeInsets.only(top: 50.h),
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  );
                } else if (state is Loaded) {
                  //  print(state.makeup);
                  return SimilarSaleshousedata(
                      state.similarSalesHouse, context);
                } else if (state is Errorstate) {
                  return buildError(state.message);
                }
                return Container();
              },
            )),
          ],
        ),
      ),
    );
  }
}

// ignore: non_constant_identifier_names
// Widget SimilarSaleshousedata(SimilarSalesHouse similarRentelhomes, context) {
//   return Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: [
//       Divider(
//         thickness: 3,
//       ),
//       Text(
//         "   Similar Properties",
//         style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//       ),
//       Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Container(
//           // decoration: BoxDecoration(
//           //   borderRadius: BorderRadius.circular(10)
//           // ),
//           height: 250,

//           child: ListView.builder(
//               scrollDirection: Axis.horizontal,
//               itemCount: similarRentelhomes.properties.length,
//               itemBuilder: (BuildContext context, index) {
//                 return Stack(
//                   children: [
//                     InkWell(
//                       onTap: () {
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) => SimilarPropertyUI(),
//                             ));
//                         afterclickpropertyId =
//                             similarRentelhomes.properties[index].propertyId;
//                         selectedpropertyid =
//                             similarRentelhomes.properties[index].propertyId;
//                         selectedPostalcode =
//                             similarRentelhomes.properties[index].postalCode;
//                         print("property id =====>$selectedpropertyid");

//                         //selectedPostalcode =  similarRentelhomes.properties[index].postalCode;
//                       },
//                       child: Card(
//                         elevation: 6,
//                         child: Column(
//                           children: [
//                             Container(
//                                 height: 200,
//                                 width: 300,
//                                 child: FadeInImage(
//                                   image: NetworkImage(similarRentelhomes
//                                       .properties[index].photoUrl),
//                                   placeholder: AssetImage("assets/img.jpeg"),
//                                   imageErrorBuilder:
//                                       (context, error, stackTrace) {
//                                     return Icon(Icons.image);
//                                   },
//                                   fit: BoxFit.fitWidth,
//                                 )
//                                 // Image(
//                                 // image: NetworkImage(similarRentelhomes
//                                 //     .properties[index].photoUrl),
//                                 //   fit: BoxFit.fill,
//                                 // ),
//                                 ),
//                             SizedBox(
//                               height: 5,
//                             ),
//                             Row(
//                               children: [
//                                 Text(
//                                   "${similarRentelhomes.properties[index].address}  ${similarRentelhomes.properties[index].city}",
//                                   softWrap: true,
//                                   maxLines: 1,
//                                   style: TextStyle(
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                                 ),
//                                 SizedBox(
//                                   width: 10,
//                                 ),
//                                 Text(
//                                   "\$ ${similarRentelhomes.properties[index].price.toString()}",
//                                   style: TextStyle(
//                                       fontWeight: FontWeight.bold,
//                                       fontSize: 17),
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 );
//               }),
//         ),
//       ),
//     ],
//   );
// }

displayDialog(BuildContext context, Productmodel saleDetails) {
  showGeneralDialog(
    context: context,
    barrierDismissible: false,
    transitionDuration: Duration(milliseconds: 2000),
    transitionBuilder: (context, animation, secondaryAnimation, child) {
      return FadeTransition(
        opacity: animation,
        child: ScaleTransition(
          scale: animation,
          child: child,
        ),
      );
    },
    pageBuilder: (context, animation, secondaryAnimation) {
      return Material(
        child: SafeArea(
            child: Container(
                width: MediaQuery.of(context).size.width,
                height: 600,
                padding: EdgeInsets.all(20),
                color: Colors.white,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: List.generate(
                            saleDetails.properties[0].features.length,
                            (index) => ExpansionTile(
                                title: Text(saleDetails
                                    .properties[0].features[index].category),
                                children: List.generate(
                                    saleDetails.properties[0].features[index]
                                        .text.length,
                                    (i) => Text(saleDetails.properties[0]
                                        .features[index].text[i])))),
                      )
                    ]))),
      );
    },
  );
}

// ignore: non_constant_identifier_names
Widget SalesHomedetails(Productmodel saleDetails, context) {
  Completer<GoogleMapController> _controller = Completer();

  List<Marker> _markers = <Marker>[];
  _markers.add(Marker(
      markerId: MarkerId('SomeId'),
      position: LatLng(saleDetails.properties[0].address.lat,
          saleDetails.properties[0].address.lon),
      infoWindow: InfoWindow(title: saleDetails.properties[0].address.line)));
  // List<Widget> t = [];
  // saleDetails.properties[0].photos.forEach((element) {
  //   t.add(FadeInImage(
  //     image: NetworkImage(element.href),
  //     placeholder: AssetImage("assets/img.jpeg"),
  //     imageErrorBuilder: (context, error, stackTrace) {
  //       return Icon(Icons.image);
  //     },
  //     fit: BoxFit.fill,
  //   )
  //       //   Image.network(
  //       //   element.href,
  //       //   fit: BoxFit.gfill,
  //       // )
  //       );
  // });
  return Stack(
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Carousel(
          //     indicatorBarColor: Colors.white,
          //     autoScrollDuration: Duration(seconds: 2),
          //     animationPageDuration: Duration(milliseconds: 500),
          //     activateIndicatorColor: Colors.blue,
          //     animationPageCurve: Curves.bounceInOut,
          //     height: 400,
          //     width: 100.w,
          //     indicatorHeight: 10.sp,
          //     indicatorWidth: 10.sp,
          //     unActivatedIndicatorColor: Colors.grey,
          //     stopAtEnd: true,
          //     autoScroll: false,
          //     scrollAxis: Axis.horizontal,

          //     // widgets
          //     items: t),

          Text(
            "  \$${saleDetails.properties[0].price.toString()}",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
              "  ${saleDetails.properties[0].address.line.toString()} ${saleDetails.properties[0].address.city} ${saleDetails.properties[0].address.postalCode.toString()} ${saleDetails.properties[0].address.state}",
              softWrap: true,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 16,
              )),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(12)),
                height: 50,
                width: 100,
                child: Column(
                  children: [
                    Icon(
                      Icons.home,
                      size: 30,
                    ),
                    Text(
                      "Built Yr ${saleDetails.properties[0].yearBuilt.toString()}",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(12)),
                height: 50,
                width: 100,
                child: Column(
                  children: [
                    Icon(
                      Icons.king_bed,
                      size: 30,
                    ),
                    Text(
                      "${saleDetails.properties[0].beds.toString()} Beds",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(12)),
                height: 50,
                width: 100,
                child: Column(
                  children: [
                    Icon(
                      Icons.bathtub,
                      size: 30,
                    ),
                    Text(
                      "${saleDetails.properties[0].baths.toString()} Bath",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(12)),
                height: 50,
                width: 100,
                child: Column(
                  children: [
                    Icon(
                      Icons.business,
                      size: 30,
                    ),
                    Text(
                      "${saleDetails.properties[0].stories.toString()} Stories",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(12)),
                height: 50,
                width: 100,
                child: Column(
                  children: [
                    Icon(
                      Icons.group,
                      size: 30,
                    ),
                    Text(saleDetails.properties[0].propStatus,
                        style: TextStyle(
                          color: Colors.white,
                        ))
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(12)),
                height: 50,
                width: 100,
                child: Column(
                  children: [
                    Icon(
                      saleDetails.properties[0].listingStatus == "Active"
                          ? Icons.check_circle_outline
                          : Icons.cancel,
                      size: 30,
                    ),
                    Text(
                      saleDetails.properties[0].listingStatus == "Active"
                          ? "Active"
                          : "Not Active",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => FeatureDetails(
                          saleDetails: saleDetails,
                        )),
              );
            },
            child: Text(
              "  See Full Details",
              style: TextStyle(color: Colors.blue),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Divider(
            thickness: 4,
          ),
          Container(
            height: 400,
            child: GoogleMap(
              initialCameraPosition: CameraPosition(
                target: LatLng(saleDetails.properties[0].address.lat,
                    saleDetails.properties[0].address.lon),
                zoom: 16,
              ),
              zoomControlsEnabled: true,
              markers: Set<Marker>.of(_markers),
              onMapCreated: (GoogleMapController controller) {
                _controller.complete(controller);
              },
              minMaxZoomPreference: MinMaxZoomPreference(1.5, 20.8),
              myLocationEnabled: true,
              scrollGesturesEnabled: true,
              myLocationButtonEnabled: true,
              mapType: MapType.normal,
              mapToolbarEnabled: true,
            ),
          ),

          Divider(
            thickness: 4,
          ),
          ExpansionTile(
            title: Text("Description"),
            children: [
              ReadMoreText(
                saleDetails.properties[0].description,
                trimLines: 5,
                colorClickableText: Colors.blue,
                trimMode: TrimMode.Line,
                trimCollapsedText: 'Show more',
                trimExpandedText: 'Show less',
                moreStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
                style: TextStyle(color: Colors.black, fontSize: 15),
              ),
            ],
          ),
          ExpansionTile(
              title: Text("Features"),
              children: List.generate(
                  saleDetails.properties[0].featureTags.length, (index) {
                return ListTile(
                  title: Text(saleDetails.properties[0].featureTags[index]),
                );
              })),
          ExpansionTile(
            title: Text("Nearby Schools"),
            children: [
              Column(
                children: List.generate(
                    saleDetails.properties[0].schools.length,
                    (ind) => Card(
                            child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                  color: const Color.fromARGB(50, 0, 0, 0)),
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(5.sp),
                                  bottomRight: Radius.circular(5.sp),
                                  topLeft: Radius.circular(5.sp),
                                  topRight: Radius.circular(5.sp))),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    bottom: 5.sp,
                                    left: 14.sp,
                                    top: 12.sp,
                                    right: 14.sp),
                                child: Row(
                                  children: [
                                    Icon(Icons.school,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .secondary,
                                        size: Adaptive.sp(22)),
                                    SizedBox(width: 17.sp),
                                    BodyText(
                                      context,
                                      'School Details',
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: Adaptive.sp(10)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    rowdataUI(
                                        context,
                                        "Name",
                                        saleDetails
                                            .properties[0].schools[ind].name),
                                    rowdataUI(
                                        context,
                                        "Education Level",
                                        saleDetails.properties[0].schools[ind]
                                            .educationLevels[0].name
                                            .toString()),
                                    rowdataUI(
                                        context,
                                        "Funding Type",
                                        saleDetails.properties[0].schools[ind]
                                            .fundingType),
                                    rowdataUI(
                                        context,
                                        "Students Count",
                                        saleDetails.properties[0].schools[ind]
                                            .studentCount
                                            .toString()),
                                    rowdataUI(context, "Student Teacher Ration",
                                        "${saleDetails.properties[0].schools[ind].studentTeacherRatio.toString()}%"),
                                    rowdataUI(context, "Location",
                                        "${saleDetails.properties[0].schools[ind].location.street} ${saleDetails.properties[0].schools[ind].location.city} ${saleDetails.properties[0].schools[ind].location.state} ${saleDetails.properties[0].schools[ind].location.postalCode}"),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )


                            )),
              )

            ],
          ),
 
        ],
      ),
      Positioned(
          top: 30,
          left: 10,
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              size: 22.sp,
              color: Colors.white,
            ),
          )),
    ],
  );
}

Widget rowdataUI(context, var text, schoolindex) {
  return Padding(
    padding: EdgeInsets.only(bottom: 12.sp, left: 13.sp, top: 5.sp),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: Adaptive.sp(50),
          // padding: EdgeInsets.only(left: 25),
          child: TextView(
            context,
            text,
          ),
        ),
        TextView(context, ": "),
        Expanded(
            child: UnderLineTextView(
          context,
          schoolindex,
        )),
      ],
    ),
  );
}

Widget BodyText(context, Texts) {
  return Text(
    Texts,
    textScaleFactor: 1,
    style: TextStyle(
        color: Theme.of(context).primaryColorDark,
        fontSize: Adaptive.sp(15),
        fontWeight: FontWeight.w700,
        decoration: TextDecoration.none),
    softWrap: true,
    maxLines: 3,
  );
}

Widget SubtitleTextView(context, Texts) {
  return Text(
    Texts ?? "",
    textScaleFactor: 1,
    style: TextStyle(
        color: Theme.of(context).primaryColorDark,
        fontSize: Adaptive.sp(15),
        fontWeight: FontWeight.w600),
    softWrap: true,
    overflow: TextOverflow.ellipsis,
    maxLines: 3,
  );
}

Widget UnderLineTextView(context, Texts) {
  return Text(
    Texts,
    textScaleFactor: 1,
    style: TextStyle(
      color: Colors.grey,
      fontSize: Adaptive.sp(14),
      fontWeight: FontWeight.w600,
      // decoration:
      // TextDecoration.underline,
    ),
    softWrap: true,
    maxLines: 3,
  );
}

Widget TextView(context, Texts) {
  return Text(
    Texts,
    textScaleFactor: 1,
    style: TextStyle(
        color: Theme.of(context).primaryColorDark,
        fontSize: Adaptive.sp(14.5),
        fontWeight: FontWeight.w500,
        decoration: TextDecoration.none),
    softWrap: true,
    maxLines: 3,
  );
}

class FeatureDetails extends StatelessWidget {
//const FeatureDetails({ Key? key }) : super(key: key);
  final Productmodel saleDetails;
  FeatureDetails({this.saleDetails});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Property Details"),
      ),
      body: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: <
            Widget>[
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: List.generate(
                saleDetails.properties[0].features.length,
                (index) => ExpansionTile(
                    title: Text(
                        saleDetails.properties[0].features[index].category),
                    children: List.generate(
                        saleDetails.properties[0].features[index].text.length,
                        (i) => Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text(
                                saleDetails
                                    .properties[0].features[index].text[i],
                                style: TextStyle(fontSize: 18),
                              ),
                            ))),
              ),
            ),
          )
        ]),
      ),
    );
  }
}

class ChartData {
  ChartData(this.x, this.y, [this.color]);
  final String x;
  final double y;
  final Color color;
}
