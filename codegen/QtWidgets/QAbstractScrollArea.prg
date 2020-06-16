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

$beginClassFrom=QFrame

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtWidgets/QScrollBar>

$deleteMethod

$prototype=void addScrollBarWidget ( QWidget * widget, Qt::Alignment alignment )
$method=|void|addScrollBarWidget|QWidget *,Qt::Alignment

$prototypeV2=Qt::ScrollBarPolicy horizontalScrollBarPolicy() const

$prototype=void setHorizontalScrollBarPolicy ( Qt::ScrollBarPolicy )
$method=|void|setHorizontalScrollBarPolicy|Qt::ScrollBarPolicy

$prototypeV2=QSize maximumViewportSize() const

$prototype=QWidgetList scrollBarWidgets ( Qt::Alignment alignment )
$method=|QWidgetList|scrollBarWidgets|Qt::Alignment

$prototypeV2=QWidget * cornerWidget() const

$prototype=void setCornerWidget ( QWidget * widget )
$method=|void|setCornerWidget|QWidget *

$prototypeV2=QScrollBar * horizontalScrollBar() const

$prototype=void setHorizontalScrollBar ( QScrollBar * scrollBar )
$method=|void|setHorizontalScrollBar|QScrollBar *

$prototype=void setViewport ( QWidget * widget )
$method=|void|setViewport|QWidget *

$prototypeV2=QScrollBar * verticalScrollBar() const

$prototype=void setVerticalScrollBar ( QScrollBar * scrollBar )
$method=|void|setVerticalScrollBar|QScrollBar *

$prototype=Qt::ScrollBarPolicy verticalScrollBarPolicy () const
$method=|Qt::ScrollBarPolicy|verticalScrollBarPolicy|

$prototype=void setVerticalScrollBarPolicy ( Qt::ScrollBarPolicy )
$method=|void|setVerticalScrollBarPolicy|Qt::ScrollBarPolicy

$prototypeV2=QWidget * viewport() const

$prototypeV2=QSize minimumSizeHint() const

$prototypeV2=QSize sizeHint() const

$prototype=virtual void setupViewport(QWidget *viewport)
$virtualMethod=|void|setupViewport|QWidget *

$prototypeV2=QAbstractScrollArea::SizeAdjustPolicy sizeAdjustPolicy() const

$prototype=void setSizeAdjustPolicy(SizeAdjustPolicy policy)
$method=|void|setSizeAdjustPolicy|QAbstractScrollArea::SizeAdjustPolicy

#pragma ENDDUMP
