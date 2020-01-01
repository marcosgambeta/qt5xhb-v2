%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
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

$prototype=QString name() const
$method=|QString|name|

$prototype=void setName(const QString &name)
$method=|void|setName|const QString &

%%
%% Q_PROPERTY(EventType eventType READ eventType WRITE setEventType)
%%

$prototype=EventType eventType() const
$method=|QScxmlEvent::EventType|eventType|

$prototype=void setEventType(const EventType &type)
$method=|void|setEventType|const QScxmlEvent::EventType &

%%
%% Q_PROPERTY(QString scxmlType READ scxmlType)
%%

$prototype=QString scxmlType() const
$method=|QString|scxmlType|

%%
%% Q_PROPERTY(QString sendId READ sendId WRITE setSendId)
%%

$prototype=QString sendId() const
$method=|QString|sendId|

$prototype=void setSendId(const QString &sendId)
$method=|void|setSendId|const QString &

%%
%% Q_PROPERTY(QString origin READ origin WRITE setOrigin)
%%

$prototype=QString origin() const
$method=|QString|origin|

$prototype=void setOrigin(const QString &origin)
$method=|void|setOrigin|const QString &

%%
%% Q_PROPERTY(QString originType READ originType WRITE setOriginType)
%%

$prototype=QString originType() const
$method=|QString|originType|

$prototype=void setOriginType(const QString &originType)
$method=|void|setOriginType|const QString &

%%
%% Q_PROPERTY(QString invokeId READ invokeId WRITE setInvokeId)
%%

$prototype=QString invokeId() const
$method=|QString|invokeId|

$prototype=void setInvokeId(const QString &invokeId)
$method=|void|setInvokeId|const QString &

%%
%% Q_PROPERTY(int delay READ delay WRITE setDelay)
%%

$prototype=int delay() const
$method=|int|delay|

$prototype=void setDelay(int delayInMiliSecs)
$method=|void|setDelay|int

%%
%% Q_PROPERTY(QVariant data READ data WRITE setData)
%%

$prototype=QVariant data() const
$method=|QVariant|data|

$prototype=void setData(const QVariant &data)
$method=|void|setData|const QVariant &

%%
%% Q_PROPERTY(bool errorEvent READ isErrorEvent)
%%

$prototype=bool isErrorEvent() const
$method=|bool|isErrorEvent|

%%
%% Q_PROPERTY(QString errorMessage READ errorMessage WRITE setErrorMessage)
%%

$prototype=QString errorMessage() const
$method=|QString|errorMessage|

$prototype=void setErrorMessage(const QString &message)
$method=|void|setErrorMessage|const QString &

%%
%%
%%

$prototype=Q_INVOKABLE void clear()
$method=|void|clear|

$extraMethods

#pragma ENDDUMP
