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

//bool Signals_connect_signal( QObject * object, int signal, PHB_ITEM codeblock );
int Signals_connect_signal( QObject * object, int signal, PHB_ITEM codeblock );
bool Signals_disconnect_signal( QObject * object, int signal );
bool Signals_is_signal_connected( QObject * object, int signal );
PHB_ITEM Signals_return_codeblock( QObject * object, int signal );
//PHB_ITEM Signals_return_codeblock( QObject * object, int signal, int indexOfCodeBlock );
PHB_ITEM Signals_return_codeblock( int indexOfCodeBlock );
void Signals_release_codeblocks();
void Signals_disconnect_all_signals( QObject * obj, bool children );
bool Signals_connection( QObject * s, int signal );
bool Signals_connection( QObject * s, int signal, int & indexOfCodeBlock );
bool Signals_disconnection( QObject * s, int signal );
PHB_ITEM Signals_return_object( void * ptr, const char * classname );
PHB_ITEM Signals_return_qobject( QObject * ptr, const char * classname );
//bool Signals_store_connection( QObject * s, int signal, QMetaObject::Connection connection );
bool Signals_store_connection( int index, QMetaObject::Connection connection );
QMetaObject::Connection Signals_get_connection( QObject * s, int signal );

class Signals: public QObject
{
  public:
  Signals( QObject *parent = nullptr );
  ~Signals();
  QVector<QObject*> list1;                // armazena ponteiro do objeto
  QVector<int> list2;                     // armazena indice do sinal
  QVector<PHB_ITEM> list3;                // armazena codeblock
  QVector<QMetaObject::Connection> list4; // handle da conex�o
  QMutex * mutex;
};

#endif /* SIGNALS_H */