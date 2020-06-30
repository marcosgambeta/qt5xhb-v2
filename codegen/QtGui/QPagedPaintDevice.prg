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

$beginClassFrom=QPaintDevice

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototypeV2=virtual bool newPage() = 0

$prototypeV2=QPagedPaintDevice::PageSize pageSize() const

$prototypeV2=5,3,0|virtual void setPageSize( QPagedPaintDevice::PageSize size )

$prototypeV2=QSizeF pageSizeMM() const

$prototypeV2=virtual void setPageSizeMM( const QSizeF & size )

$prototypeV2=5,3,0|QPageLayout pageLayout() const

$prototypeV2=5,3,0|bool setPageLayout( const QPageLayout & pageLayout )

$prototypeV2=5,3,0|bool setPageOrientation( QPageLayout::Orientation orientation )

$prototype=bool setPageMargins(const QMarginsF &margins)
$internalMethod=5,3,0|bool|setPageMargins,setPageMargins1|const QMarginsF &

$prototype=bool setPageMargins(const QMarginsF &margins, QPageLayout::Unit units)
$internalMethod=5,3,0|bool|setPageMargins,setPageMargins2|const QMarginsF &,QPageLayout::Unit

/*
[1]bool setPageMargins(const QMarginsF &margins)
[2]bool setPageMargins(const QMarginsF &margins, QPageLayout::Unit units)
*/

HB_FUNC_STATIC( QPAGEDPAINTDEVICE_SETPAGEMARGINS )
{
  if( ISNUMPAR(1) && ISQMARGINSF(1) )
  {
    QPagedPaintDevice_setPageMargins1();
  }
  else if( ISNUMPAR(2) && ISQMARGINSF(1) && ISNUM(2) )
  {
    QPagedPaintDevice_setPageMargins2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setPageMargins

#pragma ENDDUMP
