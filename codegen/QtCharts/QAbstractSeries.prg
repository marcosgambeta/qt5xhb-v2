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

$prototype=void setName(const QString &name)
$method=|void|setName|const QString &

%%
%% Q_PROPERTY(bool visible READ isVisible WRITE setVisible NOTIFY visibleChanged)
%%

$prototypeV2=bool isVisible() const

$prototype=void setVisible(bool visible = true)
$method=|void|setVisible|bool=true

%%
%% Q_PROPERTY(qreal opacity READ opacity WRITE setOpacity NOTIFY opacityChanged)
%%

$prototypeV2=qreal opacity() const

$prototype=void setOpacity(qreal opacity)
$method=|void|setOpacity|qreal

%%
%% Q_PROPERTY(bool useOpenGL READ useOpenGL WRITE setUseOpenGL NOTIFY useOpenGLChanged)
%%

$prototypeV2=bool useOpenGL() const

$prototype=void setUseOpenGL(bool enable = true)
$method=|void|setUseOpenGL|bool=true

%%
%%
%%

$prototypeV2=QChart * chart() const

$prototype=bool attachAxis(QAbstractAxis *axis)
$method=|bool|attachAxis|QAbstractAxis *

$prototype=bool detachAxis(QAbstractAxis *axis)
$method=|bool|detachAxis|QAbstractAxis *

$prototype=QList<QAbstractAxis*> attachedAxes()
$method=|QList<QAbstractAxis *>|attachedAxes|

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
