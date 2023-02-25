// To parse this JSON data, do
//
//     final propertyDetails = propertyDetailsFromJson(jsonString);

import 'dart:convert';

PropertyDetails propertyDetailsFromJson(String str) =>
    PropertyDetails.fromJson(json.decode(str));

String propertyDetailsToJson(PropertyDetails data) =>
    json.encode(data.toJson());

class PropertyDetails {
  PropertyDetails({
    this.meta,
    this.properties,
  });

  Meta meta;
  List<Propertydata> properties;

  factory PropertyDetails.fromJson(Map<String, dynamic> json) =>
      PropertyDetails(
        meta: Meta.fromJson(json["meta"]),
        properties: List<Propertydata>.from(
            json["properties"].map((x) => Propertydata.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "meta": meta.toJson(),
        "properties": List<dynamic>.from(properties.map((x) => x.toJson())),
      };
}

class Meta {
  Meta({
    this.build,
    this.schema,
    this.tracking,
    this.returnedRows,
    this.matchingRows,
    this.trackingParams,
  });

  String build;
  String schema;
  String tracking;
  int returnedRows;
  int matchingRows;
  TrackingParams trackingParams;

  factory Meta.fromJson(Map<String, dynamic> json) => Meta(
        build: json["build"],
        schema: json["schema"],
        tracking: json["tracking"],
        returnedRows: json["returned_rows"],
        matchingRows: json["matching_rows"],
        trackingParams: TrackingParams.fromJson(json["tracking_params"]),
      );

  Map<String, dynamic> toJson() => {
        "build": build,
        "schema": schema,
        "tracking": tracking,
        "returned_rows": returnedRows,
        "matching_rows": matchingRows,
        "tracking_params": trackingParams.toJson(),
      };
}

class TrackingParams {
  TrackingParams({
    this.ldpPropertyStatus,
    this.pageType,
    this.leadDelivery,
    this.leadEnhancements,
    this.listingActivity,
    this.productType,
    this.propertyStatus,
    this.listingId,
    this.rentalDataSource,
    this.communityId,
    this.mprId,
    this.listingMls,
    this.planId,
    this.subId,
    this.city,
    this.neighborhood,
    this.state,
    this.zip,
    this.listingBaths,
    this.listingBeds,
    this.listingSqFt,
    this.listingEnhancements,
    this.listingPrice,
   // this.photoCount,
    this.propertyType,
    this.version,
  });

  String ldpPropertyStatus;
  String pageType;
  String leadDelivery;
  String leadEnhancements;
  String listingActivity;
  String productType;
  String propertyStatus;
  String listingId;
  String rentalDataSource;
  String communityId;
  String mprId;
  String listingMls;
  String planId;
  String subId;
  String city;
  String neighborhood;
  String state;
  String zip;
  String listingBaths;
  String listingBeds;
  String listingSqFt;
  String listingEnhancements;
  String listingPrice;
 // String photoCount;
  String propertyType;
  String version;

  factory TrackingParams.fromJson(Map<String, dynamic> json) => TrackingParams(
        ldpPropertyStatus: json["ldpPropertyStatus"],
        pageType: json["pageType"],
        leadDelivery: json["leadDelivery"],
        leadEnhancements: json["leadEnhancements"],
        listingActivity: json["listingActivity"],
        productType: json["productType"],
        propertyStatus: json["propertyStatus"],
        listingId: json["listingId"],
        rentalDataSource: json["rentalDataSource"],
        communityId: json["communityId"],
        mprId: json["mprId"],
        listingMls: json["listingMls"],
        planId: json["planId"],
        subId: json["subId"],
        city: json["city"],
        neighborhood: json["neighborhood"],
        state: json["state"],
        zip: json["zip"],
        listingBaths: json["listingBaths"],
        listingBeds: json["listingBeds"],
        listingSqFt: json["listingSqFt"],
        listingEnhancements: json["listingEnhancements"],
        listingPrice: json["listingPrice"],
       // photoCount: json["photoCount"],
        propertyType: json["propertyType"],
        version: json["version"],
      );

  Map<String, dynamic> toJson() => {
        "ldpPropertyStatus": ldpPropertyStatus,
        "pageType": pageType,
        "leadDelivery": leadDelivery,
        "leadEnhancements": leadEnhancements,
        "listingActivity": listingActivity,
        "productType": productType,
        "propertyStatus": propertyStatus,
        "listingId": listingId,
        "rentalDataSource": rentalDataSource,
        "communityId": communityId,
        "mprId": mprId,
        "listingMls": listingMls,
        "planId": planId,
        "subId": subId,
        "city": city,
        "neighborhood": neighborhood,
        "state": state,
        "zip": zip,
        "listingBaths": listingBaths,
        "listingBeds": listingBeds,
        "listingSqFt": listingSqFt,
        "listingEnhancements": listingEnhancements,
        "listingPrice": listingPrice,
        //"photoCount": photoCount,
        "propertyType": propertyType,
        "version": version,
      };
}

class Propertydata {
  Propertydata({
    this.propertyId,
    // this.listingId,
    // this.propType,
    this.virtualTour,
    // this.listDate,
    // this.lastUpdate,
    // this.yearBuilt,
    // this.listingStatus,
    // this.beds,
    this.description,
    // this.building,
    // this.buildingHref,
    // this.branding,
    // this.propStatus,
    this.address,
    this.features,
    // this.clientDisplayFlags,
    // this.products,
    this.management,
     this.office,
    // this.leadForms,
    // this.lotSize,
    // this.buildingSize,
    // this.rdcWebUrl,
    // this.rdcAppUrl, 
    // this.photoAttribution,
    // this.mortgage,
    this.community,
    //this.floorPlans,
    // this.dataSourceName,
    // this.source,
    // this.detailTracking,
    // this.leaseTerms,
    // this.photoCount,
     this.photos,
     this.schools,
  });

  String propertyId;
  // String listingId;
  // String propType;
  VirtualTour virtualTour;
  // DateTime listDate;
  // DateTime lastUpdate;
  // int yearBuilt;
  // String listingStatus;
  // int beds;
  String description;
  // Building building;
  // String buildingHref;
  // Branding branding;
  // String propStatus;
  Address address;
  List<Feature> features;
  // ClientDisplayFlags clientDisplayFlags;
  // List<String> products;
  Management management;
   Management office;
  // LeadForms leadForms;
  // LotSize lotSize;
  // BuildingSize buildingSize;
  // String rdcWebUrl;
  // String rdcAppUrl;
  // List<String> photoAttribution;
  // Mortgage mortgage;
  Community community;
  //List<FloorPlan> floorPlans;
  // String dataSourceName;
  // String source;
  // String detailTracking;
  // String leaseTerms;
  // int photoCount;
   List<Photo> photos;
   List<School> schools;

  factory Propertydata.fromJson(Map<String, dynamic> json) => Propertydata(
        propertyId: json["property_id"],
        // listingId: json["listing_id"],
        // propType: json["prop_type"],
        virtualTour: VirtualTour.fromJson(json["virtual_tour"]),
        // listDate: DateTime.parse(json["list_date"]),
        // lastUpdate: DateTime.parse(json["last_update"]),
        // yearBuilt: json["year_built"],
        // listingStatus: json["listing_status"],
        // beds: json["beds"],
        description: json["description"],
        // building: Building.fromJson(json["building"]),
        // buildingHref: json["building_href"],
        // branding: Branding.fromJson(json["branding"]),
        // propStatus: json["prop_status"],
        address: Address.fromJson(json["address"]),
        features: List<Feature>.from(
            json["features"].map((x) => Feature.fromJson(x))),
        // clientDisplayFlags: ClientDisplayFlags.fromJson(json["client_display_flags"]),
        // products: List<String>.from(json["products"].map((x) => x)),
        management: Management.fromJson(json["management"]),
         office: Management.fromJson(json["office"]),
        // leadForms: LeadForms.fromJson(json["lead_forms"]),
        // lotSize: LotSize.fromJson(json["lot_size"]),
        // buildingSize: BuildingSize.fromJson(json["building_size"]),
        // rdcWebUrl: json["rdc_web_url"],
        // rdcAppUrl: json["rdc_app_url"],
        // photoAttribution: List<String>.from(json["photo_attribution"].map((x) => x)),
        // mortgage: Mortgage.fromJson(json["mortgage"]),
        community: Community.fromJson(json["community"]),
        //floorPlans: List<FloorPlan>.from(
        //json["floor_plans"].map((x) => FloorPlan.fromJson(x))),
        // dataSourceName: json["data_source_name"],
        // source: json["source"],
        // detailTracking: json["detail_tracking"],
        // leaseTerms: json["lease_terms"],
        // photoCount: json["photo_count"],
         photos: List<Photo>.from(json["photos"].map((x) => Photo.fromJson(x))),
         schools: List<School>.from(json["schools"].map((x) => School.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "property_id": propertyId,
        // "listing_id": listingId,
        // "prop_type": propType,
        // "virtual_tour": virtualTour.toJson(),
        // "list_date": listDate.toIso8601String(),
        // "last_update": lastUpdate.toIso8601String(),
        // "year_built": yearBuilt,
        // "listing_status": listingStatus,
        // "beds": beds,
        "description": description,
        // "building": building.toJson(),
        // "building_href": buildingHref,
        // "branding": branding.toJson(),
        // "prop_status": propStatus,
        // "address": address.toJson(),
        "features": List<dynamic>.from(features.map((x) => x.toJson())),
        // "client_display_flags": clientDisplayFlags.toJson(),
        // "products": List<dynamic>.from(products.map((x) => x)),
        "management": management.toJson(),
         "office": office.toJson(),
        // "lead_forms": leadForms.toJson(),
        // "lot_size": lotSize.toJson(),
        // "building_size": buildingSize.toJson(),
        // "rdc_web_url": rdcWebUrl,
        // "rdc_app_url": rdcAppUrl,
        // "photo_attribution": List<dynamic>.from(photoAttribution.map((x) => x)),
        // "mortgage": mortgage.toJson(),
        "community": community.toJson(),
        //"floor_plans": List<dynamic>.from(floorPlans.map((x) => x.toJson())),
        // "data_source_name": dataSourceName,
        // "source": source,
        // "detail_tracking": detailTracking,
        // "lease_terms": leaseTerms,
        // "photo_count": photoCount,
        "photos": List<dynamic>.from(photos.map((x) => x.toJson())),
         "schools": List<dynamic>.from(schools.map((x) => x.toJson())),
      };
}

class Address {
  Address({
    this.city,
    this.country,
    this.county,
    this.countyNeededForUniq,
    this.lat,
    this.line,
    this.postalCode,
    this.stateCode,
    this.state,
    this.timeZone,
    this.neighborhoodName,
    this.neighborhoods,
    this.lon,
  });

  String city;
  String country;
  String county;
  bool countyNeededForUniq;
  double lat;
  String line;
  String postalCode;
  String stateCode;
  String state;
  String timeZone;
  String neighborhoodName;
  List<Neighborhood> neighborhoods;
  double lon;

  factory Address.fromJson(Map<String, dynamic> json) => Address(
        city: json["city"],
        country: json["country"],
        county: json["county"],
        countyNeededForUniq: json["county_needed_for_uniq"],
        lat: json["lat"].toDouble(),
        line: json["line"],
        postalCode: json["postal_code"],
        stateCode: json["state_code"],
        state: json["state"],
        timeZone: json["time_zone"],
        neighborhoodName: json["neighborhood_name"],
        neighborhoods: List<Neighborhood>.from(
            json["neighborhoods"].map((x) => Neighborhood.fromJson(x))),
        lon: json["lon"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "city": city,
        "country": country,
        "county": county,
        "county_needed_for_uniq": countyNeededForUniq,
        "lat": lat,
        "line": line,
        "postal_code": postalCode,
        "state_code": stateCode,
        "state": state,
        "time_zone": timeZone,
        "neighborhood_name": neighborhoodName,
        "neighborhoods":
            List<dynamic>.from(neighborhoods.map((x) => x.toJson())),
        "lon": lon,
      };
}

class Neighborhood {
  Neighborhood({
    this.id,
    this.level,
    this.name,
  });

  String id;
  String level;
  String name;

  factory Neighborhood.fromJson(Map<String, dynamic> json) => Neighborhood(
        id: json["id"],
        level: json["level"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "level": level,
        "name": name,
      };
}

class Branding {
  Branding({
    this.stateLicense,
  });

  dynamic stateLicense;

  factory Branding.fromJson(Map<String, dynamic> json) => Branding(
        stateLicense: json["state_license"],
      );

  Map<String, dynamic> toJson() => {
        "state_license": stateLicense,
      };
}

class Building {
  Building({
    this.id,
    this.permalink,
  });

  int id;
  String permalink;

  factory Building.fromJson(Map<String, dynamic> json) => Building(
        id: json["id"],
        permalink: json["permalink"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "permalink": permalink,
      };
}

class BuildingSize {
  BuildingSize({
    this.units,
  });

  String units;

  factory BuildingSize.fromJson(Map<String, dynamic> json) => BuildingSize(
        units: json["units"],
      );

  Map<String, dynamic> toJson() => {
        "units": units,
      };
}

class ClientDisplayFlags {
  ClientDisplayFlags({
    this.presentationStatus,
    this.isShowcase,
    this.leadFormPhoneRequired,
    this.priceChange,
    this.hasSpecials,
    this.isMlsRental,
    this.isRentalCommunity,
    this.isRentalUnit,
    this.isCoStar,
    this.isApartmentlist,
    this.suppressMapPin,
    this.suppressPhoneCallLeadEvent,
    this.priceReduced,
    this.allowsCats,
    this.allowsDogs,
    this.allowsDogsLarge,
  });

  String presentationStatus;
  bool isShowcase;
  bool leadFormPhoneRequired;
  int priceChange;
  bool hasSpecials;
  bool isMlsRental;
  bool isRentalCommunity;
  bool isRentalUnit;
  bool isCoStar;
  bool isApartmentlist;
  bool suppressMapPin;
  bool suppressPhoneCallLeadEvent;
  bool priceReduced;
  bool allowsCats;
  bool allowsDogs;
  bool allowsDogsLarge;

  factory ClientDisplayFlags.fromJson(Map<String, dynamic> json) =>
      ClientDisplayFlags(
        presentationStatus: json["presentation_status"],
        isShowcase: json["is_showcase"],
        leadFormPhoneRequired: json["lead_form_phone_required"],
        priceChange: json["price_change"],
        hasSpecials: json["has_specials"],
        isMlsRental: json["is_mls_rental"],
        isRentalCommunity: json["is_rental_community"],
        isRentalUnit: json["is_rental_unit"],
        isCoStar: json["is_co_star"],
        isApartmentlist: json["is_apartmentlist"],
        suppressMapPin: json["suppress_map_pin"],
        suppressPhoneCallLeadEvent: json["suppress_phone_call_lead_event"],
        priceReduced: json["price_reduced"],
        allowsCats: json["allows_cats"],
        allowsDogs: json["allows_dogs"],
        allowsDogsLarge: json["allows_dogs_large"],
      );

  Map<String, dynamic> toJson() => {
        "presentation_status": presentationStatus,
        "is_showcase": isShowcase,
        "lead_form_phone_required": leadFormPhoneRequired,
        "price_change": priceChange,
        "has_specials": hasSpecials,
        "is_mls_rental": isMlsRental,
        "is_rental_community": isRentalCommunity,
        "is_rental_unit": isRentalUnit,
        "is_co_star": isCoStar,
        "is_apartmentlist": isApartmentlist,
        "suppress_map_pin": suppressMapPin,
        "suppress_phone_call_lead_event": suppressPhoneCallLeadEvent,
        "price_reduced": priceReduced,
        "allows_cats": allowsCats,
        "allows_dogs": allowsDogs,
        "allows_dogs_large": allowsDogsLarge,
      };
}

class Community {
  Community({
    this.bathsMax,
    this.bathsMin,
    this.bedsMax,
    this.bedsMin,
    this.contactNumber,
    this.floorPlanCount,
    this.id,
    this.name,
    this.priceMax,
    this.priceMin,
    this.sourceId,
    this.sqftMax,
    this.sqftMin,
    this.sqftHint,
    this.unitCount,
  });

  int bathsMax;
  int bathsMin;
  int bedsMax;
  int bedsMin;
  String contactNumber;
  int floorPlanCount;
  int id;
  String name;
  int priceMax;
  int priceMin;
  String sourceId;
  dynamic sqftMax;
  dynamic sqftMin;
  String sqftHint;
  int unitCount;

  factory Community.fromJson(Map<String, dynamic> json) => Community(
        bathsMax: json["baths_max"],
        bathsMin: json["baths_min"],
        bedsMax: json["beds_max"],
        bedsMin: json["beds_min"],
        contactNumber: json["contact_number"],
        floorPlanCount: json["floor_plan_count"],
        id: json["id"],
        name: json["name"],
        priceMax: json["price_max"],
        priceMin: json["price_min"],
        sourceId: json["source_id"],
        sqftMax: json["sqft_max"],
        sqftMin: json["sqft_min"],
        sqftHint: json["sqft_hint"],
        unitCount: json["unit_count"],
      );

  Map<String, dynamic> toJson() => {
        "baths_max": bathsMax,
        "baths_min": bathsMin,
        "beds_max": bedsMax,
        "beds_min": bedsMin,
        "contact_number": contactNumber,
        "floor_plan_count": floorPlanCount,
        "id": id,
        "name": name,
        "price_max": priceMax,
        "price_min": priceMin,
        "source_id": sourceId,
        "sqft_max": sqftMax,
        "sqft_min": sqftMin,
        "sqft_hint": sqftHint,
        "unit_count": unitCount,
      };
}

class Feature {
  Feature({
    this.category,
    this.text,
    this.parentCategory,
  });

  String category;
  List<String> text;
  String parentCategory;

  factory Feature.fromJson(Map<String, dynamic> json) => Feature(
        category: json["category"],
        text: List<String>.from(json["text"].map((x) => x)),
        parentCategory: json["parent_category"],
      );

  Map<String, dynamic> toJson() => {
        "category": category,
        "text": List<dynamic>.from(text.map((x) => x)),
        "parent_category": parentCategory,
      };
}

class FloorPlan {
  FloorPlan({
    this.availability,
    this.baths,
    this.bathsHalf,
    this.beds,
    this.depositHint,
    this.id,
    this.name,
    this.photo,
    this.photoCount,
    this.price,
    this.sqft,
    this.type,
  });

  Availability availability;
  int baths;
  int bathsHalf;
  int beds;
  String depositHint;
  int id;
  String name;
  Photo photo;
  int photoCount;
  int price;
  int sqft;
  dynamic type;

  factory FloorPlan.fromJson(Map<String, dynamic> json) => FloorPlan(
        availability: Availability.fromJson(json["availability"]) == null
            ? ""
            : Availability.fromJson(json["availability"]),
        baths: json["baths"],
        bathsHalf: json["baths_half"],
        beds: json["beds"],
        depositHint: json["deposit_hint"],
        id: json["id"],
        name: json["name"],
        photo: Photo.fromJson(json["photo"]) == null
            ? ""
            : Photo.fromJson(json["photo"]),
        photoCount: json["photo_count"],
        price: json["price"],
        sqft: json["sqft"],
        type: json["type"],
      );

  Map<String, dynamic> toJson() => {
        "availability": availability.toJson(),
        "baths": baths,
        "baths_half": bathsHalf,
        "beds": beds,
        "deposit_hint": depositHint,
        "id": id,
        "name": name,
        "photo": photo.toJson(),
        "photo_count": photoCount,
        "price": price,
        "sqft": sqft,
        "type": type,
      };
}

class Availability {
  Availability({
    this.available,
    this.date,
    this.href,
    this.text,
    this.status,
  });

  dynamic available;
  DateTime date;
  dynamic href;
  String text;
  dynamic status;

  factory Availability.fromJson(Map<String, dynamic> json) => Availability(
        available: json["available"],
        date: DateTime.parse(json["date"]),
        href: json["href"],
        text: json["text"],
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "available": available,
        "date":
            "${date.year.toString().padLeft(4, '0')}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}",
        "href": href,
        "text": text,
        "status": status,
      };
}

class Photo {
  Photo({
    this.href,
  });

  String href;

  factory Photo.fromJson(Map<String, dynamic> json) => Photo(
        href: json["href"] == null ? "" : json["href"],
      );

  Map<String, dynamic> toJson() => {
        "href": href == "" ? null : href,
      };
}

class LeadForms {
  LeadForms({
    this.form,
    this.showAgent,
    this.showBroker,
    this.showProvider,
    this.showManagement,
  });

  Form form;
  bool showAgent;
  bool showBroker;
  bool showProvider;
  bool showManagement;

  factory LeadForms.fromJson(Map<String, dynamic> json) => LeadForms(
        form: Form.fromJson(json["form"]),
        showAgent: json["show_agent"],
        showBroker: json["show_broker"],
        showProvider: json["show_provider"],
        showManagement: json["show_management"],
      );

  Map<String, dynamic> toJson() => {
        "form": form.toJson(),
        "show_agent": showAgent,
        "show_broker": showBroker,
        "show_provider": showProvider,
        "show_management": showManagement,
      };
}

class Form {
  Form({
    this.name,
    this.email,
    this.moveInDate,
    this.phone,
    this.message,
    this.show,
  });

  Email name;
  Email email;
  MoveInDate moveInDate;
  FormPhone phone;
  Email message;
  bool show;

  factory Form.fromJson(Map<String, dynamic> json) => Form(
        name: Email.fromJson(json["name"]),
        email: Email.fromJson(json["email"]),
        moveInDate: MoveInDate.fromJson(json["move_in_date"]),
        phone: FormPhone.fromJson(json["phone"]),
        message: Email.fromJson(json["message"]),
        show: json["show"],
      );

  Map<String, dynamic> toJson() => {
        "name": name.toJson(),
        "email": email.toJson(),
        "move_in_date": moveInDate.toJson(),
        "phone": phone.toJson(),
        "message": message.toJson(),
        "show": show,
      };
}

class Email {
  Email({
    this.required,
    this.minimumCharacterCount,
  });

  bool required;
  int minimumCharacterCount;

  factory Email.fromJson(Map<String, dynamic> json) => Email(
        required: json["required"],
        minimumCharacterCount: json["minimum_character_count"],
      );

  Map<String, dynamic> toJson() => {
        "required": required,
        "minimum_character_count": minimumCharacterCount,
      };
}

class MoveInDate {
  MoveInDate({
    this.required,
    this.defaultDate,
    this.minimumDaysFromToday,
    this.maximumDaysFromToday,
  });

  bool required;
  DateTime defaultDate;
  int minimumDaysFromToday;
  int maximumDaysFromToday;

  factory MoveInDate.fromJson(Map<String, dynamic> json) => MoveInDate(
        required: json["required"],
        defaultDate: DateTime.parse(json["default_date"]),
        minimumDaysFromToday: json["minimum_days_from_today"],
        maximumDaysFromToday: json["maximum_days_from_today"],
      );

  Map<String, dynamic> toJson() => {
        "required": required,
        "default_date": defaultDate.toIso8601String(),
        "minimum_days_from_today": minimumDaysFromToday,
        "maximum_days_from_today": maximumDaysFromToday,
      };
}

class FormPhone {
  FormPhone({
    this.required,
    this.minimumCharacterCount,
    this.maximumCharacterCount,
  });

  bool required;
  int minimumCharacterCount;
  int maximumCharacterCount;

  factory FormPhone.fromJson(Map<String, dynamic> json) => FormPhone(
        required: json["required"],
        minimumCharacterCount: json["minimum_character_count"],
        maximumCharacterCount: json["maximum_character_count"],
      );

  Map<String, dynamic> toJson() => {
        "required": required,
        "minimum_character_count": minimumCharacterCount,
        "maximum_character_count": maximumCharacterCount,
      };
}

class LotSize {
  LotSize({
    this.size,
    this.units,
  });

  int size;
  String units;

  factory LotSize.fromJson(Map<String, dynamic> json) => LotSize(
        size: json["size"],
        units: json["units"],
      );

  Map<String, dynamic> toJson() => {
        "size": size,
        "units": units,
      };
}

class Management {
  Management({
    this.email,
    this.id,
    this.name,
    this.type,
    this.stateLicense,
    this.phones,
    this.hours,
  });

  String email;
  String id;
  String name;
  String type;
  dynamic stateLicense;
  List<PhoneElement> phones;
  List<Hour> hours;

  factory Management.fromJson(Map<String, dynamic> json) => Management(
        email: json["email"] == null ? null : json["email"],
        id: json["id"],
        name: json["name"],
        type: json["type"],
        stateLicense: json["state_license"],
        phones: List<PhoneElement>.from(
            json["phones"].map((x) => PhoneElement.fromJson(x))),
        hours: json["hours"] == null
            ? null
            : List<Hour>.from(json["hours"].map((x) => Hour.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "email": email == null ? null : email,
        "id": id,
        "name": name,
        "type": type,
        "state_license": stateLicense,
        "phones": List<dynamic>.from(phones.map((x) => x.toJson())),
        "hours": hours == null
            ? null
            : List<dynamic>.from(hours.map((x) => x.toJson())),
      };
}

class Hour {
  Hour({
    this.day,
    this.startTime,
    this.endTime,
  });

  List<String> day;
  String startTime;
  String endTime;

  factory Hour.fromJson(Map<String, dynamic> json) => Hour(
        day: List<String>.from(json["day"].map((x) => x)).toList(),
        startTime: json["start_time"] == null ? null : json["start_time"],
        endTime: json["end_time"] == null ? null : json["end_time"],
      );

  Map<String, dynamic> toJson() => {
        "day": List<dynamic>.from(day.map((x) => x)),
        "start_time": startTime == null ? null : startTime,
        "end_time": endTime == null ? null : endTime,
      };
}

class PhoneElement {
  PhoneElement({
    this.number,
    this.type,
    this.primary,
  });

  String number;
  String type;
  bool primary;

  factory PhoneElement.fromJson(Map<String, dynamic> json) => PhoneElement(
        number: json["number"],
        type: json["type"],
        primary: json["primary"],
      );

  Map<String, dynamic> toJson() => {
        "number": number,
        "type": type,
        "primary": primary,
      };
}

class Mortgage {
  Mortgage({
    this.ratesUrl,
  });

  String ratesUrl;

  factory Mortgage.fromJson(Map<String, dynamic> json) => Mortgage(
        ratesUrl: json["rates_url"],
      );

  Map<String, dynamic> toJson() => {
        "rates_url": ratesUrl,
      };
}

class School {
  School({
    this.ncesId,
    this.id,
    this.greatschoolsId,
    this.name,
    this.educationLevels,
    this.fundingType,
    this.lat,
    this.lon,
    this.studentCount,
    this.studentTeacherRatio,
    this.location,
    this.phone,
    this.distanceInMiles,
    this.grades,
    this.relevance,
    this.ratings,
  });

  String ncesId;
  String id;
  String greatschoolsId;
  String name;
  List<EducationLevel> educationLevels;
  String fundingType;
  double lat;
  double lon;
  int studentCount;
  double studentTeacherRatio;
  Location location;
  String phone;
  double distanceInMiles;
  Grades grades;
  String relevance;
  Ratings ratings;

  factory School.fromJson(Map<String, dynamic> json) => School(
        ncesId: json["nces_id"],
        id: json["id"],
        greatschoolsId: json["greatschools_id"],
        name: json["name"],
        educationLevels: List<EducationLevel>.from(
            json["education_levels"].map((x) => educationLevelValues.map[x])),
        fundingType: json["funding_type"],
        lat: json["lat"].toDouble(),
        lon: json["lon"].toDouble(),
        studentCount: json["student_count"],
        studentTeacherRatio: json["student_teacher_ratio"] == null
            ? null
            : json["student_teacher_ratio"].toDouble(),
        location: Location.fromJson(json["location"]),
        phone: json["phone"],
        distanceInMiles: json["distance_in_miles"].toDouble(),
        grades: Grades.fromJson(json["grades"]),
        relevance: json["relevance"],
        ratings: Ratings.fromJson(json["ratings"]),
      );

  Map<String, dynamic> toJson() => {
        "nces_id": ncesId,
        "id": id,
        "greatschools_id": greatschoolsId,
        "name": name,
        "education_levels": List<dynamic>.from(
            educationLevels.map((x) => educationLevelValues.reverse[x])),
        "funding_type": fundingType,
        "lat": lat,
        "lon": lon,
        "student_count": studentCount,
        "student_teacher_ratio":
            studentTeacherRatio == null ? null : studentTeacherRatio,
        "location": location.toJson(),
        "phone": phone,
        "distance_in_miles": distanceInMiles,
        "grades": grades.toJson(),
        "relevance": relevance,
        "ratings": ratings.toJson(),
      };
}

enum EducationLevel { ELEMENTARY, MIDDLE, HIGH }

final educationLevelValues = EnumValues({
  "elementary": EducationLevel.ELEMENTARY,
  "high": EducationLevel.HIGH,
  "middle": EducationLevel.MIDDLE
});

class Grades {
  Grades({
    this.range,
  });

  Range range;

  factory Grades.fromJson(Map<String, dynamic> json) => Grades(
        range: Range.fromJson(json["range"]),
      );

  Map<String, dynamic> toJson() => {
        "range": range.toJson(),
      };
}

class Range {
  Range({
    this.low,
    this.high,
  });

  String low;
  String high;

  factory Range.fromJson(Map<String, dynamic> json) => Range(
        low: json["low"],
        high: json["high"],
      );

  Map<String, dynamic> toJson() => {
        "low": low,
        "high": high,
      };
}

class Location {
  Location({
    this.citySlugId,
    this.postalCode,
    this.state,
    this.county,
    this.city,
    this.street,
  });

  String citySlugId;
  String postalCode;
  String state;
  String county;
  String city;
  String street;

  factory Location.fromJson(Map<String, dynamic> json) => Location(
        citySlugId: json["city_slug_id"],
        postalCode: json["postal_code"],
        state: json["state"],
        county: json["county"],
        city: json["city"],
        street: json["street"],
      );

  Map<String, dynamic> toJson() => {
        "city_slug_id": citySlugId,
        "postal_code": postalCode,
        "state": state,
        "county": county,
        "city": city,
        "street": street,
      };
}

class Ratings {
  Ratings({
    this.greatSchoolsRating,
    this.parentRating,
  });

  int greatSchoolsRating;
  int parentRating;

  factory Ratings.fromJson(Map<String, dynamic> json) => Ratings(
        greatSchoolsRating: json["great_schools_rating"] == null
            ? null
            : json["great_schools_rating"],
        parentRating:
            json["parent_rating"] == null ? null : json["parent_rating"],
      );

  Map<String, dynamic> toJson() => {
        "great_schools_rating":
            greatSchoolsRating == null ? null : greatSchoolsRating,
        "parent_rating": parentRating == null ? null : parentRating,
      };
}

class VirtualTour {
  VirtualTour({
    this.count,
    this.href,
  });

  int count;
  String href;

  factory VirtualTour.fromJson(Map<String, dynamic> json) => VirtualTour(
        count: json["count"],
        href: json["href"] == null ? null : json["href"],
      );

  Map<String, dynamic> toJson() => {
        "count": count,
        "href": href == null ? null : href,
      };
}

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
