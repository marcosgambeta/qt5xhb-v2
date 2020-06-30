%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtDesigner

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QAbstractFormBuilder ()
$constructor=|new|

$deleteMethod

$prototypeV2=virtual QWidget * load( QIODevice * device, QWidget * parent = nullptr )

$prototypeV2=virtual void save( QIODevice * device, QWidget * widget )

$prototypeV2=void setWorkingDirectory( const QDir & directory )

$prototypeV2=QDir workingDirectory() const

$extraMethods

#pragma ENDDUMP
