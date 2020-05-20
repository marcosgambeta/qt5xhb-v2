/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SIGNALS_H
#define SIGNALS_H

#include <QtCore/QObject>
#include <QtCore/QMetaObject>
#include <QtCore/QMetaMethod>
#include <QtCore/QVector>
#include <QtCore/QList>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>
#include <QtCore/QMutex>

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#endif

namespace Qt5xHb
{
  int Signals_connect_signal( QObject * object, int signal, PHB_ITEM codeblock );
  bool Signals_disconnect_signal( QObject * object, int signal );
  bool Signals_is_signal_connected( QObject * object, int signal );
  PHB_ITEM Signals_return_codeblock( int indexOfCodeBlock );
  void Signals_disconnect_all_signals( QObject * obj, bool children );
  bool Signals_connection( QObject * s, int signal, int & indexOfCodeBlock );
  bool Signals_disconnection( QObject * s, int signal );
  PHB_ITEM Signals_return_object( void * ptr, const char * classname );
  PHB_ITEM Signals_return_qobject( QObject * ptr, const char * classname );
  bool Signals_store_connection( int index, QMetaObject::Connection connection );
  QMetaObject::Connection Signals_get_connection( QObject * s, int signal );
}

#endif /* SIGNALS_H */
