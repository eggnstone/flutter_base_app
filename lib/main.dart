import 'package:eggnstone_flutter/eggnstone_flutter.dart';
import 'package:eggnstone_google_analytics/eggnstone_google_analytics.dart';
import 'package:eggnstone_google_crashlytics/eggnstone_google_crashlytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base/App.dart';
import 'package:get_it/get_it.dart';

void main()
async
{
    try
    {
        WidgetsFlutterBinding.ensureInitialized();

        await Firebase.initializeApp();

        // Create a logger service that is switched on for debug builds.
        var logger = LoggerService(DartTools.isDebugBuild());
        GetIt.instance.registerSingleton<LoggerService>(logger);

        var analytics = await GoogleAnalyticsService.create(true);
        // Creates a Google Analytics service that is switched on for release builds.
        //var analytics = await GoogleAnalyticsService.create(DartTools.isReleaseBuild());
        GetIt.instance.registerSingleton<IAnalyticsService>(analytics);

        var crashlytics = await GoogleCrashlyticsService.create(null, true);
        // Creates a Google Crashlytics service that is switched on for release builds.
        //var crashlytics = await CrashlyticsService.create(null, DartTools.isReleaseBuild());
        GetIt.instance.registerSingleton<ICrashlyticsService>(crashlytics);

        crashlytics.run(App());
    }
    catch (e, stackTrace)
    {
        print('####################################################################################################');
        print('# ERROR caught by main');
        print(e.toString());

        if (stackTrace == null)
            print('No stacktrace available.');
        else
            print(stackTrace.toString());

        print('# ERROR caught by main');
        print('####################################################################################################');
    }
}
