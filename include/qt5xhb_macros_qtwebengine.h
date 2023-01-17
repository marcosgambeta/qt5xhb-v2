/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QT5XHB_MACROS_QTWEBENGINE_H
#define QT5XHB_MACROS_QTWEBENGINE_H

#define ISQQUICKWEBENGINEPROFILE(n)                         Qt5xHb::isObjectDerivedFrom(n, "QQuickWebEngineProfile")
#define ISQQUICKWEBENGINESCRIPT(n)                          Qt5xHb::isObjectDerivedFrom(n, "QQuickWebEngineScript")
#define ISQTWEBENGINE(n)                                    Qt5xHb::isObjectDerivedFrom(n, "QtWebEngine")

#define PQQUICKWEBENGINEPROFILE(n)                          static_cast<QQuickWebEngineProfile*>(Qt5xHb::itemGetPtr(n))
#define PQQUICKWEBENGINESCRIPT(n)                           static_cast<QQuickWebEngineScript*>(Qt5xHb::itemGetPtr(n))
#define PQTWEBENGINE(n)                                     static_cast<QtWebEngine*>(Qt5xHb::itemGetPtr(n))

#define OPQQUICKWEBENGINEPROFILE(n, v)                      HB_ISNIL(n) ? v : static_cast<QQuickWebEngineProfile*>(Qt5xHb::itemGetPtr(n))
#define OPQQUICKWEBENGINESCRIPT(n, v)                       HB_ISNIL(n) ? v : static_cast<QQuickWebEngineScript*>(Qt5xHb::itemGetPtr(n))
#define OPQTWEBENGINE(n, v)                                 HB_ISNIL(n) ? v : static_cast<QtWebEngine*>(Qt5xHb::itemGetPtr(n))

#endif /* QT5XHB_MACROS_QTWEBENGINE_H */
