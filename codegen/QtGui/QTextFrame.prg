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

$beginClassFrom=QTextObject

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtGui/QTextCursor>

$prototype=QTextFrame(QTextDocument *doc)
$constructor=|new|QTextDocument *

$deleteMethod

$prototype=void setFrameFormat(const QTextFrameFormat &format)
$method=|void|setFrameFormat|const QTextFrameFormat &

$prototypeV2=QTextFrameFormat frameFormat() const

$prototypeV2=QTextCursor firstCursorPosition() const

$prototypeV2=QTextCursor lastCursorPosition() const

$prototypeV2=int firstPosition() const

$prototypeV2=int lastPosition() const

$prototype=QTextFrameLayoutData *layoutData() const
%% TODO: implementar ?
%% $method=|QTextFrameLayoutData *|layoutData|

$prototype=void setLayoutData(QTextFrameLayoutData *data)
%% TODO: implementar ?
%% $method=|void|setLayoutData|QTextFrameLayoutData *

$prototype=QList<QTextFrame *> childFrames() const
$method=|QList<QTextFrame *>|childFrames|

$prototypeV2=QTextFrame * parentFrame() const

#pragma ENDDUMP
