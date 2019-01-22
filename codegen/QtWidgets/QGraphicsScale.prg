%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWidgets

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QGraphicsTransform

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QGraphicsScale ( QObject * parent = nullptr )
$constructor=|new|QObject *=nullptr

$deleteMethod

$prototype=QVector3D origin () const
$method=|QVector3D|origin|

$prototype=void setOrigin ( const QVector3D & point )
$method=|void|setOrigin|const QVector3D &

$prototype=void setXScale ( qreal )
$method=|void|setXScale|qreal

$prototype=void setYScale ( qreal )
$method=|void|setYScale|qreal

$prototype=void setZScale ( qreal )
$method=|void|setZScale|qreal

$prototype=qreal xScale () const
$method=|qreal|xScale|

$prototype=qreal yScale () const
$method=|qreal|yScale|

$prototype=qreal zScale () const
$method=|qreal|zScale|

$prototype=virtual void applyTo ( QMatrix4x4 * matrix ) const
$virtualMethod=|void|applyTo|QMatrix4x4 *

%%
%% SIGNALS
%%

$prototype=void originChanged()
$signalMethod=|void|originChanged|

$prototype=void scaleChanged()
$signalMethod=|void|scaleChanged|

$prototype=void xScaleChanged()
$signalMethod=|void|xScaleChanged|

$prototype=void yScaleChanged()
$signalMethod=|void|yScaleChanged|

$prototype=void zScaleChanged()
$signalMethod=|void|zScaleChanged|

#pragma ENDDUMP
