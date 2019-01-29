/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SIGNALS3_H
#define SIGNALS3_H

#include <QObject>
#include <QMetaObject>
#include <QMetaMethod>
#include <QVector>
#include <QList>
#include <QCoreApplication>
#include <QString>
#include <QMutex>

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#endif

bool Signals3_connect_signal ( QObject * object, int signal, PHB_ITEM codeblock );
bool Signals3_disconnect_signal ( QObject * object, int signal );
bool Signals3_is_signal_connected ( QObject * object, int signal );
PHB_ITEM Signals3_return_codeblock ( QObject * object, int signal );
void Signals3_release_codeblocks ();
void Signals3_disconnect_all_signals (QObject * obj, bool children);
bool Signals3_connection ( QObject * s, int signal );
bool Signals3_disconnection ( QObject * s, int signal );
PHB_ITEM Signals3_return_object ( void * ptr, const char * classname );
PHB_ITEM Signals3_return_qobject ( QObject * ptr, const char * classname );
bool Signals3_store_connection ( QObject * s, int signal, QMetaObject::Connection connection );
QMetaObject::Connection Signals3_get_connection ( QObject * s, int signal );

class Signals3: public QObject
{
  public:
  Signals3(QObject *parent = nullptr);
  ~Signals3();
  QVector<QObject*> list1;                // armazena ponteiro do objeto
  QVector<int> list2;                     // armazena indice do sinal
  QVector<PHB_ITEM> list3;                // armazena codeblock
  QVector<bool> list4;                    // ativo (true) ou liberado (false)
  QVector<QMetaObject::Connection> list5; // handle da conexão
  QMutex * mutex;
};

#endif
