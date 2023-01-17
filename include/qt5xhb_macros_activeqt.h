/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QT5XHB_MACROS_ACTIVEQT_H
#define QT5XHB_MACROS_ACTIVEQT_H

#define ISQAXBASE(n)                                        Qt5xHb::isObjectDerivedFrom(n, "QAxBase")
#define ISQAXBINDABLE(n)                                    Qt5xHb::isObjectDerivedFrom(n, "QAxBindable")
#define ISQAXFACTORY(n)                                     Qt5xHb::isObjectDerivedFrom(n, "QAxFactory")
#define ISQAXOBJECT(n)                                      Qt5xHb::isObjectDerivedFrom(n, "QAxObject")
#define ISQAXSCRIPT(n)                                      Qt5xHb::isObjectDerivedFrom(n, "QAxScript")
#define ISQAXSCRIPTENGINE(n)                                Qt5xHb::isObjectDerivedFrom(n, "QAxScriptEngine")
#define ISQAXSCRIPTMANAGER(n)                               Qt5xHb::isObjectDerivedFrom(n, "QAxScriptManager")
#define ISQAXSELECT(n)                                      Qt5xHb::isObjectDerivedFrom(n, "QAxSelect")
#define ISQAXWIDGET(n)                                      Qt5xHb::isObjectDerivedFrom(n, "QAxWidget")

#define PQAXBASE(n)                                         static_cast<QAxBase*>(Qt5xHb::itemGetPtr(n))
#define PQAXBINDABLE(n)                                     static_cast<QAxBindable*>(Qt5xHb::itemGetPtr(n))
#define PQAXFACTORY(n)                                      static_cast<QAxFactory*>(Qt5xHb::itemGetPtr(n))
#define PQAXOBJECT(n)                                       static_cast<QAxObject*>(Qt5xHb::itemGetPtr(n))
#define PQAXSCRIPT(n)                                       static_cast<QAxScript*>(Qt5xHb::itemGetPtr(n))
#define PQAXSCRIPTENGINE(n)                                 static_cast<QAxScriptEngine*>(Qt5xHb::itemGetPtr(n))
#define PQAXSCRIPTMANAGER(n)                                static_cast<QAxScriptManager*>(Qt5xHb::itemGetPtr(n))
#define PQAXSELECT(n)                                       static_cast<QAxSelect*>(Qt5xHb::itemGetPtr(n))
#define PQAXWIDGET(n)                                       static_cast<QAxWidget*>(Qt5xHb::itemGetPtr(n))

#define OPQAXBASE(n, v)                                     HB_ISNIL(n) ? v : static_cast<QAxBase*>(Qt5xHb::itemGetPtr(n))
#define OPQAXBINDABLE(n, v)                                 HB_ISNIL(n) ? v : static_cast<QAxBindable*>(Qt5xHb::itemGetPtr(n))
#define OPQAXFACTORY(n, v)                                  HB_ISNIL(n) ? v : static_cast<QAxFactory*>(Qt5xHb::itemGetPtr(n))
#define OPQAXOBJECT(n, v)                                   HB_ISNIL(n) ? v : static_cast<QAxObject*>(Qt5xHb::itemGetPtr(n))
#define OPQAXSCRIPT(n, v)                                   HB_ISNIL(n) ? v : static_cast<QAxScript*>(Qt5xHb::itemGetPtr(n))
#define OPQAXSCRIPTENGINE(n, v)                             HB_ISNIL(n) ? v : static_cast<QAxScriptEngine*>(Qt5xHb::itemGetPtr(n))
#define OPQAXSCRIPTMANAGER(n, v)                            HB_ISNIL(n) ? v : static_cast<QAxScriptManager*>(Qt5xHb::itemGetPtr(n))
#define OPQAXSELECT(n, v)                                   HB_ISNIL(n) ? v : static_cast<QAxSelect*>(Qt5xHb::itemGetPtr(n))
#define OPQAXWIDGET(n, v)                                   HB_ISNIL(n) ? v : static_cast<QAxWidget*>(Qt5xHb::itemGetPtr(n))

#endif /* QT5XHB_MACROS_ACTIVEQT_H */
