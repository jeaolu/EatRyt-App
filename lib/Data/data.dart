import 'package:flutter/material.dart';

Data(
  context, {
  // ignore: non_constant_identifier_names
  required String e_email,
  // ignore: non_constant_identifier_names
  required String p_password,
}) {
  dynamic raw_data = {'Email': '$e_email', 'Password': '$p_password'};
  print(raw_data);
}
