cordova.define('cordova/plugin_list', function(require, exports, module) {
module.exports = [
    {
        "id": "cordova-plugin-hidden-statusbar-overlay.HiddenStatusbarOverlay",
        "file": "plugins/cordova-plugin-hidden-statusbar-overlay/www/hidden-statusbar-overlay.js",
        "pluginId": "cordova-plugin-hidden-statusbar-overlay",
        "clobbers": [
            "cordova.plugins.statusbarOverlay"
        ]
    }
];
module.exports.metadata = 
// TOP OF METADATA
{
    "cordova-plugin-hidden-statusbar-overlay": "2.0.0"
};
// BOTTOM OF METADATA
});