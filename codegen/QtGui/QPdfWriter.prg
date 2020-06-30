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

$beginClassFrom=QObject,QPagedPaintDevice

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QPdfWriter(const QString & filename)
$internalConstructor=|new1|const QString &

$prototype=explicit QPdfWriter(QIODevice * device)
$internalConstructor=|new2|QIODevice *

/*
[1]explicit QPdfWriter(const QString & filename)
[2]explicit QPdfWriter(QIODevice * device)
*/

HB_FUNC_STATIC( QPDFWRITER_NEW )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QPdfWriter_new1();
  }
  else if( ISNUMPAR(1) && ISQIODEVICE(1) )
  {
    QPdfWriter_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=QString title() const

$prototypeV2=void setTitle( const QString & title )

$prototypeV2=QString creator() const

$prototypeV2=void setCreator( const QString & creator )

$prototypeV2=bool newPage()

$prototype=void setPageSize(PageSize size) (obsolet)
$internalMethod=|void|setPageSize,setPageSize1|QPagedPaintDevice::PageSize

$prototype=bool setPageSize(const QPageSize &pageSize)
$internalMethod=5,3,0|bool|setPageSize,setPageSize2|const QPageSize &

/*
[1]void setPageSize(PageSize size) (obsolet)
[2]bool setPageSize(const QPageSize &pageSize)
*/

HB_FUNC_STATIC( QPDFWRITER_SETPAGESIZE )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QPdfWriter_setPageSize1();
  }
  else if( ISNUMPAR(1) && ISQPAGESIZE(1) )
  {
    QPdfWriter_setPageSize2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setPageSize

%% (obsolet)
$prototypeV2=void setPageSizeMM( const QSizeF & size )

$prototypeV2=5,3,0|int resolution() const

$prototypeV2=5,3,0|void setResolution( int resolution )

$prototypeV2=5,3,0|QPageLayout pageLayout() const

$prototypeV2=5,3,0|bool setPageLayout( const QPageLayout & newPageLayout )

$prototypeV2=5,10,0|QPagedPaintDevice::PdfVersion pdfVersion() const

$prototype=bool setPageMargins(const QMarginsF &margins)
$internalMethod=5,3,0|bool|setPageMargins,setPageMargins1|const QMarginsF &

$prototype=bool setPageMargins(const QMarginsF &margins, QPageLayout::Unit units)
$internalMethod=5,3,0|bool|setPageMargins,setPageMargins2|const QMarginsF &,QPageLayout::Unit

/*
[1]bool setPageMargins(const QMarginsF &margins)
[2]bool setPageMargins(const QMarginsF &margins, QPageLayout::Unit units)
*/

HB_FUNC_STATIC( QPDFWRITER_SETPAGEMARGINS )
{
  if( ISNUMPAR(1) && ISQMARGINSF(1) )
  {
    QPdfWriter_setPageMargins1();
  }
  else if( ISNUMPAR(2) && ISQMARGINSF(1) && ISNUM(2) )
  {
    QPdfWriter_setPageMargins2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setPageMargins

$prototypeV2=5,3,0|bool setPageOrientation( QPageLayout::Orientation orientation )

$prototypeV2=5,10,0|void setPdfVersion( QPagedPaintDevice::PdfVersion version )

$prototype=virtual void setMargins(const Margins &m) override (obsolete)

#pragma ENDDUMP
