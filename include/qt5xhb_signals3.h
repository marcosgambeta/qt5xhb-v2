/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef QT5XHB_SIGNALS3_H
#define QT5XHB_SIGNALS3_H

bool Signals3_connect_signal ( QObject * object, int signal, PHB_ITEM codeblock );
bool Signals3_disconnect_signal ( QObject * object, int signal );
bool Signals3_is_signal_connected( QObject * object, int signal );
PHB_ITEM Signals3_return_codeblock ( QObject * object, int signal );
void Signals3_release_codeblocks ();
void Signals3_disconnect_all_signals (QObject * obj, bool children);
bool Signals3_connection ( QObject * s, int signal );
bool Signals3_disconnection ( QObject * s, int signal );
PHB_ITEM Signals3_return_object ( void * ptr, const char * classname );
PHB_ITEM Signals3_return_qobject ( QObject * ptr, const char * classname );
bool Signals3_store_connection ( QObject * s, int signal, QMetaObject::Connection connection );
QMetaObject::Connection Signals3_get_connection ( QObject * s, int signal );

#endif /* QT5XHB_SIGNALS3_H */
