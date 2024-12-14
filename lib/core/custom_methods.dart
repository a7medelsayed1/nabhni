import 'package:flutter/foundation.dart';
import 'package:url_launcher/url_launcher_string.dart';

Future<void> openWhatsapp({required String whatsNumber}) async {
  if (kDebugMode) {
    print('whatsNumber ==> $whatsNumber');
  }
  const message = 'السلام عليكم ورحمه الله وبركاته';
  final whatsappURl = "https://wa.me/$whatsNumber/?text=${Uri.parse(message)}";
  await launchUrlString(
    whatsappURl,
    mode: LaunchMode.externalApplication,
  );
}