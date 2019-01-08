%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtVirtualKeyboard

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QVirtualKeyboardTrace(QObject *parent = nullptr)
$constructor=|new|QObject *=0

$prototype=~QVirtualKeyboardTrace()
$deleteMethod

%%
%% Q_PROPERTY(int traceId READ traceId WRITE setTraceId NOTIFY traceIdChanged)
%%

$prototype=int traceId() const
$method=|int|traceId|

$prototype=void setTraceId(int id)
$method=|void|setTraceId|int

%%
%% Q_PROPERTY(QStringList channels READ channels WRITE setChannels NOTIFY channelsChanged)
%%

$prototype=QStringList channels() const
$method=|QStringList|channels|

$prototype=void setChannels(const QStringList &channels)
$method=|void|setChannels|const QStringList &

%%
%% Q_PROPERTY(int length READ length NOTIFY lengthChanged)
%%

$prototype=int length() const
$method=|int|length|

%%
%% Q_PROPERTY(bool final READ isFinal WRITE setFinal NOTIFY finalChanged)
%%

$prototype=bool isFinal() const
$method=|bool|isFinal|

$prototype=void setFinal(bool final)
$method=|void|setFinal|bool

%%
%% Q_PROPERTY(bool canceled READ isCanceled WRITE setCanceled NOTIFY canceledChanged)
%%

$prototype=bool isCanceled() const
$method=|bool|isCanceled|

$prototype=void setCanceled(bool canceled)
$method=|void|setCanceled|bool

%%
%% Q_PROPERTY(qreal opacity READ opacity WRITE setOpacity NOTIFY opacityChanged)
%%

$prototype=qreal opacity() const
$method=|qreal|opacity|

$prototype=void setOpacity(qreal opacity)
$method=|void|setOpacity|qreal

%%
%%
%%

$prototype=Q_INVOKABLE QVariantList points(int pos = 0, int count = -1) const
$method=|QVariantList|points|int=0,int=-1

$prototype=Q_INVOKABLE int addPoint(const QPointF &point)
$method=|int|addPoint|const QPointF &

$prototype=Q_INVOKABLE void setChannelData(const QString &channel, int index, const QVariant &data)
$method=|void|setChannelData|const QString &,int,const QVariant &

$prototype=Q_INVOKABLE QVariantList channelData(const QString &channel, int pos = 0, int count = -1) const
$method=|QVariantList|channelData|const QString &,int=0,int=-1

%%
%% SIGNALS
%%

$prototype=void traceIdChanged( int traceId )
$signalMethod=|void|traceIdChanged|int

$prototype=void channelsChanged()
$signalMethod=|void|channelsChanged|

$prototype=void lengthChanged( int length )
$signalMethod=|void|lengthChanged|int

$prototype=void finalChanged( bool isFinal )
$signalMethod=|void|finalChanged|bool

$prototype=void canceledChanged( bool isCanceled )
$signalMethod=|void|canceledChanged|bool

$prototype=void opacityChanged( qreal opacity )
$signalMethod=|void|opacityChanged|qreal

#pragma ENDDUMP
