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

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QXmlStreamEntityDeclaration()
$internalConstructor=|new1|

$prototype=QXmlStreamEntityDeclaration(const QXmlStreamEntityDeclaration & other)
$internalConstructor=|new2|const QXmlStreamEntityDeclaration &

/*
[1]QXmlStreamEntityDeclaration()
[2]QXmlStreamEntityDeclaration(const QXmlStreamEntityDeclaration & other)
*/

HB_FUNC_STATIC( QXMLSTREAMENTITYDECLARATION_NEW )
{
  if( ISNUMPAR(0) )
  {
    QXmlStreamEntityDeclaration_new1();
  }
  else if( ISNUMPAR(1) && ISQXMLSTREAMENTITYDECLARATION(1) )
  {
    QXmlStreamEntityDeclaration_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=QStringRef name() const

$prototypeV2=QStringRef notationName() const

$prototypeV2=QStringRef publicId() const

$prototypeV2=QStringRef systemId() const

$prototypeV2=QStringRef value() const

$extraMethods

#pragma ENDDUMP
