import 'package:electrical_store_mobile/ui/provider/mode_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'app/app.dart';

void main() {
  runApp(
    ChangeNotifierProvider(create: (context)=>ModeProvider(),
   child:  const App() )
    
  );
}

