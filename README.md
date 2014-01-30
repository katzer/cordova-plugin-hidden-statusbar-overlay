Cordova HiddenStatusBarOverlay Plugin
=======================================

Cordova 3.x.x plugin to hide the statusbar and overlay on iOS.

by Sebastián Katzer ([github.com/katzer](https://github.com/katzer))


## Supported Platforms
- iOS


## Adding the Plugin to your project
Through the [Command-line Interface](http://cordova.apache.org/docs/en/3.0.0/guide_cli_index.md.html#The%20Command-line%20Interface):
```
cordova plugin add https://github.com/katzer/cordova-plugin-hidden-statusbar-overlay
```

## Removing the Plugin from your project
Through the [Command-line Interface](http://cordova.apache.org/docs/en/3.0.0/guide_cli_index.md.html#The%20Command-line%20Interface):
```
cordova plugin rm de.appplant.cordova.plugin.hidden-statusbar-overlay
```


## Release Notes
### Version 1.0.0 (30.01.2014)
- Initial release of the plugin.


## Using the plugin
Simply install the plugin and nothing more. The statusbar and overlay will be hidden now.


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
