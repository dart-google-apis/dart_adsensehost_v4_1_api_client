library adsensehost_v4_1_api.console;

import "package:google_oauth2_client/google_oauth2_console.dart" as oauth2;

import 'package:google_adsensehost_v4_1_api/src/console_client.dart';

import "package:google_adsensehost_v4_1_api/adsensehost_v4_1_api_client.dart";

/** Gives AdSense Hosts access to report generation, ad code generation, and publisher management capabilities. */
class Adsensehost extends Client with ConsoleClient {

  /** OAuth Scope2: View and manage your AdSense host data and associated accounts */
  static const String ADSENSEHOST_SCOPE = "https://www.googleapis.com/auth/adsensehost";

  final oauth2.OAuth2Console auth;

  Adsensehost([oauth2.OAuth2Console this.auth]);
}
