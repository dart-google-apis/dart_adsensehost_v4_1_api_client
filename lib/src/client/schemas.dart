part of adsensehost_v4_1_api_client;

class Account {

  /** Unique identifier of this account. */
  core.String id;

  /** Kind of resource this is, in this case adsensehost#account. */
  core.String kind;

  /** Name of this account. */
  core.String name;

  /** Approval status of this account. One of: PENDING, APPROVED, DISABLED. */
  core.String status;

  /** Create new Account from JSON data */
  Account.fromJson(core.Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("status")) {
      status = json["status"];
    }
  }

  /** Create JSON Object for Account */
  core.Map toJson() {
    var output = new core.Map();

    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (status != null) {
      output["status"] = status;
    }

    return output;
  }

  /** Return String representation of Account */
  core.String toString() => JSON.stringify(this.toJson());

}

class Accounts {

  /** ETag of this response for caching purposes. */
  core.String etag;

  /** The accounts returned in this list response. */
  core.List<Account> items;

  /** Kind of list this is, in this case adsensehost#accounts. */
  core.String kind;

  /** Create new Accounts from JSON data */
  Accounts.fromJson(core.Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new Account.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for Accounts */
  core.Map toJson() {
    var output = new core.Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (items != null) {
      output["items"] = new core.List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of Accounts */
  core.String toString() => JSON.stringify(this.toJson());

}

class AdClient {

  /** Whether this ad client is opted in to ARC. */
  core.bool arcOptIn;

  /** Unique identifier of this ad client. */
  core.String id;

  /** Kind of resource this is, in this case adsensehost#adClient. */
  core.String kind;

  /** This ad client's product code, which corresponds to the PRODUCT_CODE report dimension. */
  core.String productCode;

  /** Whether this ad client supports being reported on. */
  core.bool supportsReporting;

  /** Create new AdClient from JSON data */
  AdClient.fromJson(core.Map json) {
    if (json.containsKey("arcOptIn")) {
      arcOptIn = json["arcOptIn"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("productCode")) {
      productCode = json["productCode"];
    }
    if (json.containsKey("supportsReporting")) {
      supportsReporting = json["supportsReporting"];
    }
  }

  /** Create JSON Object for AdClient */
  core.Map toJson() {
    var output = new core.Map();

    if (arcOptIn != null) {
      output["arcOptIn"] = arcOptIn;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (productCode != null) {
      output["productCode"] = productCode;
    }
    if (supportsReporting != null) {
      output["supportsReporting"] = supportsReporting;
    }

    return output;
  }

  /** Return String representation of AdClient */
  core.String toString() => JSON.stringify(this.toJson());

}

class AdClients {

  /** ETag of this response for caching purposes. */
  core.String etag;

  /** The ad clients returned in this list response. */
  core.List<AdClient> items;

  /** Kind of list this is, in this case adsensehost#adClients. */
  core.String kind;

  /** Continuation token used to page through ad clients. To retrieve the next page of results, set the next request's "pageToken" value to this. */
  core.String nextPageToken;

  /** Create new AdClients from JSON data */
  AdClients.fromJson(core.Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new AdClient.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for AdClients */
  core.Map toJson() {
    var output = new core.Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (items != null) {
      output["items"] = new core.List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }

    return output;
  }

  /** Return String representation of AdClients */
  core.String toString() => JSON.stringify(this.toJson());

}

class AdCode {

  /** The ad code snippet. */
  core.String adCode;

  /** Kind this is, in this case adsensehost#adCode. */
  core.String kind;

  /** Create new AdCode from JSON data */
  AdCode.fromJson(core.Map json) {
    if (json.containsKey("adCode")) {
      adCode = json["adCode"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for AdCode */
  core.Map toJson() {
    var output = new core.Map();

    if (adCode != null) {
      output["adCode"] = adCode;
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of AdCode */
  core.String toString() => JSON.stringify(this.toJson());

}

class AdStyle {

  /** The colors included in the style. These are represented as six hexadecimal characters, similar to HTML color codes, but without the leading hash. */
  AdStyleColors colors;

  /** The style of the corners in the ad. Possible values are SQUARE, SLIGHTLY_ROUNDED and VERY_ROUNDED. */
  core.String corners;

  /** The font which is included in the style. */
  AdStyleFont font;

  /** Kind this is, in this case adsensehost#adStyle. */
  core.String kind;

  /** Create new AdStyle from JSON data */
  AdStyle.fromJson(core.Map json) {
    if (json.containsKey("colors")) {
      colors = new AdStyleColors.fromJson(json["colors"]);
    }
    if (json.containsKey("corners")) {
      corners = json["corners"];
    }
    if (json.containsKey("font")) {
      font = new AdStyleFont.fromJson(json["font"]);
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for AdStyle */
  core.Map toJson() {
    var output = new core.Map();

    if (colors != null) {
      output["colors"] = colors.toJson();
    }
    if (corners != null) {
      output["corners"] = corners;
    }
    if (font != null) {
      output["font"] = font.toJson();
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of AdStyle */
  core.String toString() => JSON.stringify(this.toJson());

}

/** The font which is included in the style. */
class AdStyleFont {

  /** The family of the font. Possible values are: ACCOUNT_DEFAULT_FAMILY, ADSENSE_DEFAULT_FAMILY, ARIAL, TIMES and VERDANA. */
  core.String family;

  /** The size of the font. Possible values are: ACCOUNT_DEFAULT_SIZE, ADSENSE_DEFAULT_SIZE, SMALL, MEDIUM and LARGE. */
  core.String size;

  /** Create new AdStyleFont from JSON data */
  AdStyleFont.fromJson(core.Map json) {
    if (json.containsKey("family")) {
      family = json["family"];
    }
    if (json.containsKey("size")) {
      size = json["size"];
    }
  }

  /** Create JSON Object for AdStyleFont */
  core.Map toJson() {
    var output = new core.Map();

    if (family != null) {
      output["family"] = family;
    }
    if (size != null) {
      output["size"] = size;
    }

    return output;
  }

  /** Return String representation of AdStyleFont */
  core.String toString() => JSON.stringify(this.toJson());

}

/** The colors included in the style. These are represented as six hexadecimal characters, similar to HTML color codes, but without the leading hash. */
class AdStyleColors {

  /** The color of the ad background. */
  core.String background;

  /** The color of the ad border. */
  core.String border;

  /** The color of the ad text. */
  core.String text;

  /** The color of the ad title. */
  core.String title;

  /** The color of the ad url. */
  core.String url;

  /** Create new AdStyleColors from JSON data */
  AdStyleColors.fromJson(core.Map json) {
    if (json.containsKey("background")) {
      background = json["background"];
    }
    if (json.containsKey("border")) {
      border = json["border"];
    }
    if (json.containsKey("text")) {
      text = json["text"];
    }
    if (json.containsKey("title")) {
      title = json["title"];
    }
    if (json.containsKey("url")) {
      url = json["url"];
    }
  }

  /** Create JSON Object for AdStyleColors */
  core.Map toJson() {
    var output = new core.Map();

    if (background != null) {
      output["background"] = background;
    }
    if (border != null) {
      output["border"] = border;
    }
    if (text != null) {
      output["text"] = text;
    }
    if (title != null) {
      output["title"] = title;
    }
    if (url != null) {
      output["url"] = url;
    }

    return output;
  }

  /** Return String representation of AdStyleColors */
  core.String toString() => JSON.stringify(this.toJson());

}

class AdUnit {

  /** Identity code of this ad unit, not necessarily unique across ad clients. */
  core.String code;

  /** Settings specific to content ads (AFC) and highend mobile content ads (AFMC). */
  AdUnitContentAdsSettings contentAdsSettings;

  /** Custom style information specific to this ad unit. */
  AdStyle customStyle;

  /** Unique identifier of this ad unit. This should be considered an opaque identifier; it is not safe to rely on it being in any particular format. */
  core.String id;

  /** Kind of resource this is, in this case adsensehost#adUnit. */
  core.String kind;

  /** Settings specific to WAP mobile content ads (AFMC). */
  AdUnitMobileContentAdsSettings mobileContentAdsSettings;

  /** Name of this ad unit. */
  core.String name;

  /** Status of this ad unit. Possible values are:
NEW: Indicates that the ad unit was created within the last seven days and does not yet have any activity associated with it.

ACTIVE: Indicates that there has been activity on this ad unit in the last seven days.

INACTIVE: Indicates that there has been no activity on this ad unit in the last seven days. */
  core.String status;

  /** Create new AdUnit from JSON data */
  AdUnit.fromJson(core.Map json) {
    if (json.containsKey("code")) {
      code = json["code"];
    }
    if (json.containsKey("contentAdsSettings")) {
      contentAdsSettings = new AdUnitContentAdsSettings.fromJson(json["contentAdsSettings"]);
    }
    if (json.containsKey("customStyle")) {
      customStyle = new AdStyle.fromJson(json["customStyle"]);
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("mobileContentAdsSettings")) {
      mobileContentAdsSettings = new AdUnitMobileContentAdsSettings.fromJson(json["mobileContentAdsSettings"]);
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("status")) {
      status = json["status"];
    }
  }

  /** Create JSON Object for AdUnit */
  core.Map toJson() {
    var output = new core.Map();

    if (code != null) {
      output["code"] = code;
    }
    if (contentAdsSettings != null) {
      output["contentAdsSettings"] = contentAdsSettings.toJson();
    }
    if (customStyle != null) {
      output["customStyle"] = customStyle.toJson();
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (mobileContentAdsSettings != null) {
      output["mobileContentAdsSettings"] = mobileContentAdsSettings.toJson();
    }
    if (name != null) {
      output["name"] = name;
    }
    if (status != null) {
      output["status"] = status;
    }

    return output;
  }

  /** Return String representation of AdUnit */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Settings specific to content ads (AFC) and highend mobile content ads (AFMC). */
class AdUnitContentAdsSettings {

  /** The backup option to be used in instances where no ad is available. */
  AdUnitContentAdsSettingsBackupOption backupOption;

  /** Size of this ad unit. Size values are in the form SIZE_{width}_{height}. */
  core.String size;

  /** Type of this ad unit. Possible values are TEXT, TEXT_IMAGE, IMAGE and LINK. */
  core.String type;

  /** Create new AdUnitContentAdsSettings from JSON data */
  AdUnitContentAdsSettings.fromJson(core.Map json) {
    if (json.containsKey("backupOption")) {
      backupOption = new AdUnitContentAdsSettingsBackupOption.fromJson(json["backupOption"]);
    }
    if (json.containsKey("size")) {
      size = json["size"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for AdUnitContentAdsSettings */
  core.Map toJson() {
    var output = new core.Map();

    if (backupOption != null) {
      output["backupOption"] = backupOption.toJson();
    }
    if (size != null) {
      output["size"] = size;
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of AdUnitContentAdsSettings */
  core.String toString() => JSON.stringify(this.toJson());

}

/** The backup option to be used in instances where no ad is available. */
class AdUnitContentAdsSettingsBackupOption {

  /** Color to use when type is set to COLOR. These are represented as six hexadecimal characters, similar to HTML color codes, but without the leading hash. */
  core.String color;

  /** Type of the backup option. Possible values are BLANK, COLOR and URL. */
  core.String type;

  /** URL to use when type is set to URL. */
  core.String url;

  /** Create new AdUnitContentAdsSettingsBackupOption from JSON data */
  AdUnitContentAdsSettingsBackupOption.fromJson(core.Map json) {
    if (json.containsKey("color")) {
      color = json["color"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
    if (json.containsKey("url")) {
      url = json["url"];
    }
  }

  /** Create JSON Object for AdUnitContentAdsSettingsBackupOption */
  core.Map toJson() {
    var output = new core.Map();

    if (color != null) {
      output["color"] = color;
    }
    if (type != null) {
      output["type"] = type;
    }
    if (url != null) {
      output["url"] = url;
    }

    return output;
  }

  /** Return String representation of AdUnitContentAdsSettingsBackupOption */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Settings specific to WAP mobile content ads (AFMC). */
class AdUnitMobileContentAdsSettings {

  /** The markup language to use for this ad unit. */
  core.String markupLanguage;

  /** The scripting language to use for this ad unit. */
  core.String scriptingLanguage;

  /** Size of this ad unit. */
  core.String size;

  /** Type of this ad unit. */
  core.String type;

  /** Create new AdUnitMobileContentAdsSettings from JSON data */
  AdUnitMobileContentAdsSettings.fromJson(core.Map json) {
    if (json.containsKey("markupLanguage")) {
      markupLanguage = json["markupLanguage"];
    }
    if (json.containsKey("scriptingLanguage")) {
      scriptingLanguage = json["scriptingLanguage"];
    }
    if (json.containsKey("size")) {
      size = json["size"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for AdUnitMobileContentAdsSettings */
  core.Map toJson() {
    var output = new core.Map();

    if (markupLanguage != null) {
      output["markupLanguage"] = markupLanguage;
    }
    if (scriptingLanguage != null) {
      output["scriptingLanguage"] = scriptingLanguage;
    }
    if (size != null) {
      output["size"] = size;
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of AdUnitMobileContentAdsSettings */
  core.String toString() => JSON.stringify(this.toJson());

}

class AdUnits {

  /** ETag of this response for caching purposes. */
  core.String etag;

  /** The ad units returned in this list response. */
  core.List<AdUnit> items;

  /** Kind of list this is, in this case adsensehost#adUnits. */
  core.String kind;

  /** Continuation token used to page through ad units. To retrieve the next page of results, set the next request's "pageToken" value to this. */
  core.String nextPageToken;

  /** Create new AdUnits from JSON data */
  AdUnits.fromJson(core.Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new AdUnit.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for AdUnits */
  core.Map toJson() {
    var output = new core.Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (items != null) {
      output["items"] = new core.List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }

    return output;
  }

  /** Return String representation of AdUnits */
  core.String toString() => JSON.stringify(this.toJson());

}

class AssociationSession {

  /** Hosted account id of the associated publisher after association. Present if status is ACCEPTED. */
  core.String accountId;

  /** Unique identifier of this association session. */
  core.String id;

  /** Kind of resource this is, in this case adsensehost#associationSession. */
  core.String kind;

  /** The products to associate with the user. Options: AFC, AFF, AFS, AFMC */
  core.List<core.String> productCodes;

  /** Redirect URL of this association session. Used to redirect users into the AdSense association flow. */
  core.String redirectUrl;

  /** Status of the completed association, available once the association callback token has been verified. One of ACCEPTED, REJECTED, or ERROR. */
  core.String status;

  /** The preferred locale of the user themselves when going through the AdSense association flow. */
  core.String userLocale;

  /** The locale of the user's hosted website. */
  core.String websiteLocale;

  /** The URL of the user's hosted website. */
  core.String websiteUrl;

  /** Create new AssociationSession from JSON data */
  AssociationSession.fromJson(core.Map json) {
    if (json.containsKey("accountId")) {
      accountId = json["accountId"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("productCodes")) {
      productCodes = [];
      json["productCodes"].forEach((item) {
        productCodes.add(item);
      });
    }
    if (json.containsKey("redirectUrl")) {
      redirectUrl = json["redirectUrl"];
    }
    if (json.containsKey("status")) {
      status = json["status"];
    }
    if (json.containsKey("userLocale")) {
      userLocale = json["userLocale"];
    }
    if (json.containsKey("websiteLocale")) {
      websiteLocale = json["websiteLocale"];
    }
    if (json.containsKey("websiteUrl")) {
      websiteUrl = json["websiteUrl"];
    }
  }

  /** Create JSON Object for AssociationSession */
  core.Map toJson() {
    var output = new core.Map();

    if (accountId != null) {
      output["accountId"] = accountId;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (productCodes != null) {
      output["productCodes"] = new core.List();
      productCodes.forEach((item) {
        output["productCodes"].add(item);
      });
    }
    if (redirectUrl != null) {
      output["redirectUrl"] = redirectUrl;
    }
    if (status != null) {
      output["status"] = status;
    }
    if (userLocale != null) {
      output["userLocale"] = userLocale;
    }
    if (websiteLocale != null) {
      output["websiteLocale"] = websiteLocale;
    }
    if (websiteUrl != null) {
      output["websiteUrl"] = websiteUrl;
    }

    return output;
  }

  /** Return String representation of AssociationSession */
  core.String toString() => JSON.stringify(this.toJson());

}

class CustomChannel {

  /** Code of this custom channel, not necessarily unique across ad clients. */
  core.String code;

  /** Unique identifier of this custom channel. This should be considered an opaque identifier; it is not safe to rely on it being in any particular format. */
  core.String id;

  /** Kind of resource this is, in this case adsensehost#customChannel. */
  core.String kind;

  /** Name of this custom channel. */
  core.String name;

  /** Create new CustomChannel from JSON data */
  CustomChannel.fromJson(core.Map json) {
    if (json.containsKey("code")) {
      code = json["code"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
  }

  /** Create JSON Object for CustomChannel */
  core.Map toJson() {
    var output = new core.Map();

    if (code != null) {
      output["code"] = code;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (name != null) {
      output["name"] = name;
    }

    return output;
  }

  /** Return String representation of CustomChannel */
  core.String toString() => JSON.stringify(this.toJson());

}

class CustomChannels {

  /** ETag of this response for caching purposes. */
  core.String etag;

  /** The custom channels returned in this list response. */
  core.List<CustomChannel> items;

  /** Kind of list this is, in this case adsensehost#customChannels. */
  core.String kind;

  /** Continuation token used to page through custom channels. To retrieve the next page of results, set the next request's "pageToken" value to this. */
  core.String nextPageToken;

  /** Create new CustomChannels from JSON data */
  CustomChannels.fromJson(core.Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new CustomChannel.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for CustomChannels */
  core.Map toJson() {
    var output = new core.Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (items != null) {
      output["items"] = new core.List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }

    return output;
  }

  /** Return String representation of CustomChannels */
  core.String toString() => JSON.stringify(this.toJson());

}

class Report {

  /** The averages of the report. This is the same length as any other row in the report; cells corresponding to dimension columns are empty. */
  core.List<core.String> averages;

  /** The header information of the columns requested in the report. This is a list of headers; one for each dimension in the request, followed by one for each metric in the request. */
  core.List<ReportHeaders> headers;

  /** Kind this is, in this case adsensehost#report. */
  core.String kind;

  /** The total number of rows matched by the report request. Fewer rows may be returned in the response due to being limited by the row count requested or the report row limit. */
  core.int totalMatchedRows;

  /** The totals of the report. This is the same length as any other row in the report; cells corresponding to dimension columns are empty. */
  core.List<core.String> totals;

  /** Any warnings associated with generation of the report. */
  core.List<core.String> warnings;

  /** Create new Report from JSON data */
  Report.fromJson(core.Map json) {
    if (json.containsKey("averages")) {
      averages = [];
      json["averages"].forEach((item) {
        averages.add(item);
      });
    }
    if (json.containsKey("headers")) {
      headers = [];
      json["headers"].forEach((item) {
        headers.add(new ReportHeaders.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("totalMatchedRows")) {
      if(json["totalMatchedRows"] is core.String){
        totalMatchedRows = core.int.parse(json["totalMatchedRows"]);
      }else{
        totalMatchedRows = json["totalMatchedRows"];
      }
    }
    if (json.containsKey("totals")) {
      totals = [];
      json["totals"].forEach((item) {
        totals.add(item);
      });
    }
    if (json.containsKey("warnings")) {
      warnings = [];
      json["warnings"].forEach((item) {
        warnings.add(item);
      });
    }
  }

  /** Create JSON Object for Report */
  core.Map toJson() {
    var output = new core.Map();

    if (averages != null) {
      output["averages"] = new core.List();
      averages.forEach((item) {
        output["averages"].add(item);
      });
    }
    if (headers != null) {
      output["headers"] = new core.List();
      headers.forEach((item) {
        output["headers"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (totalMatchedRows != null) {
      output["totalMatchedRows"] = totalMatchedRows;
    }
    if (totals != null) {
      output["totals"] = new core.List();
      totals.forEach((item) {
        output["totals"].add(item);
      });
    }
    if (warnings != null) {
      output["warnings"] = new core.List();
      warnings.forEach((item) {
        output["warnings"].add(item);
      });
    }

    return output;
  }

  /** Return String representation of Report */
  core.String toString() => JSON.stringify(this.toJson());

}

class ReportHeaders {

  /** The currency of this column. Only present if the header type is METRIC_CURRENCY. */
  core.String currency;

  /** The name of the header. */
  core.String name;

  /** The type of the header; one of DIMENSION, METRIC_TALLY, METRIC_RATIO, or METRIC_CURRENCY. */
  core.String type;

  /** Create new ReportHeaders from JSON data */
  ReportHeaders.fromJson(core.Map json) {
    if (json.containsKey("currency")) {
      currency = json["currency"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for ReportHeaders */
  core.Map toJson() {
    var output = new core.Map();

    if (currency != null) {
      output["currency"] = currency;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of ReportHeaders */
  core.String toString() => JSON.stringify(this.toJson());

}

class UrlChannel {

  /** Unique identifier of this URL channel. This should be considered an opaque identifier; it is not safe to rely on it being in any particular format. */
  core.String id;

  /** Kind of resource this is, in this case adsensehost#urlChannel. */
  core.String kind;

  /** URL Pattern of this URL channel. Does not include "http://" or "https://". Example: www.example.com/home */
  core.String urlPattern;

  /** Create new UrlChannel from JSON data */
  UrlChannel.fromJson(core.Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("urlPattern")) {
      urlPattern = json["urlPattern"];
    }
  }

  /** Create JSON Object for UrlChannel */
  core.Map toJson() {
    var output = new core.Map();

    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (urlPattern != null) {
      output["urlPattern"] = urlPattern;
    }

    return output;
  }

  /** Return String representation of UrlChannel */
  core.String toString() => JSON.stringify(this.toJson());

}

class UrlChannels {

  /** ETag of this response for caching purposes. */
  core.String etag;

  /** The URL channels returned in this list response. */
  core.List<UrlChannel> items;

  /** Kind of list this is, in this case adsensehost#urlChannels. */
  core.String kind;

  /** Continuation token used to page through URL channels. To retrieve the next page of results, set the next request's "pageToken" value to this. */
  core.String nextPageToken;

  /** Create new UrlChannels from JSON data */
  UrlChannels.fromJson(core.Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new UrlChannel.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for UrlChannels */
  core.Map toJson() {
    var output = new core.Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (items != null) {
      output["items"] = new core.List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }

    return output;
  }

  /** Return String representation of UrlChannels */
  core.String toString() => JSON.stringify(this.toJson());

}

