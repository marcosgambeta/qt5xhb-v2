%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtGui

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

#include <QtCore/QLocale>
#include <QtCore/QRectF>
#include <QtGui/QTransform>

$prototypeV2=QRectF cursorRectangle() const

$prototypeV2=Qt::LayoutDirection inputDirection() const

$prototypeV2=QTransform inputItemTransform() const

$prototypeV2=bool isAnimating() const

$prototypeV2=bool isVisible() const

$prototypeV2=QRectF keyboardRectangle() const

$prototypeV2=QLocale locale() const

$prototype=void setInputItemTransform(const QTransform & transform)
$method=|void|setInputItemTransform|const QTransform &

$prototype=void setVisible(bool visible)
$method=|void|setVisible|bool

$prototypeV2=void commit()

$prototypeV2=void hide()

$prototype=void invokeAction(Action a, int cursorPosition)
$method=|void|invokeAction|QInputMethod::Action,int

$prototypeV2=void reset()

$prototypeV2=void show()

$prototype=void update(Qt::InputMethodQueries queries)
$method=|void|update|Qt::InputMethodQueries

%%
%% SIGNALS
%%

$prototype=void animatingChanged()
$signalMethod=|void|animatingChanged|

$prototype=void cursorRectangleChanged()
$signalMethod=|void|cursorRectangleChanged|

$prototype=void inputDirectionChanged( Qt::LayoutDirection newDirection )
$signalMethod=|void|inputDirectionChanged|Qt::LayoutDirection

$prototype=void keyboardRectangleChanged()
$signalMethod=|void|keyboardRectangleChanged|

$prototype=void localeChanged()
$signalMethod=|void|localeChanged|

$prototype=void visibleChanged()
$signalMethod=|void|visibleChanged|

#pragma ENDDUMP
