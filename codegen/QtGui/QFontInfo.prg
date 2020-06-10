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

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QFontInfo ( const QFont & font )
$internalConstructor=|new1|const QFont &

$prototype=QFontInfo ( const QFontInfo & fi )
$internalConstructor=|new2|const QFontInfo &

/*
[1]QFontInfo ( const QFont & font )
[2]QFontInfo ( const QFontInfo & fi )
*/

HB_FUNC_STATIC( QFONTINFO_NEW )
{
  if( ISNUMPAR(1) && ISQFONT(1) )
  {
    QFontInfo_new1();
  }
  else if( ISNUMPAR(1) && ISQFONTINFO(1) )
  {
    QFontInfo_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=bool bold() const

$prototypeV2=bool exactMatch() const

$prototypeV2=QString family() const

$prototypeV2=bool fixedPitch() const

$prototypeV2=bool italic() const

$prototypeV2=int pixelSize() const

$prototypeV2=int pointSize() const

$prototypeV2=qreal pointSizeF() const

$prototypeV2=bool rawMode() const

$prototypeV2=QFont::Style style() const

$prototypeV2=QFont::StyleHint styleHint() const

$prototypeV2=QString styleName() const

$prototypeV2=int weight() const

$extraMethods

#pragma ENDDUMP
