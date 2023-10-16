
import 'dart:io';

import 'package:flutter_weather_app_clean_arc/core/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_weather_app_clean_arc/data/data_sources/remote_data_source.dart';
import 'package:flutter_weather_app_clean_arc/domain/entities/weather.dart';
import 'package:flutter_weather_app_clean_arc/domain/repositories/weather_repository.dart';

import '../../core/error/exception.dart';

class WeatherRepositoryImpl extends WeatherRepository {

  final WeatherRemoteDataSource weatherRemoteDataSource;
  WeatherRepositoryImpl({required this.weatherRemoteDataSource});

  @override
  Future < Either < Failure, WeatherEntity >> getCurrentWeather(String cityName) async {
    try {
      final result = await weatherRemoteDataSource.getCurrentWeather(cityName);
      return Right(result.toEntity());
    } on ServerException {
      return const Left(ServerFailure('An error has occurred'));
    } on SocketException {
      return const Left(ConnectionFailure('Failed to connect to the network'));
    }
  }
}