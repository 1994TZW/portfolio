// ignore_for_file: deprecated_member_use
import 'package:url_launcher/url_launcher.dart';

enum ContactType { phone, email, facebook, linkedin, github }

launchURL(ContactType type, String data) {
  if ((data.trim()) == "") return;
  if (type == ContactType.phone) {
    launch("tel:${data.trim().replaceAll(' ', '')}");
  } else if (type == ContactType.email) {
    launch("mailto:$data");
  } else if (type == ContactType.facebook ||
      type == ContactType.linkedin ||
      type == ContactType.github) {
    launch(data);
  }
}
