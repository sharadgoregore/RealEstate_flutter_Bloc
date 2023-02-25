import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:onlinemakeupstore/bloc/All_blocs.dart';
import 'package:onlinemakeupstore/model/SimilarRentalhomes.dart';
import 'package:onlinemakeupstore/model/SoldDatadetails.dart';
import 'package:onlinemakeupstore/repository/repository.dart';
import 'package:onlinemakeupstore/ui/Homescreen.dart';
import 'package:onlinemakeupstore/ui/splashscreen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIOverlays([]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<RentHomesBloc>(
              create: (BuildContext context) =>
                  RentHomesBloc(repository: RealestateRepository())),
          BlocProvider<RentHomeDetailsBloc>(
              create: (BuildContext context) =>
                  RentHomeDetailsBloc(repository: RealestateRepository())),
          BlocProvider<SimilarPropertiesBloc>(
              create: (BuildContext context) =>
                  SimilarPropertiesBloc(repository: RealestateRepository())),
          BlocProvider<SimilarRentalPropertiesBloc>(
              create: (BuildContext context) => SimilarRentalPropertiesBloc(
                  repository: RealestateRepository())),
          BlocProvider<SaleBloc>(
              create: (BuildContext context) =>
                  SaleBloc(repository: RealestateRepository())),
          BlocProvider<SaleHomedetailsBloc>(
              create: (BuildContext context) => SaleHomedetailsBloc(
                  realestateRepository: RealestateRepository())),
          BlocProvider<SaleSimilarHomeBloc>(
              create: (BuildContext context) => SaleSimilarHomeBloc(
                  realestateRepository: RealestateRepository())),
          BlocProvider<SaleHomeAfterclickBloc>(
              create: (BuildContext context) => SaleHomeAfterclickBloc(
                  realestateRepository: RealestateRepository())),
          BlocProvider<SoldHomesBloc>(
              create: (BuildContext context) =>
                  SoldHomesBloc(repository: RealestateRepository())),
          BlocProvider<SoldHomesDetailBloc>(
              create: (BuildContext context) =>
                  SoldHomesDetailBloc(repository: RealestateRepository())),
        ],
        child: ResponsiveSizer(builder: (context, orientation, screenType) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            // routes: allroutes(context),
            home: Splash(),
          );
        }));
  }
}
