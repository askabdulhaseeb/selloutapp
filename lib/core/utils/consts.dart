import 'package:flutter_dotenv/flutter_dotenv.dart';

const double kMaxWidth = 360;
const double kBorderRadius = 24;
final String kBaseURL = dotenv.env['BASE_URL'] ?? '';
