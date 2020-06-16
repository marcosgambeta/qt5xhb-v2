%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWidgets

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QWidget

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototypeV2=int maximum() const

$prototype=void setMaximum ( int )
$method=|void|setMaximum|int

$prototypeV2=int minimum() const

$prototype=void setMinimum ( int )
$method=|void|setMinimum|int

$prototypeV2=Qt::Orientation orientation() const

$prototype=void setOrientation ( Qt::Orientation )
$method=|void|setOrientation|Qt::Orientation

$prototypeV2=int pageStep() const

$prototype=void setPageStep ( int )
$method=|void|setPageStep|int

$prototypeV2=bool invertedAppearance() const

$prototype=void setInvertedAppearance ( bool )
$method=|void|setInvertedAppearance|bool

$prototypeV2=bool invertedControls() const

$prototype=void setInvertedControls ( bool )
$method=|void|setInvertedControls|bool

$prototype=void setRange ( int min, int max )
$method=|void|setRange|int,int

$prototypeV2=bool isSliderDown() const

$prototype=void setSliderDown ( bool )
$method=|void|setSliderDown|bool

$prototypeV2=int singleStep() const

$prototype=void setSingleStep ( int )
$method=|void|setSingleStep|int

$prototypeV2=int sliderPosition() const

$prototype=void setSliderPosition ( int )
$method=|void|setSliderPosition|int

$prototype=void triggerAction ( SliderAction action )
$method=|void|triggerAction|QAbstractSlider::SliderAction

$prototypeV2=int value() const

$prototype=void setValue ( int )
$method=|void|setValue|int

$prototypeV2=bool hasTracking() const

$prototype=void setTracking ( bool enable )
$method=|void|setTracking|bool

%%
%% SIGNALS
%%

$prototype=void actionTriggered( int action )
$signalMethod=|void|actionTriggered|int

$prototype=void rangeChanged( int min, int max )
$signalMethod=|void|rangeChanged|int,int

$prototype=void sliderMoved( int value )
$signalMethod=|void|sliderMoved|int

$prototype=void sliderPressed()
$signalMethod=|void|sliderPressed|

$prototype=void sliderReleased()
$signalMethod=|void|sliderReleased|

$prototype=void valueChanged( int value )
$signalMethod=|void|valueChanged|int

#pragma ENDDUMP
