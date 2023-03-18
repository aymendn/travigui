import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../core/app_constant.dart';
import '../models/announcement.dart';

class AnnouncementsProvider extends ChangeNotifier {
  final List<Announcement> _announcements = [];

  List<Announcement> get announcements => _announcements;

  Future<void> fetchAndSetAnnouncements({
    required Function(String) onError,
  }) async {
    try {
      final response = await http.get(AppConstant.servicesUrl.uri);

      if (response.statusCode != 200) {
        onError('Something went wrong');
        return;
      }

      final List<Map<String, dynamic>> data =
          json.decode(response.body)['data'];

      for (var an in data) {
        // _announcements.add(
        //   Announcement(
        //     title: an['title'],
        //     description: an['ServiceDescription'] as String,
        //     price: an['MoneyOffer'] as String,
        //     imageUrl: an['coverImages'] as String,
        //     lat: an['lat'] as double,
        //   ),
        // );
      }
    } catch (error) {}
  }
}
