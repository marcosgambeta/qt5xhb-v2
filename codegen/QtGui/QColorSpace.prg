%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtGui
$added=5,14,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QColorSpace()
$internalConstructor=|new1|

$prototype=QColorSpace(NamedColorSpace namedColorSpace)
$internalConstructor=|new2|QColorSpace::NamedColorSpace

$prototype=QColorSpace(Primaries primaries, TransferFunction fun, float gamma = 0.0f)
$internalConstructor=|new3|QColorSpace::Primaries,QColorSpace::TransferFunction,float=0.0f

$prototype=QColorSpace(Primaries primaries, float gamma)
$internalConstructor=|new4|QColorSpace::Primaries,float

$prototype=QColorSpace(const QPointF &whitePoint, const QPointF &redPoint, const QPointF &greenPoint, const QPointF &bluePoint, TransferFunction fun, float gamma = 0.0f)
$internalConstructor=|new5|const QPointF &,const QPointF &,const QPointF &,const QPointF &,QColorSpace::TransferFunction,float=0.0f

$prototype=QColorSpace(const QColorSpace &colorSpace)
$internalConstructor=|new6|const QColorSpace &

$prototype=QColorSpace(QColorSpace &&colorSpace) noexcept
%% TODO: $constructor=|new7|QColorSpace &&

/*
[1]QColorSpace()
[2]QColorSpace(NamedColorSpace namedColorSpace)
[3]QColorSpace(Primaries primaries, TransferFunction fun, float gamma = 0.0f)
[4]QColorSpace(Primaries primaries, float gamma)
[5]QColorSpace(const QPointF &whitePoint, const QPointF &redPoint, const QPointF &greenPoint, const QPointF &bluePoint, TransferFunction fun, float gamma = 0.0f)
[6]QColorSpace(const QColorSpace &colorSpace)
[7]QColorSpace(QColorSpace &&colorSpace) noexcept
*/

%% TODO: resolver conflito entre [3] e [4] quando total de parametros for 2

HB_FUNC_STATIC( QCOLORSPACE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QColorSpace_new1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QColorSpace_new2();
  }
  else if( ISBETWEEN(2,3) && ISNUM(1) && ISNUM(2) && (ISNUM(3)||ISNIL(3) )
  {
    QColorSpace_new3();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QColorSpace_new4();
  }
  else if( ISBETWEEN(5,6) && ISQPOINTF(1) && ISQPOINTF(2) && ISQPOINTF(3) && ISQPOINTF(4) && ISNUM(5) && (ISNUM(6)||ISNIL(6)) )
  {
    QColorSpace_new5();
  }
  else if( ISNUMPAR(1) && ISQCOLORSPACE(1) )
  {
    QColorSpace_new6();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=~QColorSpace()
$deleteMethod

$prototype=void swap(QColorSpace &colorSpace) noexcept
$method=|void|swap|QColorSpace &

$prototypeV2=QColorSpace::Primaries primaries() const noexcept

$prototypeV2=QColorSpace::TransferFunction transferFunction() const noexcept

$prototypeV2=float gamma() const noexcept

$prototype=void setTransferFunction(TransferFunction transferFunction, float gamma = 0.0f)
$method=|void|setTransferFunction|QColorSpace::TransferFunction,float=0.0f

$prototype=QColorSpace withTransferFunction(TransferFunction transferFunction, float gamma = 0.0f) const
$method=|QColorSpace|withTransferFunction|QColorSpace::TransferFunction,float=0.0f

$prototype=void setPrimaries(Primaries primariesId)
$internalMethod=|void|setPrimaries,setPrimaries1|QColorSpace::Primaries

$prototype=void setPrimaries(const QPointF &whitePoint, const QPointF &redPoint, const QPointF &greenPoint, const QPointF &bluePoint)
$internalMethod=|void|setPrimaries,setPrimaries2|const QPointF &,const QPointF &,const QPointF &,const QPointF &

/*
[1]void setPrimaries(Primaries primariesId)
[2]void setPrimaries(const QPointF &whitePoint, const QPointF &redPoint, const QPointF &greenPoint, const QPointF &bluePoint)
*/

HB_FUNC_STATIC( QCOLORSPACE_SETPRIMARIES )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QColorSpace_setPrimaries1();
  }
  else if( ISNUMPAR(4) && ISQPOINTF(1) && ISQPOINTF(2) && ISQPOINTF(3) && ISQPOINTF(4) )
  {
    QColorSpace_setPrimaries2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setPrimaries

$prototypeV2=bool isValid() const noexcept

$prototype=static QColorSpace fromIccProfile(const QByteArray &iccProfile)
$staticMethod=|QColorSpace|fromIccProfile|const QByteArray &

$prototypeV2=QByteArray iccProfile() const

$prototype=QColorTransform transformationToColorSpace(const QColorSpace &colorspace) const
%% TODO: $method=|QColorTransform|transformationToColorSpace|const QColorSpace &

$extraMethods

#pragma ENDDUMP
