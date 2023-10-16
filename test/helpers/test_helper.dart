import 'package:mockito/annotations.dart';
import 'package:flutter_weather_app_clean_arc/data/data_sources/remote_data_source.dart';
import 'package:flutter_weather_app_clean_arc/domain/repositories/weather_repository.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_weather_app_clean_arc/domain/usecases/get_current_weather.dart';


@GenerateMocks(
  [
   WeatherRepository,
   WeatherRemoteDataSource,
   GetCurrentWeatherUseCase
  ],
  customMocks: [MockSpec<http.Client>(as: #MockHttpClient)],
)

void main() {}