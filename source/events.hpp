//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#ifndef EVENTS_H
#define EVENTS_H

#include <QtCore/QObject>
#include <QtCore/QEvent>
#include <QtCore/QVector>
#include <QtCore/QList>
#include <QtCore/QCoreApplication>
#include <QtCore/QMetaEnum>
#include <QtCore/QMutex>

#include <hbapi.h>
#include <hbapiitm.h>
#include <hbapierr.h>
#include <hbvm.h>
#include <hbstack.h>
#ifndef __XHARBOUR__
#include <hbapicls.h>
#endif

namespace Qt5xHb
{
bool Events_connect_event(QObject *object, int type, PHB_ITEM codeblock);
bool Events_disconnect_event(QObject *object, int type);
void Events_disconnect_all_events(QObject *obj, bool children);
} // namespace Qt5xHb

class Events : public QObject
{
public:
  Events(QObject *parent = nullptr);
  ~Events();

private:
  QVector<QObject *> *m_list1;    // armazenamento dos objetos
  QVector<QEvent::Type> *m_list2; // armazenamento dos tipos de evento
  QVector<PHB_ITEM> *m_list3;     // armazenamento dos codeblock's
  QMutex *m_mutex;
  QHash<QEvent::Type, QString> *m_events;

protected:
  bool eventFilter(QObject *obj, QEvent *event);

public:
  bool connectEvent(QObject *object, int type, PHB_ITEM codeblock);
  bool disconnectEvent(QObject *object, int type);
  void disconnectAllEvents(QObject *obj, bool children);
  int size();
  int active();
  PHB_ITEM returnQEvent(QEvent *ptr, const char *classname);
  PHB_ITEM returnQObject(QObject *ptr, const char *classname);
};

#endif // EVENTS_H
