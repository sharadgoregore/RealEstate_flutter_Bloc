import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_image_slider/carousel.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:intl/intl.dart';
import 'package:onlinemakeupstore/bloc/All_blocs.dart';
import 'package:onlinemakeupstore/bloc/event.dart';
import 'package:onlinemakeupstore/bloc/states.dart';
import 'package:onlinemakeupstore/model/SoldDatadetails.dart';
import 'package:onlinemakeupstore/ui/SalesHomeAfterclick.dart';
import 'package:onlinemakeupstore/ui/categoryProductsList.dart';
import 'package:readmore/readmore.dart';

class SoldpropertyDetails extends StatefulWidget {
  @override
  _SoldpropertyDetailsState createState() =>
      _SoldpropertyDetailsState();
}

class _SoldpropertyDetailsState extends State<SoldpropertyDetails> {
  SimilarPropertiesBloc similarPropertiesBloc;
  SaleSimilarHomeBloc saleSimilarHomeBloc;
  SoldHomesDetailBloc soldHomesDetailBloc;

  @override
  void initState() {
    soldHomesDetailBloc = BlocProvider.of<SoldHomesDetailBloc>(context);
    soldHomesDetailBloc.add(FetchEvent());
    similarPropertiesBloc = BlocProvider.of<SimilarPropertiesBloc>(context);
    similarPropertiesBloc.add(FetchEvent());
    saleSimilarHomeBloc = BlocProvider.of<SaleSimilarHomeBloc>(context);
    saleSimilarHomeBloc.add(FetchEvent());
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
                    child: CircularProgressIndicator(),
                  );
                } else if (state is Loadingstate) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (state is Loaded) {
                  //  print(state.makeup);
                  return SoldhomeData(state.soldDataDetails, context);
                } else if (state is Errorstate) {
                  return buildError(state.message);
                }
                return Center(
                  child: CircularProgressIndicator(),
                );
              },
            )),
            Container(child: BlocBuilder<SaleSimilarHomeBloc, ClassStates>(
              // ignore: missing_return
              builder: (context, state) {
                if (state is Initialstate) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (state is Loadingstate) {
                  return Center(
                    child: CircularProgressIndicator(),
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


Widget SoldhomeData(SoldDataDetails saleDetails, context) {
  Completer<GoogleMapController> _controller = Completer();

  List<Marker> _markers = <Marker>[];
  _markers.add(Marker(
      markerId: MarkerId('SomeId'),
      position: LatLng(saleDetails.properties[0].address.lat,
          saleDetails.properties[0].address.lon),
      infoWindow: InfoWindow(title: saleDetails.properties[0].address.line)));
  List<Widget> t = [];
  saleDetails.properties[0].photos.forEach((element) {
    t.add(Image.network(
      element.href,
      fit: BoxFit.fill,
    ));
  });
  return Stack(
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              height: 400,
              child: Carousel(
                  indicatorBarColor: Colors.white,
                  autoScrollDuration: Duration(seconds: 2),
                  animationPageDuration: Duration(milliseconds: 500),
                  activateIndicatorColor: Colors.blue,
                  animationPageCurve: Curves.bounceInOut,
                  height: 400,
                  indicatorHeight: 10,
                  indicatorWidth: 10,
                  unActivatedIndicatorColor: Colors.grey,
                  stopAtEnd: true,
                  autoScroll: false,

                  // widgets
                  items: t)),
      
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
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //       builder: (context) => FeatureDetails(
              //             saleDetails: saleDetails,
              //           )),
              // );
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
          // ExpansionTile(
          //   title: Text("Description"),
          //   children: [
          //     ReadMoreText(
          //       saleDetails.properties[0].description,
          //       trimLines: 5,
          //       colorClickableText: Colors.blue,
          //       trimMode: TrimMode.Line,
          //       trimCollapsedText: 'Show more',
          //       trimExpandedText: 'Show less',
          //       moreStyle: TextStyle(
          //           fontSize: 14,
          //           fontWeight: FontWeight.bold,
          //           color: Colors.red),
          //       style: TextStyle(color: Colors.black, fontSize: 15),
          //     ),
          //   ],
          // ),
          // ExpansionTile(
          //     title: Text("Features"),
          //     children: List.generate(
          //         saleDetails.properties[0].featureTags.length, (index) {
          //       return ListTile(
          //         title: Text(saleDetails.properties[0].featureTags[index]),
          //       );
          //     })),
          // ExpansionTile(
          //   title: Text("Nearby Schools"),
          //   children: [
          //     Padding(
          //       padding: const EdgeInsets.all(8.0),
          //       child: Column(
          //           children: List.generate(
          //               saleDetails.properties[0].schools.length,
          //               (i) => Card(
          //                     shape: RoundedRectangleBorder(
          //                         borderRadius: BorderRadius.circular(10)),
          //                     elevation: 7,
          //                     child: Column(
          //                       children: [
          //                         ListTile(
          //                           leading: Text("Name"),
          //                           trailing: Text(saleDetails
          //                               .properties[0].schools[i].name),
          //                         ),
          //                         ListTile(
          //                           leading: Text("Education Level"),
          //                           trailing: Text(saleDetails.properties[0]
          //                               .schools[i].educationLevels[0]
          //                               .toString()),
          //                         ),
          //                         ListTile(
          //                           leading: Text("Funding Type"),
          //                           trailing: Text(saleDetails
          //                               .properties[0].schools[i].fundingType),
          //                         ),
          //                         ListTile(
          //                           leading: Text("Students Count"),
          //                           trailing: Text(saleDetails
          //                               .properties[0].schools[i].studentCount
          //                               .toString()),
          //                         ),
          //                         ListTile(
          //                           leading: Text("Students Teacher ratio"),
          //                           trailing: Text(
          //                               "${saleDetails.properties[0].schools[i].studentTeacherRatio.toString()}%"),
          //                         ),
          //                         ListTile(
          //                           leading: Text("Location"),
          //                           trailing: Text(
          //                               "${saleDetails.properties[0].schools[i].location.street}${saleDetails.properties[0].schools[i].location.postalCode}  ${saleDetails.properties[0].schools[i].location.state}"),
          //                         ),
          //                         ListTile(
          //                           leading: Text("Phone"),
          //                           trailing: Text(saleDetails
          //                               .properties[0].schools[i].phone
          //                               .toString()),
          //                         ),
          //                         ListTile(
          //                           leading: Text("Distance"),
          //                           trailing: Text(
          //                               "${saleDetails.properties[0].schools[i].distanceInMiles.toString()} miles"),
          //                         ),
          //                         ListTile(
          //                           leading: Text("Revelance"),
          //                           trailing: Text(saleDetails
          //                               .properties[0].schools[i].relevance),
          //                         ),
          //                         ListTile(
          //                           leading: Text("Ratings"),
          //                           trailing: Column(
          //                             children: [
          //                               SizedBox(
          //                                 height: 15,
          //                               ),
          //                               Text(
          //                                   "GreatSchool Rating   ${saleDetails.properties[0].schools[i].ratings.greatSchoolsRating.toString()}"),
          //                               SizedBox(
          //                                 height: 5,
          //                               ),
          //                               Text(
          //                                   "Parents Rating   ${saleDetails.properties[0].schools[i].ratings.parentRating.toString()}"),
          //                             ],
          //                           ),
          //                         ),
          //                       ],
          //                     ),
          //                   ))),
          //     )
          //   ],
          // ),
          // ExpansionTile(
          //   title: Text("Property History"),
          //   children: [
          //     Card(
          //       elevation: 6,
          //       child: DataTable(
          //           //columnSpacing: 23,
          //           columns: [
          //             DataColumn(
          //               label: Text('price'),
          //             ),
          //             DataColumn(
          //               label: Text('Date'),
          //             ),
          //             DataColumn(
          //               label: Text('Source'),
          //             ),

          //             // ignore: missing_return
          //           ],
          //           rows: List.generate(
          //               saleDetails.properties[0].soldHistory.length, (index) {
          //             DateTime dateTime =
          //                 saleDetails.properties[0].soldHistory[index].date;
          //             final DateFormat format = DateFormat('dd-MM-yyyy');
          //             final String finaldate = format.format(dateTime);
          //             return DataRow(cells: [
          //               DataCell(Text(saleDetails
          //                       .properties[0].soldHistory[index].listing.price
          //                       .toString()) ??
          //                   ""),
          //               DataCell(Text(finaldate.toString())),
          //               DataCell(Text(saleDetails
          //                   .properties[0].soldHistory[index].source)),
          //             ]);
          //           })),
          //     ),
          //   ],
          // ),
          // ExpansionTile(
          //   title: Text('Office'),
          //   children: [
          //     Card(
          //       child: Column(
          //         children: [
          //           ListTile(
          //             leading: Text("Name"),
          //             trailing: Text(
          //                 saleDetails.properties[0].office.name == null
          //                     ? ""
          //                     : saleDetails.properties[0].office.name),
          //           ),
          //           ListTile(
          //             leading: Text("Email"),
          //             trailing: Text(
          //                     saleDetails.properties[0].office.email == null
          //                         ? ""
          //                         : saleDetails.properties[0].office.email) ??
          //                 "",
          //           ),
          //           ListTile(
          //               leading: Text("Phone"),
          //               trailing: Text(saleDetails
          //                           .properties[0].office.phones[0].number ==
          //                       null
          //                   ? ""
          //                   : saleDetails.properties[0].office.phones[0].number)

          //               // [
          //               //   Text(saleDetails.properties[0].office.phones[0].number),
          //               //     Text(saleDetails.properties[0].office.phones[0]),
          //               // ],

          //               ),
          //           ListTile(
          //             leading: Text("Address"),
          //             trailing: Text(
          //                 "${saleDetails.properties[0].office.address.city} ${saleDetails.properties[0].office.address.stateCode}"),
          //           ),
          //         ],
          //       ),
          //     )
          //   ],
          // ),
          // // ExpansionTile(title: Text('Monthly Cost'),
          // children: [

          // ],
          // ),
          // ExpansionTile(title: Text("Agent"),
          // children: [
          //   Column(
          //     children: List.generate(saleDetails.properties[0].agents.length, (index) =>Card(child: Column(
          //       children: [
          //          ListTile(
          //        leading: Text("Name"),
          //        trailing: Text(saleDetails.properties[0].agents[index].name),
          //      ) ,
          //      ListTile(
          //        leading: Text("Office"),
          //        trailing: Text(saleDetails.properties[0].agents[index].officeName),
          //      ) ,
          //      ListTile(
          //        leading: Text("Email"),
          //        trailing: Text(saleDetails.properties[0].agents[index].email),
          //      ) ,
          //       ],
          //     ),))
          //   )
          // ],
          // )
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
              size: 40,
              color: Colors.white,
            ),
          )),
  
    ]
  );
      
    
        
  
  
}
