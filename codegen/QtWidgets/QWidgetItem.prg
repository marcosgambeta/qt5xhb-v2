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

$prototype=QWidgetItem(QWidget * widget)
$constructor=|new|QWidget *

$deleteMethod

$prototypeV2=virtual QSizePolicy::ControlTypes controlTypes() const

$prototypeV2=virtual Qt::Orientations expandingDirections() const

$prototypeV2=virtual QRect geometry() const

$prototypeV2=virtual bool hasHeightForWidth() const

$prototype=virtual int heightForWidth(int w) const
$virtualMethod=|int|heightForWidth|int

$prototypeV2=virtual bool isEmpty() const

$prototypeV2=virtual QSize maximumSize() const

$prototypeV2=virtual QSize minimumSize() const

$prototype=virtual void setGeometry(const QRect & rect)
$virtualMethod=|void|setGeometry|const QRect &

$prototypeV2=virtual QSize sizeHint() const

$prototypeV2=virtual QWidget * widget()

#pragma ENDDUMP
