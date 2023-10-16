import 'package:dartz/dartz.dart';
import 'package:flutter_weather_app_clean_arc/core/error/failure.dart';
import 'package:flutter_weather_app_clean_arc/domain/entities/weather.dart';
import 'package:flutter_weather_app_clean_arc/domain/repositories/weather_repository.dart';

class GetCurrentWeatherUseCase {

  final WeatherRepository weatherRepository;

  GetCurrentWeatherUseCase(this.weatherRepository); 
  
  Future<Either<Failure,WeatherEntity>> execute(String cityName) {
    return weatherRepository.getCurrentWeather(cityName);
  }
}