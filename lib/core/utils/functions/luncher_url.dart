import 'package:bookly_app/core/utils/functions/show_snakbar.dart';
import 'package:url_launcher/url_launcher_string.dart';

Future<void> lunchCustomUrl(context, String? url) async {
  if (url != null) {
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    } else {
      showSnakBar(context, 'Invalid Url');
    }
  }
}
