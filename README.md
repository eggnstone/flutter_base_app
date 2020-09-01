# flutter_base

A sample Flutter project using eggnstone services.

# TODOs to run this example

## Add your own google-services.json/Info.plist files

* Download ```google-services.json``` from Firebase to ```android/app```
* Download ```Info.plist``` from Firebase to ```ios/Runner```

# TODOs when building your own app

## Add your own google-services.json/Info.plist files

* Download ```google-services.json``` from Firebase to ```android/app```
* Download ```Info.plist``` from Firebase to ```ios/Runner``` 

## For Crashlytics to work add the following
- In ```android/build.gradle``` add the following to ```buildscript / repositories```
```
maven {
    url 'https://maven.fabric.io/public'
}
```

- In ```android/app/build.gradle``` add the following to ```buildscript / dependencies```
```
classpath 'com.google.gms:google-services:4.3.3'
classpath 'io.fabric.tools:gradle:1.31.2'
```
    
- Add at the bottom of ```android/build.gradle```
```
apply plugin: 'io.fabric'
apply plugin: 'com.google.gms.google-services'
```
