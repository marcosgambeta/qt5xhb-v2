%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtScxml
$added=5,7,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QScxmlEvent()
$constructor=|new1|

$prototype=QScxmlEvent(const QScxmlEvent &other)
$constructor=|new2|const QScxmlEvent &

$prototype=~QScxmlEvent()
$deleteMethod

%%
%% Q_PROPERTY(QString name READ name WRITE setName)
%%

$prototypeV2=QString name() const

$prototype=void setName(const QString &name)
$method=|void|setName|const QString &

%%
%% Q_PROPERTY(EventType eventType READ eventType WRITE setEventType)
%%

$prototypeV2=QScxmlEvent::EventType eventType() const

$prototype=void setEventType(const EventType &type)
$method=|void|setEventType|const QScxmlEvent::EventType &

%%
%% Q_PROPERTY(QString scxmlType READ scxmlType)
%%

$prototypeV2=QString scxmlType() const

%%
%% Q_PROPERTY(QString sendId READ sendId WRITE setSendId)
%%

$prototypeV2=QString sendId() const

$prototype=void setSendId(const QString &sendId)
$method=|void|setSendId|const QString &

%%
%% Q_PROPERTY(QString origin READ origin WRITE setOrigin)
%%

$prototypeV2=QString origin() const

$prototype=void setOrigin(const QString &origin)
$method=|void|setOrigin|const QString &

%%
%% Q_PROPERTY(QString originType READ originType WRITE setOriginType)
%%

$prototypeV2=QString originType() const

$prototype=void setOriginType(const QString &originType)
$method=|void|setOriginType|const QString &

%%
%% Q_PROPERTY(QString invokeId READ invokeId WRITE setInvokeId)
%%

$prototypeV2=QString invokeId() const

$prototype=void setInvokeId(const QString &invokeId)
$method=|void|setInvokeId|const QString &

%%
%% Q_PROPERTY(int delay READ delay WRITE setDelay)
%%

$prototypeV2=int delay() const

$prototype=void setDelay(int delayInMiliSecs)
$method=|void|setDelay|int

%%
%% Q_PROPERTY(QVariant data READ data WRITE setData)
%%

$prototypeV2=QVariant data() const

$prototype=void setData(const QVariant &data)
$method=|void|setData|const QVariant &

%%
%% Q_PROPERTY(bool errorEvent READ isErrorEvent)
%%

$prototypeV2=bool isErrorEvent() const

%%
%% Q_PROPERTY(QString errorMessage READ errorMessage WRITE setErrorMessage)
%%

$prototypeV2=QString errorMessage() const

$prototype=void setErrorMessage(const QString &message)
$method=|void|setErrorMessage|const QString &

%%
%%
%%

$prototypeV2=Q_INVOKABLE void clear()

$extraMethods

#pragma ENDDUMP
