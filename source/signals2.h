/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SIGNALS2_H
#define SIGNALS2_H

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

bool Signals2_connect_signal ( QObject * object, QString signal, PHB_ITEM codeblock );
bool Signals2_disconnect_signal ( QObject * object, QString signal );
bool Signals2_is_signal_connected ( QObject * object, QString signal );
PHB_ITEM Signals2_return_codeblock ( QObject * object, QString signal );
void Signals2_release_codeblocks ();
void Signals2_disconnect_all_signals (QObject * obj, bool children);
bool Signals2_connection ( QObject * s, QString signal );
bool Signals2_disconnection ( QObject * s, QString signal );
PHB_ITEM Signals2_return_object ( void * ptr, const char * classname );
PHB_ITEM Signals2_return_qobject ( QObject * ptr, const char * classname );
bool Signals2_store_connection ( QObject * s, QString signal, QMetaObject::Connection connection );
QMetaObject::Connection Signals2_get_connection ( QObject * s, QString signal );

class Signals2: public QObject
{
  public:
  Signals2(QObject *parent = nullptr);
  ~Signals2();
  QVector<QObject*> list1;                // armazena ponteiro do objeto
  QVector<QString> list2;                 // armazena assinatura do sinal
  QVector<PHB_ITEM> list3;                // armazena codeblock
  QVector<bool> list4;                    // ativo (true) ou liberado (false)
  QVector<QMetaObject::Connection> list5; // handle da conexão
  QMutex * mutex;
};

#endif
