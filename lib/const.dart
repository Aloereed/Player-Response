final Map<String, String> headers = {
  'accept': '*/*',
  'content-type': 'application/json',
  'content-encoding': 'gzip',
  'origin': "https://music.youtube.com/",
};

final ANDROID_CONTEXT = {
  'client': {
    'clientName': 'ANDROID_MUSIC',
    'clientVersion': '5.22.1',
    'androidSdkVersion': 31,
    'userAgent':
        'com.google.android.youtube/19.29.1  (Linux; U; Android 11) gzip',
    'hl': 'en',
    'timeZone': 'UTC',
    'utcOffsetMinutes': 0,
  },
};

final IOS_CONTEXT = {
  'client': {
    'clientName': 'IOS',
    'clientVersion': '19.29.1',
    'deviceMake': 'Apple',
    'deviceModel': 'iPhone16,2',
    'hl': 'en',
    'osName': 'iPhone',
    'osVersion': '17.5.1.21F90',
    'timeZone': 'UTC',
    'userAgent':
        'com.google.ios.youtube/19.29.1 (iPhone16,2; U; CPU iOS 17_5_1 like Mac OS X;)',
    'utcOffsetMinutes': 0
  }
};

const kPartIOS = "AIzaSyB-63vPrdThhKuerbB2N_l7Kwwcxj6yUAc";
const kPartAndroid = "AIzaSyAOghZGza2MQSZkY_zfZ370N-PUdXEo8AI";
const allKeys = [kPartIOS, kPartAndroid];

String getUrl(int option) =>
    "https://music.youtube.com/youtubei/v1/player?key=${allKeys[option]}&prettyPrint=false";

Map<String, dynamic> getBody(int option) => {
      "context": option == 0 ? IOS_CONTEXT : ANDROID_CONTEXT,
    };
