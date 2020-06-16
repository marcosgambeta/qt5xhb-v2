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

$prototype=explicit QDialog ( QWidget * parent = nullptr, Qt::WindowFlags f = 0 )
$constructor=|new|QWidget *=nullptr,Qt::WindowFlags=0

$deleteMethod

$prototypeV2=bool isSizeGripEnabled() const

$prototype=void setSizeGripEnabled ( bool )
$method=|void|setSizeGripEnabled|bool

$prototypeV2=int result() const

$prototype=void setModal ( bool modal )
$method=|void|setModal|bool

$prototype=void setResult ( int i )
$method=|void|setResult|int

$prototypeV2=QSize minimumSizeHint() const

$prototype=void setVisible ( bool visible )
$method=|void|setVisible|bool

$prototypeV2=QSize sizeHint() const

$prototypeV2=virtual void accept()

$prototype=virtual void done ( int r )
$virtualMethod=|void|done|int

$prototypeV2=virtual int exec()

$prototypeV2=virtual void open()

$prototypeV2=virtual void reject()

$prototypeV2=Qt::Orientation orientation() const

$prototype=void setOrientation (Qt::Orientation orientation)
$method=|void|setOrientation|Qt::Orientation

$prototypeV2=QWidget * extension() const

$prototype=void setExtension (QWidget* extension)
$method=|void|setExtension|QWidget *

$prototype=void showExtension(bool)
$method=|void|showExtension|bool

%%
%% SIGNALS
%%

$prototype=void accepted()
$signalMethod=|void|accepted|

$prototype=void finished( int result )
$signalMethod=|void|finished|int

$prototype=void rejected()
$signalMethod=|void|rejected|

#pragma ENDDUMP
