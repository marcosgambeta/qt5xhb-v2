%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWidgets

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QAbstractItemView

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QHeaderView ( Qt::Orientation orientation, QWidget * parent = nullptr )
$constructor=|new|Qt::Orientation,QWidget *=nullptr

$deleteMethod

$prototypeV2=bool cascadingSectionResizes() const

$prototype=void setCascadingSectionResizes ( bool enable )
$method=|void|setCascadingSectionResizes|bool

$prototypeV2=int count() const

$prototypeV2=Qt::Alignment defaultAlignment() const

$prototype=void setDefaultAlignment ( Qt::Alignment alignment )
$method=|void|setDefaultAlignment|Qt::Alignment

$prototypeV2=int defaultSectionSize() const

$prototype=void setDefaultSectionSize ( int size )
$method=|void|setDefaultSectionSize|int

$prototypeV2=int hiddenSectionCount() const

$prototype=void hideSection ( int logicalIndex )
$method=|void|hideSection|int

$prototypeV2=bool highlightSections() const

$prototype=void setHighlightSections ( bool highlight )
$method=|void|setHighlightSections|bool

$prototype=bool isSectionHidden ( int logicalIndex ) const
$method=|bool|isSectionHidden|int

$prototypeV2=bool isSortIndicatorShown() const

$prototype=void setSortIndicatorShown ( bool show )
$method=|void|setSortIndicatorShown|bool

$prototypeV2=int length() const

$prototype=int logicalIndex ( int visualIndex ) const
$method=|int|logicalIndex|int

$prototype=int logicalIndexAt ( int position ) const
$internalMethod=|int|logicalIndexAt,logicalIndexAt1|int

$prototype=int logicalIndexAt ( int x, int y ) const
$internalMethod=|int|logicalIndexAt,logicalIndexAt2|int,int

$prototype=int logicalIndexAt ( const QPoint & pos ) const
$internalMethod=|int|logicalIndexAt,logicalIndexAt3|const QPoint &

/*
[1]int logicalIndexAt ( int position ) const
[2]int logicalIndexAt ( int x, int y ) const
[3]int logicalIndexAt ( const QPoint & pos ) const
*/

HB_FUNC_STATIC( QHEADERVIEW_LOGICALINDEXAT )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QHeaderView_logicalIndexAt1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QHeaderView_logicalIndexAt2();
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QHeaderView_logicalIndexAt3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=logicalIndexAt

$prototypeV2=int minimumSectionSize() const

$prototype=void setMinimumSectionSize ( int size )
$method=|void|setMinimumSectionSize|int

$prototype=void moveSection ( int from, int to )
$method=|void|moveSection|int,int

$prototypeV2=int offset() const

$prototypeV2=Qt::Orientation orientation() const

$prototype=void resizeSection ( int logicalIndex, int size )
$method=|void|resizeSection|int,int

$prototype=void resizeSections ( QHeaderView::ResizeMode mode )
$method=|void|resizeSections|QHeaderView::ResizeMode

$prototype=bool restoreState ( const QByteArray & state )
$method=|bool|restoreState|const QByteArray &

$prototypeV2=QByteArray saveState() const

$prototype=int sectionPosition ( int logicalIndex ) const
$method=|int|sectionPosition|int

$prototype=int sectionSize ( int logicalIndex ) const
$method=|int|sectionSize|int

$prototype=int sectionSizeHint ( int logicalIndex ) const
$method=|int|sectionSizeHint|int

$prototype=int sectionViewportPosition ( int logicalIndex ) const
$method=|int|sectionViewportPosition|int

$prototypeV2=bool sectionsHidden() const

$prototypeV2=bool sectionsMoved() const

$prototype=void setSectionHidden ( int logicalIndex, bool hide )
$method=|void|setSectionHidden|int,bool

$prototype=void setSortIndicator ( int logicalIndex, Qt::SortOrder order )
$method=|void|setSortIndicator|int,Qt::SortOrder

$prototypeV2=bool stretchLastSection() const

$prototype=void setStretchLastSection ( bool stretch )
$method=|void|setStretchLastSection|bool

$prototype=void showSection ( int logicalIndex )
$method=|void|showSection|int

$prototypeV2=Qt::SortOrder sortIndicatorOrder() const

$prototypeV2=int sortIndicatorSection() const

$prototypeV2=int stretchSectionCount() const

$prototype=void swapSections ( int first, int second )
$method=|void|swapSections|int,int

$prototype=int visualIndex ( int logicalIndex ) const
$method=|int|visualIndex|int

$prototype=int visualIndexAt ( int position ) const
$method=|int|visualIndexAt|int

$prototypeV2=void reset()

$prototype=void setModel ( QAbstractItemModel * model )
$method=|void|setModel|QAbstractItemModel *

$prototypeV2=QSize sizeHint() const

$prototype=void headerDataChanged ( Qt::Orientation orientation, int logicalFirst, int logicalLast )
$method=|void|headerDataChanged|Qt::Orientation,int,int

$prototype=void setOffset ( int offset )
$method=|void|setOffset|int

$prototypeV2=void setOffsetToLastSection()

$prototype=void setOffsetToSectionPosition ( int visualIndex )
$method=|void|setOffsetToSectionPosition|int

$prototype=void setVisible(bool v)
$method=|void|setVisible|bool

$prototype=void setSectionsMovable (bool movable)
$method=|void|setSectionsMovable|bool

$prototypeV2=bool sectionsMovable() const

$prototype=void setSectionsClickable(bool clickable)
$method=|void|setSectionsClickable|bool

$prototypeV2=bool sectionsClickable() const

$prototype=ResizeMode sectionResizeMode(int logicalIndex) const
$method=|QHeaderView::ResizeMode|sectionResizeMode|int

$prototype=void setSectionResizeMode(ResizeMode mode)
$internalMethod=|void|setSectionResizeMode,setSectionResizeMode1|QHeaderView::ResizeMode

$prototype=void setSectionResizeMode(int logicalIndex, ResizeMode mode)
$internalMethod=|void|setSectionResizeMode,setSectionResizeMode2|int,QHeaderView::ResizeMode

/*
[1]void setSectionResizeMode(ResizeMode mode)
[2]void setSectionResizeMode(int logicalIndex, ResizeMode mode)
*/

HB_FUNC_STATIC( QHEADERVIEW_SETSECTIONRESIZEMODE )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QHeaderView_setSectionResizeMode1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QHeaderView_setSectionResizeMode2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setSectionResizeMode

$prototype=void setResizeContentsPrecision(int precision)
$method=|void|setResizeContentsPrecision|int

$prototypeV2=int resizeContentsPrecision() const

$prototypeV2=int maximumSectionSize() const

$prototype=void setMaximumSectionSize(int size)
$method=|void|setMaximumSectionSize|int

$prototypeV2=void doItemsLayout()

%%
%% SIGNALS
%%

$prototype=void geometriesChanged()
$signalMethod=|void|geometriesChanged|

$prototype=void sectionAutoResize( int logicalIndex, QHeaderView::ResizeMode mode )
%% TODO: check $signalMethod=|void|sectionAutoResize|int,QHeaderView::ResizeMode

$prototype=void sectionClicked( int logicalIndex )
$signalMethod=|void|sectionClicked|int

$prototype=void sectionCountChanged( int oldCount, int newCount )
$signalMethod=|void|sectionCountChanged|int,int

$prototype=void sectionDoubleClicked( int logicalIndex )
$signalMethod=|void|sectionDoubleClicked|int

$prototype=void sectionEntered( int logicalIndex )
$signalMethod=|void|sectionEntered|int

$prototype=void sectionHandleDoubleClicked( int logicalIndex )
$signalMethod=|void|sectionHandleDoubleClicked|int

$prototype=void sectionMoved( int logicalIndex, int oldVisualIndex, int newVisualIndex )
$signalMethod=|void|sectionMoved|int,int,int

$prototype=void sectionPressed( int logicalIndex )
$signalMethod=|void|sectionPressed|int

$prototype=void sectionResized( int logicalIndex, int oldSize, int newSize )
$signalMethod=|void|sectionResized|int,int,int

$prototype=void sortIndicatorChanged( int logicalIndex, Qt::SortOrder order )
$signalMethod=|void|sortIndicatorChanged|int,Qt::SortOrder

#pragma ENDDUMP
