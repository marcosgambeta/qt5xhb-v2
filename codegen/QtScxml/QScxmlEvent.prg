%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtScxml

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

$prototype=QScxmlEvent(const QScxmlEvent &other)

$prototype=~QScxmlEvent()
$deleteMethod

%%
%% Q_PROPERTY(QString name READ name WRITE setName)
%%

$prototype=QString name() const

$prototype=void setName(const QString &name)

%%
%% Q_PROPERTY(EventType eventType READ eventType WRITE setEventType)
%%

$prototype=EventType eventType() const

$prototype=void setEventType(const EventType &type)

%%
%% Q_PROPERTY(QString scxmlType READ scxmlType)
%%

$prototype=QString scxmlType() const

%%
%% Q_PROPERTY(QString sendId READ sendId WRITE setSendId)
%%

$prototype=QString sendId() const

$prototype=void setSendId(const QString &sendId)

%%
%% Q_PROPERTY(QString origin READ origin WRITE setOrigin)
%%

$prototype=QString origin() const

$prototype=void setOrigin(const QString &origin)

%%
%% Q_PROPERTY(QString originType READ originType WRITE setOriginType)
%%

$prototype=QString originType() const

$prototype=void setOriginType(const QString &originType)

%%
%% Q_PROPERTY(QString invokeId READ invokeId WRITE setInvokeId)
%%

$prototype=QString invokeId() const

$prototype=void setInvokeId(const QString &invokeId)

%%
%% Q_PROPERTY(int delay READ delay WRITE setDelay)
%%

$prototype=int delay() const

$prototype=void setDelay(int delayInMiliSecs)

%%
%% Q_PROPERTY(QVariant data READ data WRITE setData)
%%

$prototype=QVariant data() const

$prototype=void setData(const QVariant &data)

%%
%% Q_PROPERTY(bool errorEvent READ isErrorEvent)
%%

$prototype=bool isErrorEvent() const

%%
%% Q_PROPERTY(QString errorMessage READ errorMessage WRITE setErrorMessage)
%%

$prototype=QString errorMessage() const

$prototype=void setErrorMessage(const QString &message)

%%
%%
%%

$prototype=Q_INVOKABLE void clear()

$extraMethods

#pragma ENDDUMP
