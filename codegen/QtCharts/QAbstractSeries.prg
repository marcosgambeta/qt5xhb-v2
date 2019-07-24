%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
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

#include <QtCharts/QChart>

using namespace QtCharts;

$prototype=QAbstractSeries(QAbstractSeriesPrivate &d, QObject *parent = nullptr) [protected]

$prototype=~QAbstractSeries()
$deleteMethod

%%
%% Q_PROPERTY(SeriesType type READ type)
%%

$prototype=virtual SeriesType type() const = 0
$virtualMethod=|QAbstractSeries::SeriesType|type|

%%
%% Q_PROPERTY(QString name READ name WRITE setName NOTIFY nameChanged)
%%

$prototype=QString name() const
$method=|QString|name|

$prototype=void setName(const QString &name)
$method=|void|setName|const QString &

%%
%% Q_PROPERTY(bool visible READ isVisible WRITE setVisible NOTIFY visibleChanged)
%%

$prototype=bool isVisible() const
$method=|bool|isVisible|

$prototype=void setVisible(bool visible = true)
$method=|void|setVisible|bool=true

%%
%% Q_PROPERTY(qreal opacity READ opacity WRITE setOpacity NOTIFY opacityChanged)
%%

$prototype=qreal opacity() const
$method=|qreal|opacity|

$prototype=void setOpacity(qreal opacity)
$method=|void|setOpacity|qreal

%%
%% Q_PROPERTY(bool useOpenGL READ useOpenGL WRITE setUseOpenGL NOTIFY useOpenGLChanged)
%%

$prototype=bool useOpenGL() const
$method=|bool|useOpenGL|

$prototype=void setUseOpenGL(bool enable = true)
$method=|void|setUseOpenGL|bool=true

%%
%%
%%

$prototype=QChart *chart() const
$method=|QChart *|chart|

$prototype=bool attachAxis(QAbstractAxis *axis)
$method=|bool|attachAxis|QAbstractAxis *

$prototype=bool detachAxis(QAbstractAxis *axis)
$method=|bool|detachAxis|QAbstractAxis *

$prototype=QList<QAbstractAxis*> attachedAxes()
$method=|QList<QAbstractAxis *>|attachedAxes|

$prototype=void show()
$method=|void|show|

$prototype=void hide()
$method=|void|hide|

%%
%% SIGNALS
%%

%% using namespace QtCharts;

$prototype=void nameChanged()
$signalMethod=|void|nameChanged|

$prototype=void opacityChanged()
$signalMethod=|void|opacityChanged|

$prototype=void useOpenGLChanged()
$signalMethod=|void|useOpenGLChanged|

$prototype=void visibleChanged()
$signalMethod=|void|visibleChanged|

#pragma ENDDUMP
