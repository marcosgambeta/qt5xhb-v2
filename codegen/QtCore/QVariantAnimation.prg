%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCore

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QAbstractAnimation

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototypeV2=QVariant currentValue() const

$prototypeV2=QEasingCurve easingCurve() const

$prototypeV2=QVariant endValue() const

$prototype=QVariant keyValueAt ( qreal step ) const
$method=|QVariant|keyValueAt|qreal

$prototype=void setDuration ( int msecs )
$method=|void|setDuration|int

$prototype=void setEasingCurve ( const QEasingCurve & easing )
$method=|void|setEasingCurve|const QEasingCurve &

$prototype=void setEndValue ( const QVariant & value )
$method=|void|setEndValue|const QVariant &

$prototype=void setKeyValueAt ( qreal step, const QVariant & value )
$method=|void|setKeyValueAt|qreal,const QVariant &

$prototype=void setStartValue ( const QVariant & value )
$method=|void|setStartValue|const QVariant &

$prototypeV2=QVariant startValue() const

%%
%% SIGNALS
%%

$prototype=void valueChanged( const QVariant & value )
$signalMethod=|void|valueChanged|const QVariant &

#pragma ENDDUMP
