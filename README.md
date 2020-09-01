# flutter_base

A sample Flutter project using eggnstone services.

# TODOs to run this example

## Add your own google-services.json file

* Download ```google-services.json``` from Firebase to ```android/app```
* Download ```Info.plist``` from Firebase to ```ios/Runner```

# TODOs when building your own app

## Add your own google-services.json file

* Download ```google-services.json``` from Firebase to ```android/app```
* Download ```Info.plist``` from Firebase to ```ios/Runner``` 

## "Plugin project :url_launcher_web not found. Please update settings.gradle."
If you encounter this error then add the following to android/settings.gradle:
```
def flutterProjectRoot = rootProject.projectDir.parentFile.toPath()

def plugins = new Properties()
def pluginsFile = new File(flutterProjectRoot.toFile(), '.flutter-plugins')
if (pluginsFile.exists()) {
    pluginsFile.withReader('UTF-8') { reader -> plugins.load(reader) }
}

plugins.each { name, path ->
    def pluginDirectory = flutterProjectRoot.resolve(path).resolve('android').toFile()
    include ":$name"
    project(":$name").projectDir = pluginDirectory
}
```

## For Crashlytics to work add the following
- Add in ```android/build.gradle``` to ```buildscript / repositories```
```
maven {
    url 'https://maven.fabric.io/public'
}
```

- Add in ```android/app/build.gradle``` to ```buildscript / dependencies```
```
    classpath 'com.google.gms:google-services:4.3.0'
    classpath 'io.fabric.tools:gradle:1.26.1'
```
    
- Add at the bottom of ```android/build.gradle```
```
apply plugin: 'io.fabric'
apply plugin: 'com.google.gms.google-services'
```
