import 'package:flutter/material.dart';
import 'package:flutter_base/App.dart';

void main()
{
    try
    {
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
