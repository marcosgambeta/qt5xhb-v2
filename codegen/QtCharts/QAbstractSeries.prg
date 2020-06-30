%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCharts
$added=5,7,0

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

using namespace QtCharts;

#include <QtCharts/QChart>

$prototype=QAbstractSeries(QAbstractSeriesPrivate &d, QObject *parent = nullptr) [protected]

$prototype=~QAbstractSeries()
$deleteMethod

%%
%% Q_PROPERTY(SeriesType type READ type)
%%

$prototypeV2=virtual QAbstractSeries::SeriesType type() const = 0

%%
%% Q_PROPERTY(QString name READ name WRITE setName NOTIFY nameChanged)
%%

$prototypeV2=QString name() const

$prototypeV2=void setName( const QString & name )

%%
%% Q_PROPERTY(bool visible READ isVisible WRITE setVisible NOTIFY visibleChanged)
%%

$prototypeV2=bool isVisible() const

$prototypeV2=void setVisible( bool visible = true )

%%
%% Q_PROPERTY(qreal opacity READ opacity WRITE setOpacity NOTIFY opacityChanged)
%%

$prototypeV2=qreal opacity() const

$prototypeV2=void setOpacity( qreal opacity )

%%
%% Q_PROPERTY(bool useOpenGL READ useOpenGL WRITE setUseOpenGL NOTIFY useOpenGLChanged)
%%

$prototypeV2=bool useOpenGL() const

$prototypeV2=void setUseOpenGL( bool enable = true )

%%
%%
%%

$prototypeV2=QChart * chart() const

$prototypeV2=bool attachAxis( QAbstractAxis * axis )

$prototypeV2=bool detachAxis( QAbstractAxis * axis )

$prototypeV2=QList<QAbstractAxis *> attachedAxes()

$prototypeV2=void show()

$prototypeV2=void hide()

%%
%% SIGNALS
%%

$prototype=void nameChanged()
$signalMethod=|void|nameChanged|

$prototype=void opacityChanged()
$signalMethod=|void|opacityChanged|

$prototype=void useOpenGLChanged()
$signalMethod=|void|useOpenGLChanged|

$prototype=void visibleChanged()
$signalMethod=|void|visibleChanged|

#pragma ENDDUMP
