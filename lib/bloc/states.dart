import 'package:equatable/equatable.dart';
import 'package:onlinemakeupstore/bloc/All_blocs.dart';

import 'package:onlinemakeupstore/model/PropertyDetails.dart' as p;
import 'package:onlinemakeupstore/model/PropertyDetails.dart';
import 'package:onlinemakeupstore/model/RentList.dart';
import 'package:onlinemakeupstore/model/RentListv2.dart';
import 'package:onlinemakeupstore/model/SaleList.dart';
import 'package:onlinemakeupstore/model/SalesDetails.dart';
import 'package:onlinemakeupstore/model/SimilarRentalhomes.dart';
import 'package:onlinemakeupstore/model/SoldDatadetails.dart';
import 'package:onlinemakeupstore/model/SoldDatamodel.dart';
import 'package:onlinemakeupstore/model/salesimililarafterclick.dart';
import 'package:onlinemakeupstore/model/similarList.dart';
import 'package:onlinemakeupstore/model/similarRenatlhomesSales.dart';


abstract class ClassStates extends Equatable {}

class Initialstate extends ClassStates {
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class Loadingstate extends ClassStates {
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class Loaded extends ClassStates {
  // TODO: implement props
 RentListV2 makeup;
  //CatergoryProduct productdata;
 PropertyDetails propertyDetails;
  SimilarProperty similarProperty;
  SimilarRentelhomes similarRentelhomes;
  SaleList saleList;
  SoldData solddata;
  SoldDataDetails soldDataDetails;
Productmodel saleDetails;
SimilarSalesHouse similarSalesHouse;
SalesimilarAfterlClick salesimilarAfterlClick;

  Loaded({ this.soldDataDetails,this.solddata,this.salesimilarAfterlClick, this.similarSalesHouse,this.makeup, this.propertyDetails,this.similarProperty,this.similarRentelhomes,this.saleList,this.saleDetails});
  List<Object> get props => null;
  // TODO: implement props

}

class Errorstate extends ClassStates {
  @override
  // TODO: implement props
  List<Object> get props => [];
  String message;
  Errorstate({this.message});
}
