//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#ifndef QT5XHB_MACROS_QTWEBCHANNEL_H
#define QT5XHB_MACROS_QTWEBCHANNEL_H

#define ISQQMLWEBCHANNEL(n)                                 Qt5xHb::isObjectDerivedFrom(n, "QQmlWebChannel")
#define ISQWEBCHANNEL(n)                                    Qt5xHb::isObjectDerivedFrom(n, "QWebChannel")
#define ISQWEBCHANNELABSTRACTTRANSPORT(n)                   Qt5xHb::isObjectDerivedFrom(n, "QWebChannelAbstractTransport")

#define PQQMLWEBCHANNEL(n)                                  static_cast<QQmlWebChannel*>(Qt5xHb::itemGetPtr(n))
#define PQWEBCHANNEL(n)                                     static_cast<QWebChannel*>(Qt5xHb::itemGetPtr(n))
#define PQWEBCHANNELABSTRACTTRANSPORT(n)                    static_cast<QWebChannelAbstractTransport*>(Qt5xHb::itemGetPtr(n))

#define OPQQMLWEBCHANNEL(n, v)                              HB_ISNIL(n) ? v : static_cast<QQmlWebChannel*>(Qt5xHb::itemGetPtr(n))
#define OPQWEBCHANNEL(n, v)                                 HB_ISNIL(n) ? v : static_cast<QWebChannel*>(Qt5xHb::itemGetPtr(n))
#define OPQWEBCHANNELABSTRACTTRANSPORT(n, v)                HB_ISNIL(n) ? v : static_cast<QWebChannelAbstractTransport*>(Qt5xHb::itemGetPtr(n))

#endif // QT5XHB_MACROS_QTWEBCHANNEL_H
