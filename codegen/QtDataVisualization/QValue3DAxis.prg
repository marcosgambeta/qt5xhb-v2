%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtDataVisualization
$added=5,7,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QAbstract3DAxis

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

using namespace QtDataVisualization;

$prototype=explicit QValue3DAxis(QObject *parent = nullptr)
$constructor=|new|QObject *=nullptr

$prototype=virtual ~QValue3DAxis()
$deleteMethod

%%
%% Q_PROPERTY(int segmentCount READ segmentCount WRITE setSegmentCount NOTIFY segmentCountChanged)
%%

$prototypeV2=int segmentCount() const

$prototype=void setSegmentCount(int count)
$method=|void|setSegmentCount|int

%%
%% Q_PROPERTY(int subSegmentCount READ subSegmentCount WRITE setSubSegmentCount NOTIFY subSegmentCountChanged)
%%

$prototypeV2=int subSegmentCount() const

$prototype=void setSubSegmentCount(int count)
$method=|void|setSubSegmentCount|int

%%
%% Q_PROPERTY(QString labelFormat READ labelFormat WRITE setLabelFormat NOTIFY labelFormatChanged)
%%

$prototypeV2=QString labelFormat() const

$prototype=void setLabelFormat(const QString &format)
$method=|void|setLabelFormat|const QString &

%%
%% Q_PROPERTY(QValue3DAxisFormatter* formatter READ formatter WRITE setFormatter NOTIFY formatterChanged REVISION 1)
%%

$prototypeV2=QValue3DAxisFormatter * formatter() const

$prototype=void setFormatter(QValue3DAxisFormatter *formatter)
$method=|void|setFormatter|QValue3DAxisFormatter *

%%
%% Q_PROPERTY(bool reversed READ reversed WRITE setReversed NOTIFY reversedChanged REVISION 1)
%%

$prototypeV2=bool reversed() const

$prototype=void setReversed(bool enable)
$method=|void|setReversed|bool

%%
%% SIGNALS
%%

$prototype=void formatterChanged( QValue3DAxisFormatter * formatter )
$signalMethod=|void|formatterChanged|QValue3DAxisFormatter *

$prototype=void labelFormatChanged( const QString & format )
$signalMethod=|void|labelFormatChanged|const QString &

$prototype=void reversedChanged( bool enable )
$signalMethod=|void|reversedChanged|bool

$prototype=void segmentCountChanged( int count )
$signalMethod=|void|segmentCountChanged|int

$prototype=void subSegmentCountChanged( int count )
$signalMethod=|void|subSegmentCountChanged|int

#pragma ENDDUMP
