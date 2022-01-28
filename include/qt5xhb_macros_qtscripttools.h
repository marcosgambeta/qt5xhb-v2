/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2022 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QT5XHB_MACROS_QTSCRIPTTOOLS_H
#define QT5XHB_MACROS_QTSCRIPTTOOLS_H

#define ISQSCRIPTENGINEDEBUGGER( n )                        Qt5xHb::isObjectDerivedFrom( n, "QScriptEngineDebugger" )

#define PQSCRIPTENGINEDEBUGGER( n )                         static_cast< QScriptEngineDebugger * >( Qt5xHb::itemGetPtr( n ) )

#define OPQSCRIPTENGINEDEBUGGER( n, v )                     HB_ISNIL( n )? v : static_cast< QScriptEngineDebugger * >( Qt5xHb::itemGetPtr( n ) )

#endif /* QT5XHB_MACROS_QTSCRIPTTOOLS_H */
