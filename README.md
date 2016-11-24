# Haxe js externs for Apache Cordova / PhoneGap

Compatible with Haxe 3.2+.

### List of supported externs

* [cordova-plugin-file](https://github.com/apache/cordova-plugin-file),
* [cordova-admob-pro](https://github.com/floatinghotpot/cordova-admob-pro),
* [cordova-plugin-ble-central](https://github.com/don/cordova-plugin-ble-central),
* [cordova-plugin-bluetooth-serial](https://github.com/don/BluetoothSerial),
* [cordova-plugin-calendar](https://github.com/EddyVerbruggen/Calendar-PhoneGap-Plugin),
* [cordova-plugin-camera](https://github.com/apache/cordova-plugin-camera),
* [com.verso.cordova.clipboard](https://github.com/VersoSolutions/CordovaClipboard),
* [cordova-plugin-datepicker](https://github.com/VitaliiBlagodir/cordova-plugin-datepicker),
* [cordova-plugin-device](https://github.com/apache/cordova-plugin-device),
* [cordova-plugin-email-composer](https://github.com/katzer/cordova-plugin-email-composer.git),
* [phonegap-facebook-plugin](https://github.com/Wizcorp/phonegap-facebook-plugin),
* [cordova-plugin-globalization](https://github.com/apache/cordova-plugin-globalization),
* [cordova-plugin-inappbrowser](https://github.com/apache/cordova-plugin-inappbrowser),
* [ionic-plugin-keyboard](https://github.com/driftyco/ionic-plugin-keyboard),
* [cordova-plugin-listpicker](https://github.com/roberthovhannisyan/PhoneGap-Plugin-ListPicker),
* [cordova-plugin-local-notifications](https://github.com/katzer/cordova-plugin-local-notifications),
* [cordova-plugin-media](https://github.com/apache/cordova-plugin-media),
* [cordova-plugin-network-information](https://github.com/apache/cordova-plugin-network-information),
* [cordova-open](https://github.com/disusered/cordova-open),
* [phonegap-plugin-push](https://github.com/phonegap/phonegap-plugin-push),
* [pushwoosh-cordova-plugin](https://github.com/Pushwoosh/pushwoosh-phonegap-plugin),
* [cordova-plugin-screen-orientation](https://github.com/gbenvenuti/cordova-plugin-screen-orientation),
* [cordova-plugin-x-socialsharing](https://github.com/EddyVerbruggen/SocialSharing-PhoneGap-Plugin),
* [cordova-plugin-splashscreen](https://github.com/apache/cordova-plugin-splashscreen),
* [cordova-plugin-statusbar](https://github.com/apache/cordova-plugin-statusbar),
* [cordova-plugin-streaming-media](https://github.com/nchutchind/cordova-plugin-streaming-media),
* [cordova-plugin-x-toast](https://github.com/EddyVerbruggen/Toast-PhoneGap-Plugin),
* [com.bunkerpalace.cordova.YoutubeVideoPlayer](https://github.com/Glitchbone/CordovaYoutubeVideoPlayer).

And more to come...

## API

Use example with the Camera plugin:
```
// hybrid app that differenciates cordova builds from web builds
#if cordova
			js.cordova.plugin.Camera.getPicture(

				function(pd : String) {

					// then send pd to server
				},

				function(e : String) {

					// display error to user
				},

				{
					allowEdit : true,
					targetWidth : 400,
					targetHeight : 400
				});
#else
			trace("camera not available on this platform");
#end
```

## Contributions

Those externs can sometimes partially cover their original lib. Do not hesitate to contribute with new externs, updates to existing externs or even better approaches for those externs.
