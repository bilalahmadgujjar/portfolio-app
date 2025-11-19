import 'package:url_launcher/url_launcher.dart';

Future<void> launchURL(String url) async {
  try {
    if (url.isEmpty) return;

    // Auto-detect email
    if (url.contains('@') && !url.startsWith('mailto:')) {
      url = 'mailto:$url';
    }

    // Auto-detect phone numbers
    if (RegExp(r'^\+?\d+$').hasMatch(url) && !url.startsWith('tel:')) {
      url = 'tel:$url';
    }

    // Auto-add https for normal links
    if (!url.startsWith('http') &&
        !url.startsWith('mailto:') &&
        !url.startsWith('tel:') &&
        !url.startsWith('sms:')) {
      url = 'https://$url';
    }

    final Uri uri = Uri.parse(url);

    if (await canLaunchUrl(uri)) {
      await launchUrl(
        uri,
        mode: LaunchMode.externalApplication,
      );
    } else {
      print("Could not launch $url");
    }
  } catch (e) {
    print("Launcher error: $e");
  }
}
