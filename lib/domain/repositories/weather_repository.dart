import 'package:dartz/dartz.dart';
import 'package:flutter_weather_app_clean_arc/core/error/failure.dart';
import 'package:flutter_weather_app_clean_arc/domain/entities/weather.dart';

abstract class WeatherRepository {
  
  Future<Either<Failure,WeatherEntity>> getCurrentWeather(String cityName);
}