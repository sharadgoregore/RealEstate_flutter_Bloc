import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:onlinemakeupstore/bloc/All_blocs.dart';
import 'package:onlinemakeupstore/bloc/event.dart';
import 'package:onlinemakeupstore/bloc/states.dart';
import 'package:onlinemakeupstore/model/RentListv2.dart';
import 'package:onlinemakeupstore/model/SaleList.dart';
import 'package:onlinemakeupstore/model/SoldDatamodel.dart';
import 'package:onlinemakeupstore/ui/appdrawer.dart';

//import 'package:onlinemakeupstore/model/Category.dart';

import 'package:onlinemakeupstore/ui/categoryProductsList.dart';

import 'package:onlinemakeupstore/ui/saleDetailsproperty.dart';
import 'package:onlinemakeupstore/ui/soldhomeDetails.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import '../globals.dart';

class HomeScreen extends StatefulWidget {
  //const HomeScreen({ Key? key }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //MakeupApi api;

  RentHomesBloc categoryBloc;
  SimilarPropertiesBloc similarProperty;
  SaleBloc saleList;
  SoldHomesBloc soldHomesBloc;

  var _currentIndex = 0;

  @override
  void initState() {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    categoryBloc = BlocProvider.of<RentHomesBloc>(context);
    categoryBloc.add(FetchEvent());
    saleList = BlocProvider.of<SaleBloc>(context);
    saleList.add(FetchEvent());
    soldHomesBloc = BlocProvider.of<SoldHomesBloc>(context);
    soldHomesBloc.add(FetchEvent());
    //     similarProperty = BlocProvider.of<SimilarPropertiesBloc>(context);
    // similarProperty.add(FetchEvent());
    // data =api.bronzer();
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIOverlays(
        [SystemUiOverlay.top, SystemUiOverlay.bottom]);
    super.dispose();
  }

  SliverAppBar showSliverAppBar() {
    return SliverAppBar(
      toolbarHeight: 12.h,
      backgroundColor: Colors.white,
      floating: true,
      pinned: true,
      snap: false,
      flexibleSpace: FlexibleSpaceBar(
          centerTitle: true,
          // title: Text("Collapsing Toolbar",
          //     style: TextStyle(
          //       color: Colors.white,
          //       fontSize: 16.0,
          //     )),
          background: Padding(
            padding: const EdgeInsets.only(bottom: 45),
            child: Image.asset(
              'assets/realestate.png',
            ),
          )),
      bottom: TabBar(
        labelColor: Colors.black,
        labelStyle: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold),
        tabs: [
          Tab(
            // icon: Icon(Icons.home),
            text: 'Rent',
          ),
          Tab(
            // icon: Icon(Icons.settings),
            text: 'Sale',
          ),
          Tab(
            // icon: Icon(Icons.settings),
            text: 'Sold',
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: SalomonBottomBar(
          currentIndex: _currentIndex,
          onTap: (i) => setState(() => _currentIndex = i),
          items: [
            /// Home
            SalomonBottomBarItem(
              icon: Icon(Icons.home),
              title: Text("Home"),
              selectedColor: Colors.purple,
            ),

            /// Likes
            SalomonBottomBarItem(
              icon: Icon(Icons.favorite_border),
              title: Text("Likes"),
              selectedColor: Colors.pink,
            ),

            /// Search
            SalomonBottomBarItem(
              icon: Icon(Icons.search),
              title: Text("Search"),
              selectedColor: Colors.orange,
            ),

            /// Profile
            SalomonBottomBarItem(
              icon: Icon(Icons.person),
              title: Text("Profile"),
              selectedColor: Colors.teal,
            ),
          ],
        ),
        body: DefaultTabController(
          length: 3,
          child: TabBarView(children: [
            // This CustomScrollView display the Home tab content
            CustomScrollView(
              slivers: [
                showSliverAppBar(),

                // Anther sliver widget: SliverList
                SliverList(
                  delegate: SliverChildListDelegate([
                    Container(child: BlocBuilder<RentHomesBloc, ClassStates>(
                      // ignore: missing_return
                      builder: (context, state) {
                        if (state is Initialstate) {
                          return Center(
                            child: Padding(
                              padding: EdgeInsets.only(top: 20.h),
                              child: CircularProgressIndicator(),
                            ),
                          );
                        } else if (state is Loaded) {
                          //  print(state.makeup);
                          return Loadedstate(state.makeup, context);
                        } else if (state is Errorstate) {
                          return buildError(state.message);
                        }
                        return Center(
                          child: Padding(
                            padding: EdgeInsets.only(top: 20.h),
                            child: CircularProgressIndicator(),
                          ),
                        );
                      },
                    )),
                  ]),
                ),
              ],
            ),

            // This shows the Settings tab content
            CustomScrollView(
              slivers: [
                showSliverAppBar(),

                // Show other sliver stuff
                SliverList(
                  delegate: SliverChildListDelegate([
                    Container(child: BlocBuilder<SaleBloc, ClassStates>(
                      // ignore: missing_return
                      builder: (context, state) {
                        if (state is Initialstate) {
                          return Padding(
                            padding: EdgeInsets.only(top: 50.h),
                            child: CircularProgressIndicator(),
                          );
                        } else if (state is Loaded) {
                          //  print(state.makeup);
                          return saleLoadedstate(state.saleList, context);
                        } else if (state is Errorstate) {
                          return buildError(state.message);
                        }
                        return Center(
                          child: Padding(
                            padding: EdgeInsets.only(top: 20.h),
                            child: CircularProgressIndicator(),
                          ),
                        );
                      },
                    )),
                  ]),
                ),
              ],
            ),
            CustomScrollView(
              slivers: [
                showSliverAppBar(),

                // Show other sliver stuff
                SliverList(
                  delegate: SliverChildListDelegate([
                    Container(child: BlocBuilder<SoldHomesBloc, ClassStates>(
                      // ignore: missing_return
                      builder: (context, state) {
                        if (state is Initialstate) {
                          return Center(
                              child: Padding(
                            padding: EdgeInsets.only(top: 30.h),
                            child: CircularProgressIndicator(),
                          ));
                        } else if (state is Loaded) {
                          //  print(state.makeup);
                          return soldHomestate(state.solddata, context);
                        } else if (state is Errorstate) {
                          return buildError(state.message);
                        }
                        return Center(
                          child: Padding(
                            padding: EdgeInsets.only(top: 20.h),
                            child: CircularProgressIndicator(),
                          ),
                        );
                      },
                    )),
                  ]),
                ),
              ],
            )
          ]),
        ));
  }
}

Widget saleLoadedstate(SaleList data, context) {
  return SingleChildScrollView(
    child: Column(
      children: [
        ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: data.properties.length,
            itemBuilder: (BuildContext context, index) {
              return Padding(
                padding: const EdgeInsets.all(4.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SalesPropertyDetailsPage()),
                    );
                    selectedpropertyid = data.properties[index].propertyId;
                    selectedPostalcode =
                        data.properties[index].address.postalCode;
                    print("postal code=====>$selectedPostalcode");
                    print("property id=====>$selectedpropertyid");
                  },
                  child: Padding(
                    padding: EdgeInsets.only(left: 15.sp, right: 15.sp),
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      elevation: 6,
                      child: Column(
                        children: [
                          Container(
                              height: 25.h,
                              width:double.infinity,
                              child: FadeInImage(
                                image: NetworkImage(
                                    data.properties[index].thumbnail),
                                placeholder: AssetImage("assets/img.jpeg"),
                                imageErrorBuilder:
                                    (context, error, stackTrace) {
                                  return Icon(Icons.image);
                                },
                                fit: BoxFit.fill,
                              )
                             
                              ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                data.properties[index].propType.toString(),
                                style: TextStyle(fontSize: 18),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "\$ ${data.properties[index].price.toString()}",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            "${data.properties[index].address.line}${data.properties[index].address.postalCode} ${data.properties[index].address.city}",
                            softWrap: true,
                            maxLines: 1,
                            style: TextStyle(fontSize: 17),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            })
      ],
    ),
  );
}

// Widget buildError(String message) {
//   return Center(
//     child: Text(message),
//   );
// }
Widget soldHomestate(SoldData data, context) {
  return Column(
    children: [
      Container(
          height: MediaQuery.of(context).size.height,
          child: ListView.builder(
              itemCount: data.properties.length,
              itemBuilder: (BuildContext context, index) {
                return Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SoldpropertyDetails()),
                      );
                      soldhomepropertyId = data.properties[index].propertyId;
                      // selectedPostalcode =
                      //     data.properties[index].address.postalCode;
                      // print("postal code=====>$selectedPostalcode");
                      // print("property id=====>$selectedpropertyid");
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      elevation: 6,
                      child: Column(
                        children: [
                          Container(
                            height: 160,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(data.properties[index]
                                                .photos[0].href ==
                                            null
                                        ? "https://4vector.com/i/free-vector-home-icon_100517_Home_icon.png"
                                        : data
                                            .properties[index].photos[0].href),
                                    fit: BoxFit.fill)),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                data.properties[index].propType.toString(),
                                style: TextStyle(fontSize: 18),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "\$ ${data.properties[index].price.toString()}",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            "${data.properties[index].address.line}${data.properties[index].address.postalCode} ${data.properties[index].address.city}",
                            softWrap: true,
                            maxLines: 1,
                            style: TextStyle(fontSize: 17),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }))
    ],
  );
}

// ignore: non_constant_identifier_names
Widget Loadedstate(RentListV2 data, context) {
  return Column(
    children: [
      Container(
          height: MediaQuery.of(context).size.height,
          child: ListView.builder(
              itemCount: data.properties.length,
              itemBuilder: (BuildContext context, index) {
                return Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AllcategoryProducts(
                                // rentList: NetworkImage(
                                //     data.properties[index].virtualTour == null
                                //         ? data.properties[index].photos[0].href
                                //         : data.properties[index].virtualTour
                                //             .href)
                                )),
                      );
                      selectedpropertyid = data.properties[index].propertyId;
                      selectedPostalcode =
                          data.properties[index].address.postalCode;
                      print(selectedpropertyid);
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      elevation: 6,
                      child: Column(
                        children: [
                          Container(
                            height: 160,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(data.properties[index]
                                                .virtualTour ==
                                            null
                                        ? data.properties[index].photos[0].href
                                        : data.properties[index].virtualTour
                                            .href),
                                    fit: BoxFit.fill)),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                data.properties[index].propType.toString(),
                                style: TextStyle(fontSize: 18),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "\$ ${data.properties[index].community.priceMin.toString()} - \$ ${data.properties[index].community.priceMax.toString()}",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            "${data.properties[index].address.line}${data.properties[index].address.postalCode} ${data.properties[index].address.city}",
                            softWrap: true,
                            maxLines: 1,
                            style: TextStyle(fontSize: 17),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }))
    ],
  );
}

Widget _buildRow(IconData icon, String title, {bool showBadge = false}) {
  final TextStyle tStyle = TextStyle(fontSize: 16.0);
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 5.0),
    child: Row(
      children: [
        Icon(
          icon,
          //  color: active,
        ),
        SizedBox(width: 10.0),
        Text(
          title,
          style: tStyle,
        ),
        Spacer(),
        if (showBadge)
          Material(
            color: Colors.deepOrange,
            elevation: 5.0,
            shadowColor: Colors.red,
            borderRadius: BorderRadius.circular(5.0),
            child: Container(
              width: 25,
              height: 25,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.deepOrange,
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Text(
                "10+",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
      ],
    ),
  );
}



///////////// Drawer
