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

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtWidgets/QLayout>

$deleteMethod

$prototypeV2=Qt::Alignment alignment() const

$prototypeV2=QSizePolicy::QSizePolicy::ControlTypes controlTypes() const

$prototypeV2=virtual Qt::Orientations expandingDirections() const = 0

$prototypeV2=virtual QRect geometry() const = 0

$prototypeV2=virtual bool hasHeightForWidth() const

$prototype=virtual int heightForWidth ( int w ) const
$virtualMethod=|int|heightForWidth|int

$prototypeV2=virtual void invalidate()

$prototypeV2=virtual bool isEmpty() const = 0

$prototypeV2=virtual QLayout * layout()

$prototypeV2=virtual QSize maximumSize() const = 0

$prototype=virtual int minimumHeightForWidth ( int w ) const
$virtualMethod=|int|minimumHeightForWidth|int

$prototypeV2=virtual QSize minimumSize() const = 0

$prototype=void setAlignment ( Qt::Alignment alignment )
$method=|void|setAlignment|Qt::Alignment

$prototype=virtual void setGeometry ( const QRect & r ) = 0
$virtualMethod=|void|setGeometry|const QRect &

$prototypeV2=virtual QSize sizeHint() const = 0

$prototypeV2=virtual QSpacerItem * spacerItem()

$prototypeV2=virtual QWidget * widget()

$extraMethods

#pragma ENDDUMP
