cordova.define('cordova/plugin_list', function(require, exports, module) {
module.exports = [
  {
    "id": "cordova-plugin-network-information.network",
    "file": "plugins/cordova-plugin-network-information/www/network.js",
    "pluginId": "cordova-plugin-network-information",
    "clobbers": [
      "navigator.connection",
      "navigator.network.connection"
    ]
  },
  {
    "id": "cordova-plugin-network-information.Connection",
    "file": "plugins/cordova-plugin-network-information/www/Connection.js",
    "pluginId": "cordova-plugin-network-information",
    "clobbers": [
      "Connection"
    ]
  },
  {
    "id": "com.outsystems.plugins.applicationinfo.OSApplicationInfo",
    "file": "plugins/com.outsystems.plugins.applicationinfo/www/OSApplicationInfo.js",
    "pluginId": "com.outsystems.plugins.applicationinfo",
    "clobbers": [
      "OutSystemsNative.ApplicationInfo"
    ]
  },
  {
    "id": "com.outsystems.plugins.logger.OSLogger",
    "file": "plugins/com.outsystems.plugins.logger/www/OSLogger.js",
    "pluginId": "com.outsystems.plugins.logger",
    "clobbers": [
      "OutSystemsNative.Logger"
    ]
  },
  {
    "id": "cordova-plugin-device.device",
    "file": "plugins/cordova-plugin-device/www/device.js",
    "pluginId": "cordova-plugin-device",
    "clobbers": [
      "device"
    ]
  },
  {
    "id": "cordova-plugin-splashscreen.SplashScreen",
    "file": "plugins/cordova-plugin-splashscreen/www/splashscreen.js",
    "pluginId": "cordova-plugin-splashscreen",
    "clobbers": [
      "navigator.splashscreen"
    ]
  },
  {
    "id": "com.outsystems.plugins.filechooser.FileChooser",
    "file": "plugins/com.outsystems.plugins.filechooser/www/FileChooser.js",
    "pluginId": "com.outsystems.plugins.filechooser",
    "clobbers": [
      "FileChooser"
    ]
  },
  {
    "id": "cordova-plugin-statusbar.statusbar",
    "file": "plugins/cordova-plugin-statusbar/www/statusbar.js",
    "pluginId": "cordova-plugin-statusbar",
    "clobbers": [
      "window.StatusBar"
    ]
  },
  {
    "id": "cordova-sqlite-storage.SQLitePlugin",
    "file": "plugins/cordova-sqlite-storage/www/SQLitePlugin.js",
    "pluginId": "cordova-sqlite-storage",
    "clobbers": [
      "SQLitePlugin"
    ]
  },
  {
    "id": "com.outsystems.plugins.osdbupgrader.OSDbUpgrader",
    "file": "plugins/com.outsystems.plugins.osdbupgrader/www/OSDbUpgrader.js",
    "pluginId": "com.outsystems.plugins.osdbupgrader",
    "clobbers": [
      "OSDbUpgrader"
    ]
  },
  {
    "id": "com.outsystems.plugins.oscache.OSCache",
    "file": "plugins/com.outsystems.plugins.oscache/www/OSCache.js",
    "pluginId": "com.outsystems.plugins.oscache",
    "clobbers": [
      "OSCache"
    ]
  },
  {
    "id": "com.outsystems.plugins.deeplinks.OSDeepLinks",
    "file": "plugins/com.outsystems.plugins.deeplinks/www/OSDeepLinks.js",
    "pluginId": "com.outsystems.plugins.deeplinks",
    "clobbers": [
      "OSDeepLinks"
    ]
  },
  {
    "id": "cordova-plugin-webviewcolor.WebViewColor",
    "file": "plugins/cordova-plugin-webviewcolor/www/WebViewColor.js",
    "pluginId": "cordova-plugin-webviewcolor",
    "clobbers": [
      "window.plugins.webviewcolor"
    ]
  }
];
module.exports.metadata = 
// TOP OF METADATA
{
  "cordova-plugin-network-information": "2.0.1",
  "com.outsystems.plugins.broadcaster": "1.0.4",
  "com.outsystems.plugins.ossecurity": "1.2.3",
  "com.outsystems.plugins.applicationinfo": "1.0.2",
  "com.outsystems.plugins.logger": "1.2.4-2",
  "com.outsystems.plugins.crashhandler": "1.0.3",
  "cordova-plugin-whitelist": "1.3.3",
  "cordova-plugin-device": "1.1.3",
  "cordova-plugin-splashscreen": "5.0.2",
  "com.outsystems.plugins.filechooser": "1.0.1",
  "cordova-plugin-statusbar": "2.4.2-OS2",
  "cordova-sqlite-storage": "1.4.5-OS4",
  "com.outsystems.plugins.osdbupgrader": "1.1.5",
  "com.outsystems.plugins.oscache": "2.4.5",
  "com.outsystems.plugins.manifest": "1.1.2",
  "com.outsystems.plugins.prebundle": "1.5.3",
  "com.outsystems.plugins.loader": "1.10.5",
  "com.outsystems.plugins.deeplinks": "1.1.2",
  "cordova-plugin-webviewcolor": "2.1.0"
};
// BOTTOM OF METADATA
});