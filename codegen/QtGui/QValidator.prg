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

$deleteMethod

$prototypeV2=virtual void fixup( QString & input ) const

$prototypeV2=QLocale locale () const

$prototypeV2=void setLocale( const QLocale & locale )

$prototypeV2=virtual QValidator::State validate( QString & input, int & pos ) const = 0

#pragma ENDDUMP
