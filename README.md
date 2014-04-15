Cordova HiddenStatusbarOverlay Plugin
=======================================

Beginning with iOS 7 view controllers are displayed full screen, by default, as shown in [Figure 1][ios_guide]. This means they will cover the entire screen including the area underneath the status bar.

### Plugin's Purpose
The purpose of the [Cordova][cordova] plugin is to prevent the status bar from covering the view controller in iOS 7.


# Installation
The plugin can either be installed into the local development environment or cloud based through [PhoneGap Build][PGB].

### Adding the Plugin to your project
Through the [Command-line Interface][CLI]:
```bash
# ~~ from master ~~
cordova plugin add https://github.com/katzer/cordova-plugin-hidden-statusbar-overlay && cordova prepare
```
or to use the last stable version:
```bash
# ~~ stable version ~~
cordova plugin add de.appplant.cordova.plugin.hidden-statusbar-overlay && cordova prepare
```

### Removing the Plugin from your project
Through the [Command-line Interface][CLI]:
```bash
cordova plugin rm de.appplant.cordova.plugin.hidden-statusbar-overlay
```

### PhoneGap Build
Add the following xml to your config.xml to always use the latest version of this plugin:
```xml
<gap:plugin name="de.appplant.cordova.plugin.hidden-statusbar-overlay" />
```
or to use an specific version:
```xml
<gap:plugin name="de.appplant.cordova.plugin.hidden-statusbar-overlay" version="1.1.0" />
```
More informations can be found [here][PGB_plugin].


## Using the plugin
After installation, the statusbar and the overlay will be hidden now. The visibility of the status bar can be changed manually too.

### Hide the status bar
The overlay may appear again after some situations. In that case the overlay can be fadded out through the `statusbarOverlay.hide` interface.

```javascript
window.plugin.statusbarOverlay.hide();
```

### Show the status bar
To revert the changes, the status bar can become visible again through the `statusbarOverlay.show` interface.

```javascript
window.plugin.statusbarOverlay.show();
```

### Determine the status bar visibility
To determine if the status bar is hidden, the `statusbarOverlay.isHidden` interface can be used.<br>
The method takes a callback function as its arguments which will be called with the result.

```javascript
window.plugin.statusbarOverlay.isVisible( function (isVisible) {
	// console.log('status bar is visible') if isVisible;
});
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

This software is released under the [Apache 2.0 License][apache2_license].

© 2013-2014 appPlant UG, Inc. All rights reserved


[cordova]: https://cordova.apache.org
[ios_guide]: https://developer.apple.com/library/ios/qa/qa1797/_index.html
[CLI]: http://cordova.apache.org/docs/en/3.0.0/guide_cli_index.md.html#The%20Command-line%20Interface
[PGB]: http://docs.build.phonegap.com/en_US/3.3.0/index.html
[PGB_plugin]: https://build.phonegap.com/plugins/514
[examples]: #examples
[apache2_license]: http://opensource.org/licenses/Apache-2.0
