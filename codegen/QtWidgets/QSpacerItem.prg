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

$beginClassFrom=QLayoutItem

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QSpacerItem(int w, int h, QSizePolicy::Policy hPolicy = QSizePolicy::Minimum, QSizePolicy::Policy vPolicy = QSizePolicy::Minimum)
$constructor=|new|int,int,QSizePolicy::Policy=QSizePolicy::Minimum,QSizePolicy::Policy=QSizePolicy::Minimum

$deleteMethod

$prototype=void changeSize(int w, int h, QSizePolicy::Policy hPolicy = QSizePolicy::Minimum, QSizePolicy::Policy vPolicy = QSizePolicy::Minimum)
$method=|void|changeSize|int,int,QSizePolicy::Policy=QSizePolicy::Minimum,QSizePolicy::Policy=QSizePolicy::Minimum

$prototypeV2=virtual Qt::Orientations expandingDirections() const

$prototypeV2=virtual QRect geometry() const

$prototypeV2=virtual bool isEmpty() const

$prototypeV2=virtual QSize maximumSize() const

$prototypeV2=virtual QSize minimumSize() const

$prototype=virtual void setGeometry(const QRect & r)
$virtualMethod=|void|setGeometry|const QRect &

$prototypeV2=virtual QSize sizeHint() const

$prototypeV2=virtual QSpacerItem * spacerItem()

#pragma ENDDUMP
