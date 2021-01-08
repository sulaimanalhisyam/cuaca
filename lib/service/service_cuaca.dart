import 'package:cuaca/service/network_helper.dart';

const apiKey = '48b35328166a16d137eb52613fdfc7a7';
const baseUrl = '"http://openweathermap.org/faq#error401 for more info."';

class ServiceCuaca {
  Future<dynamic> getCityCuaca(String Cityname) async {
    Network networkHelper =
        Network('$baseUrl?q=$Cityname&appid=$apiKey&units=metric');

    var caucaData = await networkHelper.getData();
    return caucaData;
  }

  String getCuacaBackground(String condition) {
    switch (condition) {
      case 'Rain':
        return 'https://cdn.wallpapersafari.com/49/78/prPxAF.png';
      case 'Thunderstorm':
        return 'https://papers.co/wallpaper/papers.co-vs83-raindrop-simple-texture-pattern-dark-bw-41-iphone-wallpaper.jpg';
      case 'Drizzle':
        return 'https://i.pinimg.com/originals/84/21/dd/8421dd880ea4d82ab5b4396396dd94c1.jpg';
      case 'Snow':
        return 'https://image.winudf.com/v2/image/Y29tLnR1bXBlbmduZXQud2FsbHBhcGVyY2xvdWRfc2NyZWVuc2hvdHNfNl9iNjEyZmZiYw/screen-6.jpg?fakeurl=1&type=.jpg ';
      case 'Clear ':
        return 'https://i.pinimg.com/originals/01/87/ed/0187edc1e79466297ff744a8d1c61fb4.jpg ';
      case 'Clouds':
        return 'https://i2.wp.com/www.3wallpapers.fr/wp-content/uploads/2018/08/iPhone-wallpaper-fog-mount-tamalpais.png ';
      case 'Atmosphere ':
        return 'https://i2.wp.com/www.3wallpapers.fr/wp-content/uploads/2018/08/iPhone-wallpaper-fog-mount-tamalpais.png ';
    }
  }
}
