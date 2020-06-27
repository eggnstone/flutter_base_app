import 'package:eggnstone_flutter/eggnstone_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base/App.dart';
import 'package:get_it/get_it.dart';

void main()
{
    try
    {
        // Create a logger service that is switched on for debug builds.
        var logger = LoggerService(DartTools.isDebugBuild());
        GetIt.instance.registerSingleton<LoggerService>(logger);
        logger.logDebug('Logger started.');

        runApp(App());
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
