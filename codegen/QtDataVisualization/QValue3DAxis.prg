%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtDataVisualization

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QAbstract3DAxis

$addMethods

%%   METHOD onFormatterChanged
%%   METHOD onLabelFormatChanged
%%   METHOD onReversedChanged
%%   METHOD onSegmentCountChanged
%%   METHOD onSubSegmentCountChanged

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

$prototype=int segmentCount() const
$method=|int|segmentCount|

$prototype=void setSegmentCount(int count)
$method=|void|setSegmentCount|int

%%
%% Q_PROPERTY(int subSegmentCount READ subSegmentCount WRITE setSubSegmentCount NOTIFY subSegmentCountChanged)
%%

$prototype=int subSegmentCount() const
$method=|int|subSegmentCount|

$prototype=void setSubSegmentCount(int count)
$method=|void|setSubSegmentCount|int

%%
%% Q_PROPERTY(QString labelFormat READ labelFormat WRITE setLabelFormat NOTIFY labelFormatChanged)
%%

$prototype=QString labelFormat() const
$method=|QString|labelFormat|

$prototype=void setLabelFormat(const QString &format)
$method=|void|setLabelFormat|const QString &

%%
%% Q_PROPERTY(QValue3DAxisFormatter* formatter READ formatter WRITE setFormatter NOTIFY formatterChanged REVISION 1)
%%

$prototype=QValue3DAxisFormatter *formatter() const
$method=|QValue3DAxisFormatter *|formatter|

$prototype=void setFormatter(QValue3DAxisFormatter *formatter)
$method=|void|setFormatter|QValue3DAxisFormatter *

%%
%% Q_PROPERTY(bool reversed READ reversed WRITE setReversed NOTIFY reversedChanged REVISION 1)
%%

$prototype=bool reversed() const
$method=|bool|reversed|

$prototype=void setReversed(bool enable)
$method=|void|setReversed|bool

%%
%%
%%

%%
%% SIGNALS
%%

using namespace QtDataVisualization;

$prototype=void formatterChanged( QValue3DAxisFormatter * formatter )
%% TODO: $signalMethod=|void|formatterChanged|QValue3DAxisFormatter *

$prototype=void labelFormatChanged( const QString & format )
%% TODO: $signalMethod=|void|labelFormatChanged|const QString &

$prototype=void reversedChanged( bool enable )
%% TODO: $signalMethod=|void|reversedChanged|bool

$prototype=void segmentCountChanged( int count )
%% TODO: $signalMethod=|void|segmentCountChanged|int

$prototype=void subSegmentCountChanged( int count )
%% TODO: $signalMethod=|void|subSegmentCountChanged|int

#pragma ENDDUMP
