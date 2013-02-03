part of adsensehost_v4_1_api_client;

class AccountsResource extends Resource {

  AccountsAdclientsResource _adclients;
  AccountsAdclientsResource get adclients => _adclients;
  AccountsAdunitsResource _adunits;
  AccountsAdunitsResource get adunits => _adunits;
  AccountsReportsResource _reports;
  AccountsReportsResource get reports => _reports;

  AccountsResource(Client client) : super(client) {
  _adclients = new AccountsAdclientsResource(client);
  _adunits = new AccountsAdunitsResource(client);
  _reports = new AccountsReportsResource(client);
  }

  /**
   * Get information about the selected associated AdSense account.
   *
   * [accountId] - Account to get information about.
   *
   * [optParams] - Additional query parameters
   */
  Future<Account> get(String accountId, {Map optParams}) {
    var completer = new Completer();
    var url = "accounts/{accountId}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Account.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * List hosted accounts associated with this AdSense account by ad client id.
   *
   * [filterAdClientId] - Ad clients to list accounts for.
   *
   * [optParams] - Additional query parameters
   */
  Future<Accounts> list(String filterAdClientId, {Map optParams}) {
    var completer = new Completer();
    var url = "accounts";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (filterAdClientId == null) paramErrors.add("filterAdClientId is required");
    if (filterAdClientId != null) queryParams["filterAdClientId"] = filterAdClientId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Accounts.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class AccountsAdclientsResource extends Resource {

  AccountsAdclientsResource(Client client) : super(client) {
  }

  /**
   * Get information about one of the ad clients in the specified publisher's AdSense account.
   *
   * [accountId] - Account which contains the ad client.
   *
   * [adClientId] - Ad client to get.
   *
   * [optParams] - Additional query parameters
   */
  Future<AdClient> get(String accountId, String adClientId, {Map optParams}) {
    var completer = new Completer();
    var url = "accounts/{accountId}/adclients/{adClientId}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
    if (adClientId == null) paramErrors.add("adClientId is required");
    if (adClientId != null) urlParams["adClientId"] = adClientId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new AdClient.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * List all hosted ad clients in the specified hosted account.
   *
   * [accountId] - Account for which to list ad clients.
   *
   * [maxResults] - The maximum number of ad clients to include in the response, used for paging.
   *   Minimum: 0
   *   Maximum: 10000
   *
   * [pageToken] - A continuation token, used to page through ad clients. To retrieve the next page, set this parameter to the value of "nextPageToken" from the previous response.
   *
   * [optParams] - Additional query parameters
   */
  Future<AdClients> list(String accountId, {int maxResults, String pageToken, Map optParams}) {
    var completer = new Completer();
    var url = "accounts/{accountId}/adclients";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new AdClients.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class AccountsAdunitsResource extends Resource {

  AccountsAdunitsResource(Client client) : super(client) {
  }

  /**
   * Delete the specified ad unit from the specified publisher AdSense account.
   *
   * [accountId] - Account which contains the ad unit.
   *
   * [adClientId] - Ad client for which to get ad unit.
   *
   * [adUnitId] - Ad unit to delete.
   *
   * [optParams] - Additional query parameters
   */
  Future<AdUnit> delete(String accountId, String adClientId, String adUnitId, {Map optParams}) {
    var completer = new Completer();
    var url = "accounts/{accountId}/adclients/{adClientId}/adunits/{adUnitId}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
    if (adClientId == null) paramErrors.add("adClientId is required");
    if (adClientId != null) urlParams["adClientId"] = adClientId;
    if (adUnitId == null) paramErrors.add("adUnitId is required");
    if (adUnitId != null) urlParams["adUnitId"] = adUnitId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new AdUnit.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Get the specified host ad unit in this AdSense account.
   *
   * [accountId] - Account which contains the ad unit.
   *
   * [adClientId] - Ad client for which to get ad unit.
   *
   * [adUnitId] - Ad unit to get.
   *
   * [optParams] - Additional query parameters
   */
  Future<AdUnit> get(String accountId, String adClientId, String adUnitId, {Map optParams}) {
    var completer = new Completer();
    var url = "accounts/{accountId}/adclients/{adClientId}/adunits/{adUnitId}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
    if (adClientId == null) paramErrors.add("adClientId is required");
    if (adClientId != null) urlParams["adClientId"] = adClientId;
    if (adUnitId == null) paramErrors.add("adUnitId is required");
    if (adUnitId != null) urlParams["adUnitId"] = adUnitId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new AdUnit.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Get ad code for the specified ad unit, attaching the specified host custom channels.
   *
   * [accountId] - Account which contains the ad client.
   *
   * [adClientId] - Ad client with contains the ad unit.
   *
   * [adUnitId] - Ad unit to get the code for.
   *
   * [hostCustomChannelId] - Host custom channel to attach to the ad code.
   *
   * [optParams] - Additional query parameters
   */
  Future<AdCode> getAdCode(String accountId, String adClientId, String adUnitId, {String hostCustomChannelId, Map optParams}) {
    var completer = new Completer();
    var url = "accounts/{accountId}/adclients/{adClientId}/adunits/{adUnitId}/adcode";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
    if (adClientId == null) paramErrors.add("adClientId is required");
    if (adClientId != null) urlParams["adClientId"] = adClientId;
    if (adUnitId == null) paramErrors.add("adUnitId is required");
    if (adUnitId != null) urlParams["adUnitId"] = adUnitId;
    if (hostCustomChannelId != null) queryParams["hostCustomChannelId"] = hostCustomChannelId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new AdCode.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Insert the supplied ad unit into the specified publisher AdSense account.
   *
   * [request] - AdUnit to send in this request
   *
   * [accountId] - Account which will contain the ad unit.
   *
   * [adClientId] - Ad client into which to insert the ad unit.
   *
   * [optParams] - Additional query parameters
   */
  Future<AdUnit> insert(AdUnit request, String accountId, String adClientId, {Map optParams}) {
    var completer = new Completer();
    var url = "accounts/{accountId}/adclients/{adClientId}/adunits";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
    if (adClientId == null) paramErrors.add("adClientId is required");
    if (adClientId != null) urlParams["adClientId"] = adClientId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new AdUnit.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * List all ad units in the specified publisher's AdSense account.
   *
   * [accountId] - Account which contains the ad client.
   *
   * [adClientId] - Ad client for which to list ad units.
   *
   * [includeInactive] - Whether to include inactive ad units. Default: true.
   *
   * [maxResults] - The maximum number of ad units to include in the response, used for paging.
   *   Minimum: 0
   *   Maximum: 10000
   *
   * [pageToken] - A continuation token, used to page through ad units. To retrieve the next page, set this parameter to the value of "nextPageToken" from the previous response.
   *
   * [optParams] - Additional query parameters
   */
  Future<AdUnits> list(String accountId, String adClientId, {bool includeInactive, int maxResults, String pageToken, Map optParams}) {
    var completer = new Completer();
    var url = "accounts/{accountId}/adclients/{adClientId}/adunits";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
    if (adClientId == null) paramErrors.add("adClientId is required");
    if (adClientId != null) urlParams["adClientId"] = adClientId;
    if (includeInactive != null) queryParams["includeInactive"] = includeInactive;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new AdUnits.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Update the supplied ad unit in the specified publisher AdSense account. This method supports patch semantics.
   *
   * [request] - AdUnit to send in this request
   *
   * [accountId] - Account which contains the ad client.
   *
   * [adClientId] - Ad client which contains the ad unit.
   *
   * [adUnitId] - Ad unit to get.
   *
   * [optParams] - Additional query parameters
   */
  Future<AdUnit> patch(AdUnit request, String accountId, String adClientId, String adUnitId, {Map optParams}) {
    var completer = new Completer();
    var url = "accounts/{accountId}/adclients/{adClientId}/adunits";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
    if (adClientId == null) paramErrors.add("adClientId is required");
    if (adClientId != null) urlParams["adClientId"] = adClientId;
    if (adUnitId == null) paramErrors.add("adUnitId is required");
    if (adUnitId != null) queryParams["adUnitId"] = adUnitId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "PATCH", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new AdUnit.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Update the supplied ad unit in the specified publisher AdSense account.
   *
   * [request] - AdUnit to send in this request
   *
   * [accountId] - Account which contains the ad client.
   *
   * [adClientId] - Ad client which contains the ad unit.
   *
   * [optParams] - Additional query parameters
   */
  Future<AdUnit> update(AdUnit request, String accountId, String adClientId, {Map optParams}) {
    var completer = new Completer();
    var url = "accounts/{accountId}/adclients/{adClientId}/adunits";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
    if (adClientId == null) paramErrors.add("adClientId is required");
    if (adClientId != null) urlParams["adClientId"] = adClientId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new AdUnit.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class AccountsReportsResource extends Resource {

  AccountsReportsResource(Client client) : super(client) {
  }

  /**
   * Generate an AdSense report based on the report request sent in the query parameters. Returns the result as JSON; to retrieve output in CSV format specify "alt=csv" as a query parameter.
   *
   * [accountId] - Hosted account upon which to report.
   *
   * [startDate] - Start of the date range to report on in "YYYY-MM-DD" format, inclusive.
   *
   * [endDate] - End of the date range to report on in "YYYY-MM-DD" format, inclusive.
   *
   * [dimension] - Dimensions to base the report on.
   *
   * [filter] - Filters to be run on the report.
   *
   * [locale] - Optional locale to use for translating report output to a local language. Defaults to "en_US" if not specified.
   *
   * [maxResults] - The maximum number of rows of report data to return.
   *   Minimum: 0
   *   Maximum: 50000
   *
   * [metric] - Numeric columns to include in the report.
   *
   * [sort] - The name of a dimension or metric to sort the resulting report on, optionally prefixed with "+" to sort ascending or "-" to sort descending. If no prefix is specified, the column is sorted ascending.
   *
   * [startIndex] - Index of the first row of report data to return.
   *   Minimum: 0
   *   Maximum: 5000
   *
   * [optParams] - Additional query parameters
   */
  Future<Report> generate(String accountId, String startDate, String endDate, {String dimension, String filter, String locale, int maxResults, String metric, String sort, int startIndex, Map optParams}) {
    var completer = new Completer();
    var url = "accounts/{accountId}/reports";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
    if (dimension != null) queryParams["dimension"] = dimension;
    if (endDate == null) paramErrors.add("endDate is required");
    if (endDate != null) queryParams["endDate"] = endDate;
    if (filter != null) queryParams["filter"] = filter;
    if (locale != null) queryParams["locale"] = locale;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (metric != null) queryParams["metric"] = metric;
    if (sort != null) queryParams["sort"] = sort;
    if (startDate == null) paramErrors.add("startDate is required");
    if (startDate != null) queryParams["startDate"] = startDate;
    if (startIndex != null) queryParams["startIndex"] = startIndex;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Report.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class AdclientsResource extends Resource {

  AdclientsResource(Client client) : super(client) {
  }

  /**
   * Get information about one of the ad clients in the Host AdSense account.
   *
   * [adClientId] - Ad client to get.
   *
   * [optParams] - Additional query parameters
   */
  Future<AdClient> get(String adClientId, {Map optParams}) {
    var completer = new Completer();
    var url = "adclients/{adClientId}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (adClientId == null) paramErrors.add("adClientId is required");
    if (adClientId != null) urlParams["adClientId"] = adClientId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new AdClient.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * List all host ad clients in this AdSense account.
   *
   * [maxResults] - The maximum number of ad clients to include in the response, used for paging.
   *   Minimum: 0
   *   Maximum: 10000
   *
   * [pageToken] - A continuation token, used to page through ad clients. To retrieve the next page, set this parameter to the value of "nextPageToken" from the previous response.
   *
   * [optParams] - Additional query parameters
   */
  Future<AdClients> list({int maxResults, String pageToken, Map optParams}) {
    var completer = new Completer();
    var url = "adclients";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new AdClients.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class AssociationsessionsResource extends Resource {

  AssociationsessionsResource(Client client) : super(client) {
  }

  /**
   * Create an association session for initiating an association with an AdSense user.
   *
   * [productCode] - Products to associate with the user.
   *   Allowed values:
   *     AFC - AdSense For Content
   *     AFMC - AdSense For Mobile Content
   *     AFS - AdSense For Search
   *
   * [websiteUrl] - The URL of the user's hosted website.
   *
   * [userLocale] - The preferred locale of the user.
   *
   * [websiteLocale] - The locale of the user's hosted website.
   *
   * [optParams] - Additional query parameters
   */
  Future<AssociationSession> start(String productCode, String websiteUrl, {String userLocale, String websiteLocale, Map optParams}) {
    var completer = new Completer();
    var url = "associationsessions/start";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (productCode == null) paramErrors.add("productCode is required");
    if (productCode != null && !["AFC", "AFMC", "AFS"].contains(productCode)) {
      paramErrors.add("Allowed values for productCode: AFC, AFMC, AFS");
    }
    if (productCode != null) queryParams["productCode"] = productCode;
    if (userLocale != null) queryParams["userLocale"] = userLocale;
    if (websiteLocale != null) queryParams["websiteLocale"] = websiteLocale;
    if (websiteUrl == null) paramErrors.add("websiteUrl is required");
    if (websiteUrl != null) queryParams["websiteUrl"] = websiteUrl;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new AssociationSession.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Verify an association session after the association callback returns from AdSense signup.
   *
   * [token] - The token returned to the association callback URL.
   *
   * [optParams] - Additional query parameters
   */
  Future<AssociationSession> verify(String token, {Map optParams}) {
    var completer = new Completer();
    var url = "associationsessions/verify";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (token == null) paramErrors.add("token is required");
    if (token != null) queryParams["token"] = token;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new AssociationSession.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class CustomchannelsResource extends Resource {

  CustomchannelsResource(Client client) : super(client) {
  }

  /**
   * Delete a specific custom channel from the host AdSense account.
   *
   * [adClientId] - Ad client from which to delete the custom channel.
   *
   * [customChannelId] - Custom channel to delete.
   *
   * [optParams] - Additional query parameters
   */
  Future<CustomChannel> delete(String adClientId, String customChannelId, {Map optParams}) {
    var completer = new Completer();
    var url = "adclients/{adClientId}/customchannels/{customChannelId}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (adClientId == null) paramErrors.add("adClientId is required");
    if (adClientId != null) urlParams["adClientId"] = adClientId;
    if (customChannelId == null) paramErrors.add("customChannelId is required");
    if (customChannelId != null) urlParams["customChannelId"] = customChannelId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new CustomChannel.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Get a specific custom channel from the host AdSense account.
   *
   * [adClientId] - Ad client from which to get the custom channel.
   *
   * [customChannelId] - Custom channel to get.
   *
   * [optParams] - Additional query parameters
   */
  Future<CustomChannel> get(String adClientId, String customChannelId, {Map optParams}) {
    var completer = new Completer();
    var url = "adclients/{adClientId}/customchannels/{customChannelId}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (adClientId == null) paramErrors.add("adClientId is required");
    if (adClientId != null) urlParams["adClientId"] = adClientId;
    if (customChannelId == null) paramErrors.add("customChannelId is required");
    if (customChannelId != null) urlParams["customChannelId"] = customChannelId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new CustomChannel.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Add a new custom channel to the host AdSense account.
   *
   * [request] - CustomChannel to send in this request
   *
   * [adClientId] - Ad client to which the new custom channel will be added.
   *
   * [optParams] - Additional query parameters
   */
  Future<CustomChannel> insert(CustomChannel request, String adClientId, {Map optParams}) {
    var completer = new Completer();
    var url = "adclients/{adClientId}/customchannels";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (adClientId == null) paramErrors.add("adClientId is required");
    if (adClientId != null) urlParams["adClientId"] = adClientId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new CustomChannel.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * List all host custom channels in this AdSense account.
   *
   * [adClientId] - Ad client for which to list custom channels.
   *
   * [maxResults] - The maximum number of custom channels to include in the response, used for paging.
   *   Minimum: 0
   *   Maximum: 10000
   *
   * [pageToken] - A continuation token, used to page through custom channels. To retrieve the next page, set this parameter to the value of "nextPageToken" from the previous response.
   *
   * [optParams] - Additional query parameters
   */
  Future<CustomChannels> list(String adClientId, {int maxResults, String pageToken, Map optParams}) {
    var completer = new Completer();
    var url = "adclients/{adClientId}/customchannels";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (adClientId == null) paramErrors.add("adClientId is required");
    if (adClientId != null) urlParams["adClientId"] = adClientId;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new CustomChannels.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Update a custom channel in the host AdSense account. This method supports patch semantics.
   *
   * [request] - CustomChannel to send in this request
   *
   * [adClientId] - Ad client in which the custom channel will be updated.
   *
   * [customChannelId] - Custom channel to get.
   *
   * [optParams] - Additional query parameters
   */
  Future<CustomChannel> patch(CustomChannel request, String adClientId, String customChannelId, {Map optParams}) {
    var completer = new Completer();
    var url = "adclients/{adClientId}/customchannels";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (adClientId == null) paramErrors.add("adClientId is required");
    if (adClientId != null) urlParams["adClientId"] = adClientId;
    if (customChannelId == null) paramErrors.add("customChannelId is required");
    if (customChannelId != null) queryParams["customChannelId"] = customChannelId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "PATCH", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new CustomChannel.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Update a custom channel in the host AdSense account.
   *
   * [request] - CustomChannel to send in this request
   *
   * [adClientId] - Ad client in which the custom channel will be updated.
   *
   * [optParams] - Additional query parameters
   */
  Future<CustomChannel> update(CustomChannel request, String adClientId, {Map optParams}) {
    var completer = new Completer();
    var url = "adclients/{adClientId}/customchannels";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (adClientId == null) paramErrors.add("adClientId is required");
    if (adClientId != null) urlParams["adClientId"] = adClientId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new CustomChannel.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class ReportsResource extends Resource {

  ReportsResource(Client client) : super(client) {
  }

  /**
   * Generate an AdSense report based on the report request sent in the query parameters. Returns the result as JSON; to retrieve output in CSV format specify "alt=csv" as a query parameter.
   *
   * [startDate] - Start of the date range to report on in "YYYY-MM-DD" format, inclusive.
   *
   * [endDate] - End of the date range to report on in "YYYY-MM-DD" format, inclusive.
   *
   * [dimension] - Dimensions to base the report on.
   *
   * [filter] - Filters to be run on the report.
   *
   * [locale] - Optional locale to use for translating report output to a local language. Defaults to "en_US" if not specified.
   *
   * [maxResults] - The maximum number of rows of report data to return.
   *   Minimum: 0
   *   Maximum: 50000
   *
   * [metric] - Numeric columns to include in the report.
   *
   * [sort] - The name of a dimension or metric to sort the resulting report on, optionally prefixed with "+" to sort ascending or "-" to sort descending. If no prefix is specified, the column is sorted ascending.
   *
   * [startIndex] - Index of the first row of report data to return.
   *   Minimum: 0
   *   Maximum: 5000
   *
   * [optParams] - Additional query parameters
   */
  Future<Report> generate(String startDate, String endDate, {String dimension, String filter, String locale, int maxResults, String metric, String sort, int startIndex, Map optParams}) {
    var completer = new Completer();
    var url = "reports";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (dimension != null) queryParams["dimension"] = dimension;
    if (endDate == null) paramErrors.add("endDate is required");
    if (endDate != null) queryParams["endDate"] = endDate;
    if (filter != null) queryParams["filter"] = filter;
    if (locale != null) queryParams["locale"] = locale;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (metric != null) queryParams["metric"] = metric;
    if (sort != null) queryParams["sort"] = sort;
    if (startDate == null) paramErrors.add("startDate is required");
    if (startDate != null) queryParams["startDate"] = startDate;
    if (startIndex != null) queryParams["startIndex"] = startIndex;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Report.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class UrlchannelsResource extends Resource {

  UrlchannelsResource(Client client) : super(client) {
  }

  /**
   * Delete a URL channel from the host AdSense account.
   *
   * [adClientId] - Ad client from which to delete the URL channel.
   *
   * [urlChannelId] - URL channel to delete.
   *
   * [optParams] - Additional query parameters
   */
  Future<UrlChannel> delete(String adClientId, String urlChannelId, {Map optParams}) {
    var completer = new Completer();
    var url = "adclients/{adClientId}/urlchannels/{urlChannelId}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (adClientId == null) paramErrors.add("adClientId is required");
    if (adClientId != null) urlParams["adClientId"] = adClientId;
    if (urlChannelId == null) paramErrors.add("urlChannelId is required");
    if (urlChannelId != null) urlParams["urlChannelId"] = urlChannelId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new UrlChannel.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Add a new URL channel to the host AdSense account.
   *
   * [request] - UrlChannel to send in this request
   *
   * [adClientId] - Ad client to which the new URL channel will be added.
   *
   * [optParams] - Additional query parameters
   */
  Future<UrlChannel> insert(UrlChannel request, String adClientId, {Map optParams}) {
    var completer = new Completer();
    var url = "adclients/{adClientId}/urlchannels";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (adClientId == null) paramErrors.add("adClientId is required");
    if (adClientId != null) urlParams["adClientId"] = adClientId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new UrlChannel.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * List all host URL channels in the host AdSense account.
   *
   * [adClientId] - Ad client for which to list URL channels.
   *
   * [maxResults] - The maximum number of URL channels to include in the response, used for paging.
   *   Minimum: 0
   *   Maximum: 10000
   *
   * [pageToken] - A continuation token, used to page through URL channels. To retrieve the next page, set this parameter to the value of "nextPageToken" from the previous response.
   *
   * [optParams] - Additional query parameters
   */
  Future<UrlChannels> list(String adClientId, {int maxResults, String pageToken, Map optParams}) {
    var completer = new Completer();
    var url = "adclients/{adClientId}/urlchannels";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (adClientId == null) paramErrors.add("adClientId is required");
    if (adClientId != null) urlParams["adClientId"] = adClientId;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new UrlChannels.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

