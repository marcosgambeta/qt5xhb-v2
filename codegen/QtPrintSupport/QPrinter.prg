%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtPrintSupport

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QPagedPaintDevice

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QPrinter ( PrinterMode mode = ScreenResolution )
$internalConstructor=|new1|QPrinter::PrinterMode=QPrinter::ScreenResolution

$prototype=QPrinter ( const QPrinterInfo & printer, PrinterMode mode = ScreenResolution )
$internalConstructor=|new2|const QPrinterInfo &,QPrinter::PrinterMode=QPrinter::ScreenResolution

/*
[1]QPrinter ( PrinterMode mode = ScreenResolution )
[2]QPrinter ( const QPrinterInfo & printer, PrinterMode mode = ScreenResolution )
*/

HB_FUNC_STATIC( QPRINTER_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTNUM(1) )
  {
    QPrinter_new1();
  }
  else if( ISBETWEEN(1,2) && ISQPRINTERINFO(1) && ISOPTNUM(2) )
  {
    QPrinter_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=bool abort()

$prototypeV2=bool collateCopies() const

$prototype=void setCollateCopies ( bool collate )
$method=|void|setCollateCopies|bool

$prototypeV2=QPrinter::ColorMode colorMode() const

$prototype=void setColorMode ( ColorMode newColorMode )
$method=|void|setColorMode|QPrinter::ColorMode

$prototypeV2=int copyCount() const

$prototype=void setCopyCount ( int count )
$method=|void|setCopyCount|int

$prototypeV2=QString creator() const

$prototype=void setCreator ( const QString & creator )
$method=|void|setCreator|const QString &

$prototypeV2=QString docName() const

$prototype=void setDocName ( const QString & name )
$method=|void|setDocName|const QString &

$prototypeV2=bool doubleSidedPrinting() const

$prototype=void setDoubleSidedPrinting ( bool doubleSided )
$method=|void|setDoubleSidedPrinting|bool

$prototypeV2=QPrinter::DuplexMode duplex() const

$prototype=void setDuplex ( DuplexMode duplex )
$method=|void|setDuplex|QPrinter::DuplexMode

$prototypeV2=bool fontEmbeddingEnabled() const

$prototype=void setFontEmbeddingEnabled ( bool enable )
$method=|void|setFontEmbeddingEnabled|bool

$prototypeV2=int fromPage() const

$prototypeV2=bool fullPage() const

$prototype=void setFullPage ( bool fp )
$method=|void|setFullPage|bool

$prototype=void getPageMargins ( qreal * left, qreal * top, qreal * right, qreal * bottom, Unit unit ) const
$method=|void|getPageMargins|qreal *,qreal *,qreal *,qreal *,QPrinter::Unit

$prototype=void setPageMargins ( qreal left, qreal top, qreal right, qreal bottom, Unit unit )
$internalMethod=|void|setPageMargins,setPageMargins1|qreal,qreal,qreal,qreal,QPrinter::Unit

$prototype=bool setPageMargins(const QMarginsF &margins, QPageLayout::Unit units)
$internalMethod=5,3,0|bool|setPageMargins,setPageMargins2|const QMarginsF &,QPageLayout::Unit

/*
[1]void setPageMargins ( qreal left, qreal top, qreal right, qreal bottom, Unit unit )
[2]bool setPageMargins(const QMarginsF &margins, QPageLayout::Unit units)
*/

HB_FUNC_STATIC( QPRINTER_SETPAGEMARGINS )
{
  if( ISNUMPAR(5) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) )
  {
    QPrinter_setPageMargins1();
  }
  else if( ISNUMPAR(2) && ISQMARGINSF(1) && ISNUM(2) )
  {
    QPrinter_setPageMargins2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setPageMargins

$prototypeV2=bool isValid() const

$prototypeV2=bool newPage()

$prototypeV2=QPrinter::Orientation orientation() const

$prototype=void setOrientation ( Orientation orientation )
$method=|void|setOrientation|QPrinter::Orientation

$prototypeV2=QString outputFileName() const

$prototype=void setOutputFileName ( const QString & fileName )
$method=|void|setOutputFileName|const QString &

$prototypeV2=QPrinter::OutputFormat outputFormat() const

$prototype=void setOutputFormat ( OutputFormat format )
$method=|void|setOutputFormat|QPrinter::OutputFormat

$prototypeV2=QPrinter::PageOrder pageOrder() const

$prototype=void setPageOrder ( PageOrder pageOrder )
$method=|void|setPageOrder|QPrinter::PageOrder

$prototype=QRect pageRect () const
$internalMethod=|QRect|pageRect,pageRect1|

$prototype=QRectF pageRect ( Unit unit ) const
$internalMethod=|QRectF|pageRect,pageRect2|QPrinter::Unit

/*
[1]QRect pageRect () const
[2]QRectF pageRect ( Unit unit ) const
*/

HB_FUNC_STATIC( QPRINTER_PAGERECT )
{
  if( ISNUMPAR(0) )
  {
    QPrinter_pageRect1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QPrinter_pageRect2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=pageRect

$prototype=QRect paperRect () const
$internalMethod=|QRect|paperRect,paperRect1|

$prototype=QRectF paperRect ( Unit unit ) const
$internalMethod=|QRectF|paperRect,paperRect2|QPrinter::Unit

/*
[1]QRect paperRect () const
[2]QRectF paperRect ( Unit unit ) const
*/

HB_FUNC_STATIC( QPRINTER_PAPERRECT )
{
  if( ISNUMPAR(0) )
  {
    QPrinter_paperRect1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QPrinter_paperRect2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=paperRect

$prototype=PaperSize paperSize () const
$internalMethod=|QPrinter::PaperSize|paperSize,paperSize1|

$prototype=QSizeF paperSize ( Unit unit ) const
$internalMethod=|QSizeF|paperSize,paperSize2|QPrinter::Unit

/*
[1]PaperSize paperSize () const
[2]QSizeF paperSize ( Unit unit ) const
*/

HB_FUNC_STATIC( QPRINTER_PAPERSIZE )
{
  if( ISNUMPAR(0) )
  {
    QPrinter_paperSize1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QPrinter_paperSize2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=paperSize

$prototypeV2=QPrinter::PaperSource paperSource() const

$prototype=void setPaperSource ( PaperSource source )
$method=|void|setPaperSource|QPrinter::PaperSource

$prototypeV2=QPrintEngine * printEngine() const

$prototypeV2=QString printProgram() const

$prototype=void setPrintProgram ( const QString & printProg )
$method=|void|setPrintProgram|const QString &

$prototypeV2=QPrinter::PrintRange printRange() const

$prototype=void setPrintRange ( PrintRange range )
$method=|void|setPrintRange|QPrinter::PrintRange

$prototypeV2=QString printerName() const

$prototype=void setPrinterName ( const QString & name )
$method=|void|setPrinterName|const QString &

$prototype=QString printerSelectionOption () const
$method=|QString|printerSelectionOption||#if !defined(Q_OS_WIN) || defined(Q_QDOC)

$prototypeV2=QPrinter::PrinterState printerState() const

$prototypeV2=int resolution() const

$prototype=void setResolution ( int dpi )
$method=|void|setResolution|int

$prototype=void setFromTo ( int from, int to )
$method=|void|setFromTo|int,int

$prototype=void setPaperSize ( PaperSize newPaperSize )
$internalMethod=|void|setPaperSize,setPaperSize1|QPrinter::PaperSize

$prototype=void setPaperSize ( const QSizeF & paperSize, Unit unit )
$internalMethod=|void|setPaperSize,setPaperSize2|const QSizeF &,QPrinter::Unit

/*
[1]void setPaperSize ( PaperSize newPaperSize )
[2]void setPaperSize ( const QSizeF & paperSize, Unit unit )
*/

HB_FUNC_STATIC( QPRINTER_SETPAPERSIZE )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QPrinter_setPaperSize1();
  }
  else if( ISNUMPAR(2) && ISQSIZEF(1) && ISNUM(2) )
  {
    QPrinter_setPaperSize2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setPaperSize

$prototype=void setPrinterSelectionOption ( const QString & option )
$method=|void|setPrinterSelectionOption|const QString &|#if !defined(Q_OS_WIN) || defined(Q_QDOC)

$prototype=void setWinPageSize ( int pageSize )
$method=|void|setWinPageSize|int|#ifdef Q_OS_WIN

$prototype=QList<PaperSource> supportedPaperSources () const
$method=|QList<QPrinter::PaperSource>|supportedPaperSources||#ifdef Q_OS_WIN

$prototype=QList<int> supportedResolutions () const
$method=|QList<int>|supportedResolutions|

$prototypeV2=bool supportsMultipleCopies() const

$prototypeV2=int toPage() const

$prototype=int winPageSize () const
$method=|int|winPageSize||#ifdef Q_OS_WIN

$prototypeV2=QPaintEngine * paintEngine() const

$prototypeV2=int devType() const

$prototypeV2=QPrinter::PageSize pageSize() const

$prototype=void setPageSize(PageSize)
$internalMethod=|void|setPageSize,setPageSize1|QPrinter::PageSize

$prototype=bool setPageSize(const QPageSize &pageSize)
$internalMethod=5,3,0|bool|setPageSize,setPageSize2|const QPageSize &

/*
[1]void setPageSize(PageSize)
[2]bool setPageSize(const QPageSize &pageSize)
*/

HB_FUNC_STATIC( QPRINTER_SETPAGESIZE )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QPrinter_setPageSize1();
  }
  else if( ISNUMPAR(1) && ISQPAGESIZE(1) )
  {
    QPrinter_setPageSize2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setPageSize

$prototype=void setPageSizeMM(const QSizeF &size)
$method=|void|setPageSizeMM|const QSizeF &

$prototypeV2=QString paperName() const

$prototype=void setPaperName(const QString &paperName)
$method=|void|setPaperName|const QString &

$prototypeV2=int numCopies() const

$prototype=void setNumCopies(int)
$method=|void|setNumCopies|int

$prototypeV2=int actualNumCopies() const

$prototype=QPageLayout pageLayout() const
$method=5,3,0|QPageLayout|pageLayout|

$prototype=PdfVersion pdfVersion() const
$method=5,10,0|QPagedPaintDevice::PdfVersion|pdfVersion|

$prototype=bool setPageLayout(const QPageLayout &newLayout)
$method=5,3,0|bool|setPageLayout|const QPageLayout &

$prototype=bool setPageOrientation(QPageLayout::Orientation orientation)
$method=5,3,0|bool|setPageOrientation|QPageLayout::Orientation

$prototype=void setPdfVersion(PdfVersion version)
$method=5,10,0|void|setPdfVersion|QPagedPaintDevice::PdfVersion

#pragma ENDDUMP
