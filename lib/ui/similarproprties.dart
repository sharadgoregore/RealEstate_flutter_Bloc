import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:onlinemakeupstore/bloc/All_blocs.dart';
import 'package:onlinemakeupstore/bloc/event.dart';
import 'package:onlinemakeupstore/bloc/states.dart';
import 'package:onlinemakeupstore/globals.dart';
import 'package:onlinemakeupstore/model/SimilarRentalhomes.dart';
import 'package:onlinemakeupstore/model/similarList.dart';
import 'package:onlinemakeupstore/ui/categoryProductsList.dart';

class SimilarHouseui extends StatefulWidget {
  //const SimilarHouseui({ Key? key }) : super(key: key);

  @override
  _SimilarHouseuiState createState() => _SimilarHouseuiState();
}

class _SimilarHouseuiState extends State<SimilarHouseui> {
  //MakeupApi api;

  SimilarPropertiesBloc similarPropertiesBloc;

  @override
  void initState() {
    similarPropertiesBloc = BlocProvider.of<SimilarPropertiesBloc>(context);
    similarPropertiesBloc.add(FetchEvent());
    // data =api.bronzer();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child: BlocBuilder<SimilarPropertiesBloc, ClassStates>(
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
            return Loadstate(state.similarProperty, context);
          } else if (state is Errorstate) {
            return buildError(state.message);
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      )),
    );
  }
}

////////////////
///
// Widget buildError(String message) {
//   return Center(
//     child: Text(message),
//   );
// }

Widget Loadstate(SimilarProperty similarProperty, context) {
  print(similarProperty);
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Divider(
        thickness: 3,
      ),
      Text(
        "   Similar Properties",
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          // decoration: BoxDecoration(
          //   borderRadius: BorderRadius.circular(10)
          // ),
          height: 240,

          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: similarProperty.data.home.relatedHomes.results.length,
              itemBuilder: (BuildContext context, index) {
                return Stack(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AllcategoryProducts(),
                            ));
                        selectedpropertyid = similarProperty
                            .data.home.relatedHomes.results[index].propertyId;
                      },
                      child: Card(
                        elevation: 6,
                        child: Column(
                          children: [
                            Container(
                              height: 200,
                              child: Image(
                                image: NetworkImage(similarProperty
                                    .data
                                    .home
                                    .relatedHomes
                                    .results[index]
                                    .primaryPhoto
                                    .href),
                                fit: BoxFit.fill,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "${similarProperty.data.home.relatedHomes.results[index].location.address.line}${similarProperty.data.home.relatedHomes.results[index].location.address.city}",
                              softWrap: true,
                              maxLines: 1,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                        top: 10,
                        left: 8,
                        child: Card(
                          child: Text(
                            similarProperty
                                .data.home.relatedHomes.results[index].status
                                .toString(),
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17),
                          ),
                        ))
                  ],
                );
              }),
        ),
      ),
    ],
  );
}

Widget SimilarLoadedState(SimilarRentelhomes similarRentelhomes, context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Divider(
        thickness: 3,
      ),
      Text(
        "   Similar Rental Homes",
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          // decoration: BoxDecoration(
          //   borderRadius: BorderRadius.circular(10)
          // ),
          height: 240,

          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: similarRentelhomes.properties[0].postalCode.length,
              itemBuilder: (BuildContext context, index) {
                return Stack(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AllcategoryProducts(),
                            ));
                        selectedpropertyid =
                            similarRentelhomes.properties[index].propertyId;
                      },
                      child: Card(
                        elevation: 6,
                        child: Column(
                          children: [
                            Container(
                              height: 200,
                              child: Image(
                                image: NetworkImage(similarRentelhomes
                                    .properties[index].photoUrl),
                                fit: BoxFit.fill,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Text(
                                  "${similarRentelhomes.properties[index].address}  ${similarRentelhomes.properties[index].city}",
                                  softWrap: true,
                                  maxLines: 1,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "\$ ${similarRentelhomes.properties[index].price.toString()}",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    // Positioned(
                    //     top: 10,
                    //     left: 8,
                    //     child: Card(
                    //       child: Text(
                    //         similarProperty
                    //             .data.home.relatedHomes.results[index].status
                    //             .toString(),
                    //         style: TextStyle(
                    //             fontWeight: FontWeight.bold, fontSize: 17),
                    //       ),
                    //     ))
                  ],
                );
              }),
        ),
      ),
    ],
  );
}
