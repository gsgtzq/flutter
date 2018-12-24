import 'context.dart';

UserMessages get userMessages => context[UserMessages];

/// Class containing message strings that can be produced by Flutter tools.
class UserMessages {
  // Messages used in FlutterValidator
  String flutterStatusInfo(String channel, String version, String os, String locale) =>
      'Channel $channel, v$version, on $os, locale $locale';
  String flutterVersion(String version, String flutterRoot) =>
      'Flutter version $version at $flutterRoot';
  String flutterRevision(String revision, String age, String date) =>
      'Framework revision $revision ($age), $date';
  String engineRevision(String revision) => 'Engine revision $revision';
  String dartRevision(String revision) => 'Dart version $revision';
  String get flutterBinariesDoNotRun =>
      'Downloaded executables cannot execute on host.\n'
      'See https://github.com/flutter/flutter/issues/6207 for more information';
  String get flutterBinariesLinuxRepairCommands =>
      'On Debian/Ubuntu/Mint: sudo apt-get install lib32stdc++6\n'
      'On Fedora: dnf install libstdc++.i686\n'
      'On Arch: pacman -S lib32-gcc-libs';

  // Messages used in NoIdeValidator
  String get noIdeStatusInfo => 'No supported IDEs installed';
  String get noIdeInstallationInfo => 'IntelliJ - https://www.jetbrains.com/idea/';

  // Messages used in IntellijValidator
  String intellijStatusInfo(String version) => 'version $version';
  String get intellijPluginInfo =>
      'For information about installing plugins, see\n'
      'https://flutter.io/intellij-setup/#installing-the-plugins';
  String intellijMinimumVersion(String minVersion) =>
      'This install is older than the minimum recommended version of $minVersion.';
  String intellijLocation(String installPath) => 'IntelliJ at $installPath';

  // Message used in IntellijValidatorOnMac
  String get intellijMacUnknownResult => 'Cannot determine if IntelliJ is installed';

  // Messages used in DeviceValidator
  String get devicesMissing => 'No devices available';
  String devicesAvailable(int devices) => '$devices available';

  // Messages used in AndroidValidator
  String androidCantRunJavaBinary(String javaBinary) => 'Cannot execute $javaBinary to determine the version';
  String get androidUnknownJavaVersion => 'Could not determine java version';
  String androidJavaVersion(String javaVersion) => 'Java version $javaVersion';
  String androidBadSdkDir(String envKey, String homeDir) =>
      '$envKey = $homeDir\n'
      'but Android SDK not found at this location.';
  String androidMissingSdkInstructions(String envKey) =>
      'Unable to locate Android SDK.\n'
      'Install Android Studio from: https://developer.android.com/studio/index.html\n'
      'On first launch it will assist you in installing the Android SDK components.\n'
      '(or visit https://flutter.io/setup/#android-setup for detailed instructions).\n'
      'If Android SDK has been installed to a custom location, set $envKey to that location.\n'
      'You may also want to add it to your PATH environment variable.\n';
  String androidSdkLocation(String directory) => 'Android SDK at $directory';
  String androidSdkPlatformToolsVersion(String platform, String tools) =>
      'Platform $platform, build-tools $tools';
  String get androidSdkInstallHelp =>
      'Try re-installing or updating your Android SDK,\n'
      'visit https://flutter.io/setup/#android-setup for detailed instructions.';
  String get androidMissingNdk => 'Android NDK location not configured (optional; useful for native profiling support)';
  String androidNdkLocation(String directory) => 'Android NDK at $directory';
  // Also occurs in AndroidLicenseValidator
  String androidStatusInfo(String version) => 'Android SDK version $version';

  // Messages used in AndroidLicenseValidator
  String get androidMissingJdk =>
      'No Java Development Kit (JDK) found; You must have the environment '
      'variable JAVA_HOME set and the java binary in your PATH. '
      'You can download the JDK from https://www.oracle.com/technetwork/java/javase/downloads/.';
  String androidJdkLocation(String location) => 'Java binary at: $location';
  String get androidLicensesAll => 'All Android licenses accepted.';
  String get androidLicensesSome => 'Some Android licenses not accepted.  To resolve this, run: flutter doctor --android-licenses';
  String get androidLicensesNone => 'Android licenses not accepted.  To resolve this, run: flutter doctor --android-licenses';
  String get androidLicensesUnknown => 'Android license status unknown.';
  String androidSdkOutdated(String managerPath) =>
      'A newer version of the Android SDK is required. To update, run:\n'
      '$managerPath --update\n';
  String androidLicensesTimeout(String managerPath) => 'Intentionally killing $managerPath';
  String get androidSdkShort => 'Unable to locate Android SDK.';
  String androidMissingSdkManager(String sdkManagerPath) =>
      'Android sdkmanager tool not found ($sdkManagerPath).\n'
      'Try re-installing or updating your Android SDK,\n'
      'visit https://flutter.io/setup/#android-setup for detailed instructions.';

  // Messages used in AndroidStudioValidator
  String androidStudioVersion(String version) => 'version $version';
  String androidStudioLocation(String location) => 'Android Studio at $location';
  String get androidStudioNeedsUpdate => 'Try updating or re-installing Android Studio.';
  String get androidStudioResetDir =>
      'Consider removing your android-studio-dir setting by running:\n'
      'flutter config --android-studio-dir=';

  // Messages used in NoAndroidStudioValidator
  String androidStudioMissing(String location) =>
      'android-studio-dir = $location\n'
      'but Android Studio not found at this location.';
  String get androidStudioInstallation =>
      'Android Studio not found; download from https://developer.android.com/studio/index.html\n'
      '(or visit https://flutter.io/setup/#android-setup for detailed instructions).';

  // Messages used in IOSValidator
  String iOSXcodeLocation(String location) => 'Xcode at $location';
  String iOSXcodeOutdated(int versionMajor, int versionMinor) =>
      'Flutter requires a minimum Xcode version of $versionMajor.$versionMinor.0.\n'
      'Download the latest version or update via the Mac App Store.';
  String get iOSXcodeEula => 'Xcode end user license agreement not signed; open Xcode or run the command \'sudo xcodebuild -license\'.';
  String get iOSXcodeMissingSimct =>
      'Xcode requires additional components to be installed in order to run.\n'
      'Launch Xcode and install additional required components when prompted.';
  String get iOSXcodeMissing =>
      'Xcode not installed; this is necessary for iOS development.\n'
      'Download at https://developer.apple.com/xcode/download/.';
  String get iOSXcodeIncomplete =>
      'Xcode installation is incomplete; a full installation is necessary for iOS development.\n'
      'Download at: https://developer.apple.com/xcode/download/\n'
      'Or install Xcode via the App Store.\n'
      'Once installed, run:\n'
      '  sudo xcode-select --switch /Applications/Xcode.app/Contents/Developer';
  String get iOSIMobileDeviceMissing =>
      'libimobiledevice and ideviceinstaller are not installed. To install with Brew, run:\n'
      '  brew update\n'
      '  brew install --HEAD usbmuxd\n'
      '  brew link usbmuxd\n'
      '  brew install --HEAD libimobiledevice\n'
      '  brew install ideviceinstaller';
  String get iOSIMobileDeviceBroken =>
      'Verify that all connected devices have been paired with this computer in Xcode.\n'
      'If all devices have been paired, libimobiledevice and ideviceinstaller may require updating.\n'
      'To update with Brew, run:\n'
      '  brew update\n'
      '  brew uninstall --ignore-dependencies libimobiledevice\n'
      '  brew uninstall --ignore-dependencies usbmuxd\n'
      '  brew install --HEAD usbmuxd\n'
      '  brew unlink usbmuxd\n'
      '  brew link usbmuxd\n'
      '  brew install --HEAD libimobiledevice\n'
      '  brew install ideviceinstaller';
  String get iOSDeviceInstallerMissing =>
      'ideviceinstaller is not installed; this is used to discover connected iOS devices.\n'
      'To install with Brew, run:\n'
      '  brew install --HEAD usbmuxd\n'
      '  brew link usbmuxd\n'
      '  brew install --HEAD libimobiledevice\n'
      '  brew install ideviceinstaller';
  String iOSDeployVersion(String version) => 'ios-deploy $version';
  String iOSDeployOutdated(String minVersion) =>
      'ios-deploy out of date ($minVersion is required). To upgrade with Brew:\n'
      '  brew upgrade ios-deploy';
  String get iOSDeployMissing =>
      'ios-deploy not installed. To install:\n'
      '  brew install ios-deploy';
  String get iOSBrewMissing =>
      'Brew can be used to install tools for iOS device development.\n'
      'Download brew at https://brew.sh/.';

  // Messages used in CocoaPodsValidator
  String cocoaPodsVersion(String version) => 'CocoaPods version $version';
  String cocoaPodsUninitialized(String consequence) =>
      'CocoaPods installed but not initialized.\n'
      '$consequence\n'
      'To initialize CocoaPods, run:\n'
      '  pod setup\n'
      'once to finalize CocoaPods\' installation.';
  String cocoaPodsMissing(String consequence, String installInstructions) =>
      'CocoaPods not installed.\n'
      '$consequence\n'
      'To install:\n'
      '$installInstructions';
  String cocoaPodsOutdated(String recVersion, String consequence, String upgradeInstructions) =>
      'CocoaPods out of date ($recVersion is recommended).\n'
      '$consequence\n'
      'To upgrade:\n'
      '$upgradeInstructions';

  // Messages used in VsCodeValidator
  String vsCodeVersion(String version) => 'version $version';
  String vsCodeLocation(String location) => 'VS Code at $location';
  String vsCodeFlutterExtensionMissing(String url) => 'Flutter extension not installed; install from\n$url';
}
