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

$prototype=QGlyphRun ()
$internalConstructor=|new1|

$prototype=QGlyphRun ( const QGlyphRun & other )
$internalConstructor=|new2|const QGlyphRun &

/*
[1]QGlyphRun ()
[2]QGlyphRun ( const QGlyphRun & other )
*/

HB_FUNC_STATIC( QGLYPHRUN_NEW )
{
  if( ISNUMPAR(0) )
  {
    QGlyphRun_new1();
  }
  else if( ISNUMPAR(1) && ISQGLYPHRUN(1) )
  {
    QGlyphRun_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=void clear()

$prototypeV2=bool overline() const

$prototypeV2=QRawFont rawFont() const

$prototypeV2=void setOverline( bool overline )

$prototype=void setRawData ( const quint32 * glyphIndexArray, const QPointF * glyphPositionArray, int size )
%% TODO: corrigir implementacao
%% $method=|void|setRawData|const quint32 *,const QPointF *,int

$prototypeV2=void setRawFont( const QRawFont & rawFont )

$prototypeV2=void setStrikeOut( bool strikeOut )

$prototypeV2=void setUnderline( bool underline )

$prototypeV2=bool strikeOut() const

$prototypeV2=bool underline() const

$extraMethods

#pragma ENDDUMP
