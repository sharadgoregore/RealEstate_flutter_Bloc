import 'dart:convert';

//import 'package:onlinemakeupstore/model/Category.dart';

import 'package:http/http.dart' as http;
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

abstract class Repository {
  propertyDetails({String propertyid});
  // ignore: non_constant_identifier_names
  // PropertyDetails({String propertyid});
}

class RealestateRepository extends Repository {
  //var Category;

  @override
  propertyDetails({String propertyid}) async {
    Uri uri = Uri.parse(
        "https://realty-in-us.p.rapidapi.com/properties/v2/detail?property_id=$selectedpropertyid");

    final response = await http.get(
      uri,
      headers: {
        "content-type": "application/json",
        "x-rapidapi-host": "realty-in-us.p.rapidapi.com",
        "x-rapidapi-key": "4561a995a1mshd8b0549a980e3e0p1a6156jsnd58015fff0d3",
        //"category":"91083"
      },
    );
    if (response.statusCode == 200) {
      Map<String, dynamic> decode = json.decode(response.body);

      var d = PropertyDetails.fromJson(decode);
      // ignore: unused_element

      print(d);

      return d;
    } else {
      throw Exception('Failed to load json data');
    }
  }

  rentlistdata({String query}) async {
    Uri uri = Uri.parse(
        "https://realty-in-us.p.rapidapi.com/properties/v2/list-for-rent?state_code=NY&city=New York City&limit=300&offset=0&sort=relevance");

    final response = await http.get(
      uri,
      headers: {
        "content-type": "application/json",
        "x-rapidapi-host": "realty-in-us.p.rapidapi.com",
        "x-rapidapi-key": "4561a995a1mshd8b0549a980e3e0p1a6156jsnd58015fff0d3",
        //"category":"91083"
      },
    );
  try{
      if (response.
      statusCode == 200) {
      Map<String, dynamic> decode = json.decode(response.body);
      //  print(decode);
      // var d = decode['items'];
      // print(d);
      var data = RentListV2.fromJson(decode);

      RentListV2 d = data;

      print(data);

      return d;
    }
  }
  catch(e){
    print(e);
  }
  }

  salelistdata({String query}) async {
    Uri uri = Uri.parse(
        "https://realty-in-us.p.rapidapi.com/properties/v2/list-for-sale?state_code=NY&city=New York City&limit=300&offset=0&sort=relevance");

    final response = await http.get(
      uri,
      headers: {
        "content-type": "application/json",
        "x-rapidapi-host": "realty-in-us.p.rapidapi.com",
        "x-rapidapi-key": "4561a995a1mshd8b0549a980e3e0p1a6156jsnd58015fff0d3",
        //"category":"91083"
      },
    );
    if (response.statusCode == 200) {
      Map<String, dynamic> decode = json.decode(response.body);
      //  print(decode);
      // var d = decode['items'];
      // print(d);
      var data = SaleList.fromJson(decode);

      SaleList d = data;
//print(data);
      print(data);

      // print(contentLayout);
      return d;
    } else {
      throw Exception('Failed to load json data');
    }
  }

  soldHomedata({String query}) async {
    Uri uri = Uri.parse(
        "https://realty-in-us.p.rapidapi.com/properties/v2/list-sold?offset=0&limit=200&city=New York City&state_code=NY&sort=sold_date");

    final response = await http.get(
      uri,
      headers: {
        "content-type": "application/json",
        "x-rapidapi-host": "realty-in-us.p.rapidapi.com",
        "x-rapidapi-key": "4561a995a1mshd8b0549a980e3e0p1a6156jsnd58015fff0d3",
        //"category":"91083"
      },
    );
    if (response.statusCode == 200) {
      Map<String, dynamic> decode = json.decode(response.body);
      //  print(decode);
      // var d = decode['items'];
      // print(d);
      var data = SoldData.fromJson(decode);

      SoldData d = data;
//print(data);
      print(data);

      // print(contentLayout);
      return d;
    } else {
      throw Exception('Failed to load json data');
    }
  }

  salepropertyDetails({var salespropertyID}) async {
    Uri uri = Uri.parse(
        "https://realty-in-us.p.rapidapi.com/properties/v2/detail?property_id=$salespropertyID");

    final response = await http.get(
      uri,
      headers: {
        "content-type": "content-type",
        "x-rapidapi-host": "realty-in-us.p.rapidapi.com",
        "x-rapidapi-key": "4561a995a1mshd8b0549a980e3e0p1a6156jsnd58015fff0d3",
        //"category":"91083"
      },
    );
    if (response.statusCode == 200) {
      Map<String, dynamic> decode = json.decode(response.body);
      print(response.body);
// List d = decode['properties'];
   
      // var dd = (d).map((e) => List<SalesProperty>.from(e)).toList();
      // ignore: unused_element

      //print(dd);

      return Productmodel.fromJson(decode);
    } else {
      throw Exception('Failed to load json data');
    }
  }

  // ignore: non_constant_identifier_names
  SoldDataDetail({var salespropertyID}) async {
    Uri uri = Uri.parse(
        "https://realty-in-us.p.rapidapi.com/properties/v2/detail?property_id=$salespropertyID");

    final response = await http.get(
      uri,
      headers: {
        "content-type": "application/json",
        "x-rapidapi-host": "realty-in-us.p.rapidapi.com",
        "x-rapidapi-key": "4561a995a1mshd8b0549a980e3e0p1a6156jsnd58015fff0d3",
        //"category":"91083"
      },
    );
    if (response.statusCode == 200) {
      Map<String, dynamic> decode = json.decode(response.body);

      var d = SoldDataDetails.fromJson(decode);

      return d ?? "";
    } else {
      throw Exception('Failed to load json data');
    }
  }

  salesimilarHouseAfterclick({var salespropertyID}) async {
    Uri uri = Uri.parse(
        "https://realty-in-us.p.rapidapi.com/properties/v2/detail?property_id=$salespropertyID");

    final response = await http.get(
      uri,
      headers: {
        "content-type": "application/json",
        "x-rapidapi-host": "realty-in-us.p.rapidapi.com",
        "x-rapidapi-key": "4561a995a1mshd8b0549a980e3e0p1a6156jsnd58015fff0d3",
        //"category":"91083"
      },
    );
    if (response.statusCode == 200) {
      Map<String, dynamic> decode = json.decode(response.body);
// List d = decode['properties'];
      var d = SalesimilarAfterlClick.fromJson(decode);
      // var dd = (d).map((e) => List<SalesProperty>.from(e)).toList();
      // ignore: unused_element

      //print(dd);

      return d ?? "";
    } else {
      throw Exception('Failed to load json data');
    }
  }

  saleSimilarHouse({var salespropertyID, postalcode}) async {
    Uri uri = Uri.parse(
        "https://realty-in-us.p.rapidapi.com/properties/v2/list-similar-rental-homes?property_id=$salespropertyID&postal_code=$postalcode");

    final response = await http.get(
      uri,
      headers: {
        "content-type": "application/json",
        "x-rapidapi-host": "realty-in-us.p.rapidapi.com",
        "x-rapidapi-key": "4561a995a1mshd8b0549a980e3e0p1a6156jsnd58015fff0d3",
        //"category":"91083"
      },
    );
    if (response.statusCode == 200) {
      Map<String, dynamic> decode = json.decode(response.body);
// List d = decode['properties'];
      var d = SimilarSalesHouse.fromJson(decode);
      // var dd = (d).map((e) => List<SalesProperty>.from(e)).toList();
      // ignore: unused_element

      //print(dd);

      return d;
    } else {
      throw Exception('Failed to load json data');
    }
  }

  similarproperties({String propertyid}) async {
    Uri uri = Uri.parse(
        "https://realty-in-us.p.rapidapi.com/properties/v2/list-similar-homes?property_id=$selectedpropertyid");

    final response = await http.get(
      uri,
      headers: {
        "content-type": "application/json",
        "x-rapidapi-host": "realty-in-us.p.rapidapi.com",
        "x-rapidapi-key": "4561a995a1mshd8b0549a980e3e0p1a6156jsnd58015fff0d3",
        //"category":"91083"
      },
    );
    if (response.statusCode == 200) {
      Map<String, dynamic> decode = json.decode(response.body);

      var data = SimilarProperty.fromJson(decode);

      SimilarProperty d = data;

      print(data);

      // print(contentLayout);
      return d;
    } else {
      throw Exception('Failed to load json data');
    }
  }

  similarRental({String propertyid, postalcode}) async {
    Uri uri = Uri.parse(
        "https://realty-in-us.p.rapidapi.com/properties/v2/list-similar-rental-homes?postal_code=$postalcode&property_id=$propertyid");

    final response = await http.get(
      uri,
      headers: {
        "content-type": "application/json",
        "x-rapidapi-host": "realty-in-us.p.rapidapi.com",
        "x-rapidapi-key": "4561a995a1mshd8b0549a980e3e0p1a6156jsnd58015fff0d3",
        //"category":"91083"
      },
    );
    if (response.statusCode == 200) {
      Map<String, dynamic> decode = json.decode(response.body);

      var data = SimilarRentelhomes.fromJson(decode);

      SimilarRentelhomes d = data;

      print(data);

      // print(contentLayout);
      return d;
    } else {
      throw Exception('Failed to load json data');
    }
  }
}
