import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

final dioProvider = Provider<Dio>((ref) {
  return Dio()
    ..interceptors.add(PrettyDioLogger(),)
      ..options.baseUrl  = '';
});