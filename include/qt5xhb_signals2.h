/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef QT5XHB_SIGNALS2_H
#define QT5XHB_SIGNALS2_H

bool Signals2_connect_signal ( QObject * object, QString signal, PHB_ITEM codeblock );
bool Signals2_disconnect_signal ( QObject * object, QString signal );
bool Signals2_is_signal_connected( QObject * object, QString signal );
PHB_ITEM Signals2_return_codeblock ( QObject * object, QString signal );
void Signals2_release_codeblocks ();
void Signals2_disconnect_all_signals (QObject * obj);
bool Signals2_connection ( QObject * s, QString signal );
bool Signals2_disconnection ( QObject * s, QString signal );
PHB_ITEM Signals2_return_object ( void * ptr, const char * classname );
PHB_ITEM Signals2_return_qobject ( QObject * ptr, const char * classname );
bool Signals2_store_connection ( QObject * s, QString signal, QMetaObject::Connection connection );
QMetaObject::Connection Signals2_get_connection ( QObject * s, QString signal );

#endif /* QT5XHB_SIGNALS2_H */
