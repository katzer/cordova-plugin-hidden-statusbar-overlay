Cordova HiddenStatusbarOverlay Plugin
=======================================

Cordova 3.x.x plugin to hide the statusbar and overlay on iOS.

by Sebastián Katzer ([github.com/katzer](https://github.com/katzer))


## Supported Platforms
- iOS


## Adding the Plugin to your project
Through the [Command-line Interface](http://cordova.apache.org/docs/en/3.0.0/guide_cli_index.md.html#The%20Command-line%20Interface):
```bash
# from master:
cordova plugin add https://github.com/katzer/cordova-plugin-hidden-statusbar-overlay
cordova build

# last version:
cordova plugin add de.appplant.cordova.plugin.hidden-statusbar-overlay
cordova build
```

## Removing the Plugin from your project
Through the [Command-line Interface](http://cordova.apache.org/docs/en/3.0.0/guide_cli_index.md.html#The%20Command-line%20Interface):
```bash
cordova plugin rm de.appplant.cordova.plugin.hidden-statusbar-overlay
```


## PhoneGap Build
Add the following xml to your config.xml to always use the latest version of this plugin:
```
<gap:plugin name="de.appplant.cordova.plugin.hidden-statusbar-overlay" />
```
or to use this exact version:
```
<gap:plugin name="de.appplant.cordova.plugin.hidden-statusbar-overlay" version="0.1.0" />
```
More informations can be found [here](https://build.phonegap.com/plugins/438).


## Release Notes
#### Version 1.1.0 (26.02.2014)
- JS Interface to hide the overlay if needed.

#### Version 1.0.0 (30.01.2014)
- Initial release of the plugin.


## Using the plugin
Simply install the plugin and nothing more. The statusbar and the overlay will be hidden now.

The overlay may appear again after some situations. In that case the overlay can be fadded out through the following JS interface:
```javascript
window.plugin.statusbarOverlay.hide();
```


## Note for other platforms
Cordova has the ability to hide and show the statusbar for each platform. Simply add the following snippet to the plugin.xml:
```xml
<preference name="Fullscreen" value="true" />
```
It only does not hide the overlay on iOS 7 and above.


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request


## License

This software is released under the [Apache 2.0 License](http://opensource.org/licenses/Apache-2.0).
