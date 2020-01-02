%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtDataVisualization
$added=5,7,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QValue3DAxisFormatter

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

using namespace QtDataVisualization;

$prototype=explicit QLogValue3DAxisFormatter(QObject *parent = nullptr)
$constructor=|new|QObject *=nullptr

$prototype=explicit QLogValue3DAxisFormatter(QLogValue3DAxisFormatterPrivate *d, QObject *parent = nullptr) [protected]

$prototype=virtual ~QLogValue3DAxisFormatter()
$deleteMethod

%%
%% Q_PROPERTY(qreal base READ base WRITE setBase NOTIFY baseChanged)
%%

$prototype=qreal base() const
$method=|qreal|base|

$prototype=void setBase(qreal base)
$method=|void|setBase|qreal

%%
%% Q_PROPERTY(bool autoSubGrid READ autoSubGrid WRITE setAutoSubGrid NOTIFY autoSubGridChanged)
%%

$prototype=bool autoSubGrid() const
$method=|bool|autoSubGrid|

$prototype=void setAutoSubGrid(bool enabled)
$method=|void|setAutoSubGrid|bool

%%
%% Q_PROPERTY(bool showEdgeLabels READ showEdgeLabels WRITE setShowEdgeLabels NOTIFY showEdgeLabelsChanged)
%%

$prototype=bool showEdgeLabels() const
$method=|bool|showEdgeLabels|

$prototype=void setShowEdgeLabels(bool enabled)
$method=|void|setShowEdgeLabels|bool

%%
%%
%%

$prototype=virtual QValue3DAxisFormatter *createNewInstance() const [protected]

$prototype=virtual void recalculate() [protected]

$prototype=virtual float positionAt(float value) const [protected]

$prototype=virtual float valueAt(float position) const [protected]

$prototype=virtual void populateCopy(QValue3DAxisFormatter &copy) const [protected]

%%
%% SIGNALS
%%

%% using namespace QtDataVisualization;

$prototype=void autoSubGridChanged( bool enabled )
$signalMethod=|void|autoSubGridChanged|bool

$prototype=void baseChanged( qreal base )
$signalMethod=|void|baseChanged|qreal

$prototype=void showEdgeLabelsChanged( bool enabled )
$signalMethod=|void|showEdgeLabelsChanged|bool

#pragma ENDDUMP
