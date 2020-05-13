/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SIGNALS5_H
#define SIGNALS5_H

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

//bool Signals5_connect_signal ( QObject * object, int signal, PHB_ITEM codeblock );
int Signals5_connect_signal( QObject * object, int signal, PHB_ITEM codeblock );
bool Signals5_disconnect_signal( QObject * object, int signal );
bool Signals5_is_signal_connected( QObject * object, int signal );
PHB_ITEM Signals5_return_codeblock( QObject * object, int signal );
//PHB_ITEM Signals5_return_codeblock( QObject * object, int signal, int indexOfCodeBlock );
PHB_ITEM Signals5_return_codeblock( int indexOfCodeBlock );
void Signals5_release_codeblocks();
void Signals5_disconnect_all_signals( QObject * obj, bool children );
bool Signals5_connection( QObject * s, int signal );
bool Signals5_connection( QObject * s, int signal, int & indexOfCodeBlock );
bool Signals5_disconnection( QObject * s, int signal );
PHB_ITEM Signals5_return_object( void * ptr, const char * classname );
PHB_ITEM Signals5_return_qobject( QObject * ptr, const char * classname );
//bool Signals5_store_connection( QObject * s, int signal, QMetaObject::Connection connection );
bool Signals5_store_connection( int index, QMetaObject::Connection connection );
QMetaObject::Connection Signals5_get_connection( QObject * s, int signal );

class Signals5: public QObject
{
  public:
  Signals5( QObject *parent = nullptr );
  ~Signals5();
  QVector<QObject*> list1;                // armazena ponteiro do objeto
  QVector<int> list2;                     // armazena indice do sinal
  QVector<PHB_ITEM> list3;                // armazena codeblock
  QVector<QMetaObject::Connection> list4; // handle da conexão
  QMutex * mutex;
};

#endif /* SIGNALS5_H */
