import 'package:url_launcher/url_launcher.dart';

sendEmail() async {
  final Uri params = Uri(
    scheme: 'mailto',
    path: 'jnrolamilekan123@gmail.com',
    query:
        'subject=Hiring Request for Aminu Fuhad - Fullstack Mobile Developer',
  );

  if (await canLaunchUrl(params)) {
    await launchUrl(params);
  } else {
    throw 'Could not launch email';
  }
}
