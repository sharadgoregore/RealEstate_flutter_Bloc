// ignore_for_file: missing_retu

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:onlinemakeupstore/bloc/All_blocs.dart';
import 'package:onlinemakeupstore/bloc/event.dart';
import 'package:onlinemakeupstore/bloc/states.dart';
import 'package:onlinemakeupstore/globals.dart';

import 'package:onlinemakeupstore/model/PropertyDetails.dart';
import 'package:onlinemakeupstore/model/RentList.dart';
import 'package:onlinemakeupstore/ui/similarproprties.dart';

//import 'package:onlinemakeupstore/model/Category.dart';

import 'package:readmore/readmore.dart';

class AllcategoryProducts extends StatefulWidget {
  NetworkImage rentList;
  AllcategoryProducts({this.rentList});
  //const AllcategoryProducts({ Key? key }) : super(key: key);

  @override
  _AllcategoryProductsState createState() => _AllcategoryProductsState();
}

class _AllcategoryProductsState extends State<AllcategoryProducts> {
  //MakeupApi api;

  RentHomeDetailsBloc categoryBloc;
  SimilarPropertiesBloc similarPropertiesBloc;
  SimilarRentalPropertiesBloc similarRentalPropertiesBloc;

  @override
  void initState() {
    categoryBloc = BlocProvider.of<RentHomeDetailsBloc>(context);
    categoryBloc.add(FetchEvent());
    similarPropertiesBloc = BlocProvider.of<SimilarPropertiesBloc>(context);
    similarPropertiesBloc.add(FetchEvent());
    similarRentalPropertiesBloc =
        BlocProvider.of<SimilarRentalPropertiesBloc>(context);
    similarRentalPropertiesBloc.add(FetchEvent());
    // data =api.bronzer();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
       SingleChildScrollView(
        child: Column(
          children: [
            Container(child: BlocBuilder<RentHomeDetailsBloc, ClassStates>(
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
                  return Loadedstate(
                    data: state.propertyDetails,
                    context: context,
                  );
                } else if (state is Errorstate) {
                  return buildError(state.message);
                }
                return Center(
                  child: Container(),
                );
              },
            )),
            Container(child: BlocBuilder<SimilarPropertiesBloc, ClassStates>(
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
                  return Loadstate(state.similarProperty, context);
                } else if (state is Errorstate) {
                  return buildError(state.message);
                }
                return Center(
                  child: CircularProgressIndicator(),
                );
              },
            )),
           Container(child: BlocBuilder<SimilarRentalPropertiesBloc, ClassStates>(
              // ignore: missing_return
              builder: (context, state) {
                if (state is Initialstate) {
                  return Center(
                    child: Column(
                      children: [
                         SizedBox(height: 150,),
                        CircularProgressIndicator(),
                      ],
                    ),
                  );
                } else if (state is Loadingstate) {
                  return Center(
                    child: Column(
                      children: [
                        SizedBox(height: 150,),
                        CircularProgressIndicator(),
                      ],
                    ),
                  );
                } else if (state is Loaded) {
                  //  print(state.makeup);
                  return SimilarLoadedState(state.similarRentelhomes, context);
                } else if (state is Errorstate) {
                  return buildError(state.message);
                }
                return Center(
                  child: CircularProgressIndicator(),
                );
              },
            )),
          
          ],
        ),
      ),
   
    );
  }
}

////////////////
///
Widget buildError(String message) {
  return Center(
    child: Text(message),
  );
}

// ignore: non_constant_identifier_names
Widget Loadedstate({PropertyDetails data, context}) {
  return Column(
    children: [
      Container(
        height: 400,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(data.properties[0].virtualTour.href ?? ""),
                fit: BoxFit.fill)),
      ),
      Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        )),
        child: Container(

            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
                    Widget>[
          SizedBox(
            height: 10,
          ),
          Text(
            "     \$ ${data.properties[0].community.priceMin.toString()} - \$ ${data.properties[0].community.priceMax.toString() ?? ""}",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  selectedpropertyid = data.properties[0].propertyId;
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SimilarHouseui()),
                  );
                },
                child: Icon(
                  Icons.location_pin,
                  size: 30,
                ),
              ),
              Text(
                "${data.properties[0].address.line}${data.properties[0].address.postalCode} ${data.properties[0].address.city}",
                softWrap: true,
                maxLines: 1,
                style: TextStyle(fontSize: 17),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          ReadMoreText(
            "Description :  ${data.properties[0].description}",
            trimLines: 5,
            colorClickableText: Colors.blue,
            trimMode: TrimMode.Line,
            trimCollapsedText: 'Show more',
            trimExpandedText: 'Show less',
            moreStyle: TextStyle(
                fontSize: 14, fontWeight: FontWeight.bold, color: Colors.red),
            style: TextStyle(color: Colors.black, fontSize: 15),
          ),
          // Text(data.properties[0].description == null
          //     ? ""
          //     : data.properties[0].description),
          Divider(
            thickness: 2,
          ),
          ExpansionTile(
            title: Text("Managment"),
            children: [
              ListTile(
                title: Text('Name    :  ${data.properties[0].management.name}'),
              ),
              ListTile(
                title:
                    Text('Email    :  ${data.properties[0].management.email}'),
              ),
              ListTile(
                title:
                    Text('Type     :  ${data.properties[0].management.type}'),
              ),
            ],
          ),
          ExpansionTile(
              title: Text('Features'),
              children: List.generate(
                data.properties[0].features.length,
                (i) => Column(
                  children: List.generate(
                    data.properties[0].features[i].text.length,
                    (ins) => ListTile(
                      title: Text(
                          data.properties[0].features[i].text[ins].toString()),
                    ),
                  ),
                ),
              )),
          ExpansionTile(
            title: Text("Office Timing"),
            children: List.generate(
              data.properties[0].office.hours.length,
              (i) => ListTile(
                leading:
                    Text(data.properties[0].office.hours[i].day[0].toString()),
                title: Row(
                  children: [
                    Text(
                        "${data.properties[0].office.hours[i].startTime == null ? "10 AM" : data.properties[0].office.hours[i].startTime.toString()}-${data.properties[0].office.hours[i].endTime == null ? "6 PM" : data.properties[0].office.hours[i].endTime.toString()}"),
                  ],
                ),
              ),
            ),
          ),
          ExpansionTile(
            title: Text("Nearby Schools"),
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                    children: List.generate(
                        data.properties[0].schools.length,
                        (i) => Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              elevation: 7,
                              child: Column(
                                children: [
                                  ListTile(
                                    leading: Text("Name"),
                                    trailing: Text(
                                        data.properties[0].schools[i].name),
                                  ),
                                  ListTile(
                                    leading: Text("Education Level"),
                                    trailing: Text(data.properties[0].schools[i]
                                        .educationLevels[0]
                                        .toString()),
                                  ),
                                  ListTile(
                                    leading: Text("Funding Type"),
                                    trailing: Text(data
                                        .properties[0].schools[i].fundingType),
                                  ),
                                  ListTile(
                                    leading: Text("Students Count"),
                                    trailing: Text(data
                                        .properties[0].schools[i].studentCount
                                        .toString()),
                                  ),
                                  ListTile(
                                    leading: Text("Students Teacher ratio"),
                                    trailing: Text(
                                        "${data.properties[0].schools[i].studentTeacherRatio.toString()}%"),
                                  ),
                                  ListTile(
                                    leading: Text("Location"),
                                    trailing: Text(
                                        "${data.properties[0].schools[i].location.street}${data.properties[0].schools[i].location.postalCode}  ${data.properties[0].schools[i].location.state}"),
                                  ),
                                  ListTile(
                                    leading: Text("Phone"),
                                    trailing: Text(data
                                        .properties[0].schools[i].phone
                                        .toString()),
                                  ),
                                  ListTile(
                                    leading: Text("Distance"),
                                    trailing: Text(
                                        "${data.properties[0].schools[i].distanceInMiles.toString()} miles"),
                                  ),
                                  ListTile(
                                    leading: Text("Revelance"),
                                    trailing: Text(data
                                        .properties[0].schools[i].relevance),
                                  ),
                                  ListTile(
                                    leading: Text("Ratings"),
                                    trailing: Column(
                                      children: [
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Text(
                                            "GreatSchool Rating   ${data.properties[0].schools[i].ratings.greatSchoolsRating.toString()}"),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                            "Parents Rating   ${data.properties[0].schools[i].ratings.parentRating.toString()}"),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ))),
              )
            ],
          )
        ])),
      )
    ],
  );
}
