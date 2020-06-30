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

$prototypeV2=void setSegmentCount( int count )

%%
%% Q_PROPERTY(int subSegmentCount READ subSegmentCount WRITE setSubSegmentCount NOTIFY subSegmentCountChanged)
%%

$prototypeV2=int subSegmentCount() const

$prototypeV2=void setSubSegmentCount( int count )

%%
%% Q_PROPERTY(QString labelFormat READ labelFormat WRITE setLabelFormat NOTIFY labelFormatChanged)
%%

$prototypeV2=QString labelFormat() const

$prototypeV2=void setLabelFormat( const QString & format )

%%
%% Q_PROPERTY(QValue3DAxisFormatter* formatter READ formatter WRITE setFormatter NOTIFY formatterChanged REVISION 1)
%%

$prototypeV2=QValue3DAxisFormatter * formatter() const

$prototypeV2=void setFormatter( QValue3DAxisFormatter * formatter )

%%
%% Q_PROPERTY(bool reversed READ reversed WRITE setReversed NOTIFY reversedChanged REVISION 1)
%%

$prototypeV2=bool reversed() const

$prototypeV2=void setReversed( bool enable )

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
