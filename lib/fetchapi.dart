import 'dart:developer';

import 'package:dio/dio.dart';

final dio = Dio();

getHttp() async {
  List datas = [];
  try {
    final response = await dio.get(
        'https://api.openweathermap.org/data/2.5/weather?lat=44.34&lon=10.99&appid=d72634f7ce99b88b9d7c1cce0152f605');
    print(response);

    log(response.data['main']['temp_min'].toString());

    datas.add(response.data['main']['temp_min']);
    datas.add(response.data['wind']['speed']);
    return datas;
  } catch (e) {
    print(e);
  }
}
