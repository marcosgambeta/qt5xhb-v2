/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2022 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QT5XHB_MACROS_QTPRINTSUPPORT_H
#define QT5XHB_MACROS_QTPRINTSUPPORT_H

#define ISQABSTRACTPRINTDIALOG( n )                         Qt5xHb::isObjectDerivedFrom( n, "QAbstractPrintDialog" )
#define ISQPAGESETUPDIALOG( n )                             Qt5xHb::isObjectDerivedFrom( n, "QPageSetupDialog" )
#define ISQPRINTDIALOG( n )                                 Qt5xHb::isObjectDerivedFrom( n, "QPrintDialog" )
#define ISQPRINTENGINE( n )                                 Qt5xHb::isObjectDerivedFrom( n, "QPrintEngine" )
#define ISQPRINTER( n )                                     Qt5xHb::isObjectDerivedFrom( n, "QPrinter" )
#define ISQPRINTERINFO( n )                                 Qt5xHb::isObjectDerivedFrom( n, "QPrinterInfo" )
#define ISQPRINTPREVIEWDIALOG( n )                          Qt5xHb::isObjectDerivedFrom( n, "QPrintPreviewDialog" )
#define ISQPRINTPREVIEWWIDGET( n )                          Qt5xHb::isObjectDerivedFrom( n, "QPrintPreviewWidget" )

#define PQABSTRACTPRINTDIALOG( n )                          static_cast< QAbstractPrintDialog * >( Qt5xHb::itemGetPtr( n ) )
#define PQPAGESETUPDIALOG( n )                              static_cast< QPageSetupDialog * >( Qt5xHb::itemGetPtr( n ) )
#define PQPRINTDIALOG( n )                                  static_cast< QPrintDialog * >( Qt5xHb::itemGetPtr( n ) )
#define PQPRINTENGINE( n )                                  static_cast< QPrintEngine * >( Qt5xHb::itemGetPtr( n ) )
#define PQPRINTER( n )                                      static_cast< QPrinter * >( Qt5xHb::itemGetPtr( n ) )
#define PQPRINTERINFO( n )                                  static_cast< QPrinterInfo * >( Qt5xHb::itemGetPtr( n ) )
#define PQPRINTPREVIEWDIALOG( n )                           static_cast< QPrintPreviewDialog * >( Qt5xHb::itemGetPtr( n ) )
#define PQPRINTPREVIEWWIDGET( n )                           static_cast< QPrintPreviewWidget * >( Qt5xHb::itemGetPtr( n ) )

#define OPQABSTRACTPRINTDIALOG( n, v )                      HB_ISNIL( n )? v : static_cast< QAbstractPrintDialog * >( Qt5xHb::itemGetPtr( n ) )
#define OPQPAGESETUPDIALOG( n, v )                          HB_ISNIL( n )? v : static_cast< QPageSetupDialog * >( Qt5xHb::itemGetPtr( n ) )
#define OPQPRINTDIALOG( n, v )                              HB_ISNIL( n )? v : static_cast< QPrintDialog * >( Qt5xHb::itemGetPtr( n ) )
#define OPQPRINTENGINE( n, v )                              HB_ISNIL( n )? v : static_cast< QPrintEngine * >( Qt5xHb::itemGetPtr( n ) )
#define OPQPRINTER( n, v )                                  HB_ISNIL( n )? v : static_cast< QPrinter * >( Qt5xHb::itemGetPtr( n ) )
#define OPQPRINTERINFO( n, v )                              HB_ISNIL( n )? v : static_cast< QPrinterInfo * >( Qt5xHb::itemGetPtr( n ) )
#define OPQPRINTPREVIEWDIALOG( n, v )                       HB_ISNIL( n )? v : static_cast< QPrintPreviewDialog * >( Qt5xHb::itemGetPtr( n ) )
#define OPQPRINTPREVIEWWIDGET( n, v )                       HB_ISNIL( n )? v : static_cast< QPrintPreviewWidget * >( Qt5xHb::itemGetPtr( n ) )

#endif /* QT5XHB_MACROS_QTPRINTSUPPORT_H */
