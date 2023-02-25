import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:onlinemakeupstore/bloc/event.dart';
import 'package:onlinemakeupstore/bloc/states.dart';
import 'package:onlinemakeupstore/globals.dart';

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

import 'package:onlinemakeupstore/repository/repository.dart';
import 'package:onlinemakeupstore/ui/Homescreen.dart';

class RentHomesBloc extends Bloc<EstateEvent, ClassStates> {
  RealestateRepository repository;
  RentHomesBloc({this.repository}) : super(null);
  EstateEvent get initialState => initialState;
  @override
  Stream<ClassStates> mapEventToState(EstateEvent event) async* {
    // TODO: implement mapEventToState

    if (event is FetchEvent) {
      yield Loadingstate();
      try {
        RentListV2 data = (await repository.rentlistdata());
        yield Loaded(makeup: data);
      } catch (e) {
        yield Errorstate(message: e.toString());
      }
    }
  }
}
//
class SoldHomesBloc extends Bloc<EstateEvent, ClassStates> {
  RealestateRepository repository;
  SoldHomesBloc({this.repository}) : super(null);
  EstateEvent get initialState => initialState;
  @override
  Stream<ClassStates> mapEventToState(EstateEvent event) async* {
    // TODO: implement mapEventToState

    if (event is FetchEvent) {
      yield Loadingstate();
      try {
        SoldData data = (await repository.soldHomedata());
        yield Loaded(solddata: data);
      } catch (e) {
        yield Errorstate(message: e.toString());
      }
    }
  }
}

class SoldHomesDetailBloc extends Bloc<EstateEvent, ClassStates> {
  RealestateRepository repository;
  SoldHomesDetailBloc({this.repository}) : super(null);
  EstateEvent get initialState => initialState;
  @override
  Stream<ClassStates> mapEventToState(EstateEvent event) async* {
    // TODO: implement mapEventToState

    if (event is FetchEvent) {
      yield Loadingstate();
      try {
        SoldDataDetails data = (await repository.SoldDataDetail(
          salespropertyID: soldhomepropertyId
        ));
        yield Loaded(soldDataDetails: data);
      } catch (e) {
        yield Errorstate(message: e.toString());
      }
    }
  }
}

class SaleBloc extends Bloc<EstateEvent, ClassStates> {
  RealestateRepository repository;
  SaleBloc({this.repository}) : super(null);
  EstateEvent get initialState => initialState;
  @override
  Stream<ClassStates> mapEventToState(EstateEvent event) async* {
    // TODO: implement mapEventToState

    if (event is FetchEvent) {
      yield Loadingstate();
      try {
        SaleList data = (await repository.salelistdata());
        yield Loaded(saleList: data);
      } catch (e) {
        yield Errorstate(message: e.toString());
      }
    }
  }
}

class SaleHomedetailsBloc extends Bloc<EstateEvent, ClassStates> {
  RealestateRepository realestateRepository;
  SaleHomedetailsBloc({this.realestateRepository,}) : super(null);
  @override
  Stream<ClassStates> mapEventToState(EstateEvent event) async* {
    if (event is FetchEvent) {
      yield Loadingstate();
      try {
        Productmodel saleDetailsdata =
            (await realestateRepository.salepropertyDetails(
              salespropertyID: selectedpropertyid
            ));
        yield Loaded(saleDetails: saleDetailsdata);
      } catch (e) {
        yield Errorstate(message: e.toString());
      }
    }
  }
}

class SaleHomeAfterclickBloc extends Bloc<EstateEvent, ClassStates> {
  RealestateRepository realestateRepository;
  SaleHomeAfterclickBloc({this.realestateRepository,}) : super(null);
  @override
  Stream<ClassStates> mapEventToState(EstateEvent event) async* {
    if (event is FetchEvent) {
      yield Loadingstate();
      try {
        SalesimilarAfterlClick saleDetailsdata =
            (await realestateRepository.salesimilarHouseAfterclick(
              salespropertyID: afterclickpropertyId
            )
            );
        yield Loaded(salesimilarAfterlClick: saleDetailsdata);
      } catch (e) {
        yield Errorstate(message: e.toString());
      }
    }
  }
}
class SaleSimilarHomeBloc extends Bloc<EstateEvent, ClassStates> {
  RealestateRepository realestateRepository;
  SaleSimilarHomeBloc({this.realestateRepository,}) : super(null);
  @override
  Stream<ClassStates> mapEventToState(EstateEvent event) async* {
    if (event is FetchEvent) {
      yield Loadingstate();
      try {
        SimilarSalesHouse saledata =
            (await realestateRepository.saleSimilarHouse(
              postalcode: selectedPostalcode,
              salespropertyID: selectedpropertyid
            ));
        yield Loaded(similarSalesHouse: saledata);
      } catch (e) {
        yield Errorstate(message: e.toString());
      }
    }
  }
}
////
class RentHomeDetailsBloc extends Bloc<EstateEvent, ClassStates> {
  RealestateRepository repository;
  RentHomeDetailsBloc({this.repository}) : super(null);

  @override
  Stream<ClassStates> mapEventToState(EstateEvent event) async* {
    // TODO: implement mapEventToState

    if (event is FetchEvent) {
      yield Loadingstate();
      try {
        PropertyDetails data =
            (await repository.propertyDetails(propertyid: selectedpropertyid));
        yield Loaded(propertyDetails: data);
      } catch (e) {
        yield Errorstate(message: e.toString());
      }
    }
  }
}
//

class SimilarPropertiesBloc extends Bloc<EstateEvent, ClassStates> {
  RealestateRepository repository;
  SimilarPropertiesBloc({this.repository}) : super(null);
  EstateEvent get initialState => initialState;
  @override
  Stream<ClassStates> mapEventToState(EstateEvent event) async* {
    // TODO: implement mapEventToState

    if (event is FetchEvent) {
      yield Loadingstate();
      try {
        SimilarProperty data = (await repository.similarproperties(
            propertyid: selectedpropertyid));
        yield Loaded(similarProperty: data);
      } catch (e) {
        yield Errorstate(message: e.toString());
      }
    }
  }
}

////
///
class SimilarRentalPropertiesBloc extends Bloc<EstateEvent, ClassStates> {
  RealestateRepository repository;
  SimilarRentalPropertiesBloc({this.repository}) : super(null);
  EstateEvent get initialState => initialState;
  @override
  Stream<ClassStates> mapEventToState(EstateEvent event) async* {
    // TODO: implement mapEventToState

    if (event is FetchEvent) {
      yield Loadingstate();
      try {
        SimilarRentelhomes data = (await repository.similarRental(
            propertyid: selectedpropertyid, postalcode: selectedPostalcode));
        yield Loaded(similarRentelhomes: data);
      } catch (e) {
        yield Errorstate(message: e.toString());
      }
    }
  }
}
