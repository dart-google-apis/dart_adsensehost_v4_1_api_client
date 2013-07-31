library adsensehost_v4_1_api.browser;

import "package:google_oauth2_client/google_oauth2_browser.dart" as oauth;

import 'package:google_adsensehost_v4_1_api/src/cloud_api_browser.dart';
import "package:google_adsensehost_v4_1_api/adsensehost_v4_1_api_client.dart";

/** Gives AdSense Hosts access to report generation, ad code generation, and publisher management capabilities. */
class Adsensehost extends Client with BrowserClient {

  /** OAuth Scope2: View and manage your AdSense host data and associated accounts */
  static const String ADSENSEHOST_SCOPE = "https://www.googleapis.com/auth/adsensehost";

  final oauth.OAuth2 auth;

  Adsensehost([oauth.OAuth2 this.auth]);
}
