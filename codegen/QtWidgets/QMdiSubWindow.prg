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

#include <QtWidgets/QMdiArea>
#include <QtWidgets/QMenu>

$prototype=QMdiSubWindow ( QWidget * parent = nullptr, Qt::WindowFlags flags = 0 )
$constructor=|new|QWidget *=nullptr,Qt::WindowFlags=0

$deleteMethod

$prototypeV2=bool isShaded() const

$prototypeV2=int keyboardPageStep() const

$prototypeV2=int keyboardSingleStep() const

$prototypeV2=QMdiArea * mdiArea() const

$prototype=void setKeyboardPageStep ( int step )
$method=|void|setKeyboardPageStep|int

$prototype=void setKeyboardSingleStep ( int step )
$method=|void|setKeyboardSingleStep|int

$prototype=void setOption ( SubWindowOption option, bool on = true )
$method=|void|setOption|QMdiSubWindow::SubWindowOption,bool=true

$prototype=void setSystemMenu ( QMenu * systemMenu )
$method=|void|setSystemMenu|QMenu *

$prototype=void setWidget ( QWidget * widget )
$method=|void|setWidget|QWidget *

$prototypeV2=QMenu * systemMenu() const

$prototype=bool testOption ( SubWindowOption option ) const
$method=|bool|testOption|QMdiSubWindow::SubWindowOption

$prototypeV2=QWidget * widget() const

$prototypeV2=virtual QSize minimumSizeHint() const

$prototypeV2=virtual QSize sizeHint() const

$prototypeV2=void showShaded()

$prototypeV2=void showSystemMenu()

%%
%% SIGNALS
%%

$prototype=void aboutToActivate()
$signalMethod=|void|aboutToActivate|

$prototype=void windowStateChanged( Qt::WindowStates oldState, Qt::WindowStates newState )
$signalMethod=|void|windowStateChanged|Qt::WindowStates,Qt::WindowStates

#pragma ENDDUMP
