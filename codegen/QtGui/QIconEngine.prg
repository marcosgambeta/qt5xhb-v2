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

$deleteMethod

$prototype=virtual QSize actualSize(const QSize & size, QIcon::Mode mode, QIcon::State state)
$virtualMethod=|QSize|actualSize|const QSize &,QIcon::Mode,QIcon::State

$prototype=virtual void addFile(const QString & fileName, const QSize & size, QIcon::Mode mode, QIcon::State state)
$virtualMethod=|void|addFile|const QString &,const QSize &,QIcon::Mode,QIcon::State

$prototype=virtual void addPixmap(const QPixmap & pixmap, QIcon::Mode mode, QIcon::State state)
$virtualMethod=|void|addPixmap|const QPixmap &,QIcon::Mode,QIcon::State

$prototype=virtual QList<QSize> availableSizes(QIcon::Mode mode = QIcon::Normal, QIcon::State state = QIcon::Off) const
$virtualMethod=|QList<QSize>|availableSizes|QIcon::Mode=QIcon::Normal,QIcon::State=QIcon::Off

$prototypeV2=virtual QIconEngine * clone() const = 0

$prototypeV2=virtual QString iconName() const

$prototypeV2=virtual QString key() const

$prototype=virtual void paint(QPainter * painter, const QRect & rect, QIcon::Mode mode, QIcon::State state) = 0
$virtualMethod=|void|paint|QPainter *,const QRect &,QIcon::Mode,QIcon::State

$prototype=virtual QPixmap pixmap(const QSize & size, QIcon::Mode mode, QIcon::State state)
$virtualMethod=|QPixmap|pixmap|const QSize &,QIcon::Mode,QIcon::State

$prototype=virtual bool read(QDataStream & in)
$virtualMethod=|bool|read|QDataStream &

$prototype=virtual void virtual_hook(int id, void * data)
$virtualMethod=|void|virtual_hook|int,void *

$prototype=virtual bool write(QDataStream & out) const
$virtualMethod=|bool|write|QDataStream &

$extraMethods

#pragma ENDDUMP
