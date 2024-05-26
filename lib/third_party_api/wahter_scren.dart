import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:weather/weather.dart';

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({super.key});

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  final WeatherFactory wf = WeatherFactory("f51d78d050e13381e2b504849a6a5b74");

  Weather? weather;

  @override
  void initState() {
    super.initState();
    wf.currentWeatherByCityName("Dhaka").then((w) {
      setState(() {
        weather = w;
      });
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: "Weather".text.make(),
      ),
      body: weather == null
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : SizedBox(
              width: context.screenWidth,
              height: context.screenHeight,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    weather?.areaName ?? "",
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        DateFormat("h:mm a").format(weather!.date!),
                        style: const TextStyle(
                          fontSize: 35,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            DateFormat("EEEE").format(weather!.date!),
                            style: const TextStyle(
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            "  ${DateFormat.yMMMd().format(weather!.date!)}",
                            style: const TextStyle(
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: context.screenHeight * 0.20,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                "http://openweathermap.org/img/wn/${weather?.weatherIcon}@4x.png"),
                          ),
                        ),
                      ),
                      Text(
                        weather?.weatherDescription ?? "",
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "${weather?.temperature?.celsius?.toStringAsFixed(0)}° C",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 90,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Container(
                    height: context.screenHeight * 0.15,
                    width: context.screenWidth * 0.80,
                    decoration: BoxDecoration(
                      color: Colors.deepPurpleAccent,
                      borderRadius: BorderRadius.circular(
                        20,
                      ),
                    ),
                    padding: const EdgeInsets.all(
                      8.0,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Max: ${weather?.tempMax?.celsius?.toStringAsFixed(0)}° C",
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              "Min: ${weather?.tempMin?.celsius?.toStringAsFixed(0)}° C",
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Wind: ${weather?.windSpeed?.toStringAsFixed(0)}m/s",
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              "Humidity: ${weather?.humidity?.toStringAsFixed(0)}%",
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
