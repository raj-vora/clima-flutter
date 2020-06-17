# Clima ☁

A new flutter application

## What I tried to create

A weather app inspired by the beautiful designs made by [Olia Gozha](https://dribbble.com/shots/4663154-). Able to find out the live weather data in the current location of the device as well as the weather for any city you can think of!

![Finished App](https://github.com/londonappbrewery/Images/blob/master/clima-demo.gif)

## Getting Started
* Install dependencies
```sh
    $ flutter pub get
```

* Add API key  
Go to [OpenWeatherMap](https://openweathermap.org/) and sign up and generate your api key.  
Open `services/weather.dart` and replace your api key at  
```
const apiKey = 'ENTER_YOUR_API_KEY';
```

* Start building  
Use emulator or a physical device connected by USB
```sh
    $ flutter run
```

* Note:  
Make sure that location service is enabled and device has an active internet connection.

* Create APK
```sh
    $ flutter build apk --split-per-abi
```

### Install for Android
- [64 bit apk](https://www.github.com/raj-vora/clima-flutter/blob/master/apks/clima-arm64.apk?raw=true)
- [32 bit apk](https://www.github.com/raj-vora/clima-flutter/blob/master/apks/clima-armeabi.apk?raw=true)

>This is a companion project to The App Brewery's Complete Flutter Development Bootcamp, check out the full course at [www.appbrewery.co](https://www.appbrewery.co/)