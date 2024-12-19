import 'package:flutter/foundation.dart';
import 'package:url_launcher/url_launcher.dart';
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
Future<void> sendingMails() async {
  var url = Uri.parse("mailto:ahmedelsayed948891@gmail.com");
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}