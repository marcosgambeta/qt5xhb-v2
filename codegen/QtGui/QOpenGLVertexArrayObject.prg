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

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QOpenGLVertexArrayObject(QObject* parent = nullptr)
$constructor=|new|QObject *=nullptr

$deleteMethod

$prototypeV2=bool create()

$prototypeV2=void destroy()

$prototypeV2=bool isCreated() const

$prototypeV2=GLuint objectId() const

$prototypeV2=void bind()

$prototypeV2=void release()

#pragma ENDDUMP
