%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtQuick

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject,QQmlParserStatus

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtGui/QCursor>
#include <QtQuick/QQuickWindow>
#include <QtQuick/QSGTextureProvider>

$prototype=QQuickItem(QQuickItem * parent = nullptr)
$constructor=|new|QQuickItem *=nullptr

$deleteMethod

$prototypeV2=bool acceptHoverEvents() const

$prototypeV2=Qt::MouseButtons acceptedMouseButtons() const

$prototypeV2=bool antialiasing() const

$prototypeV2=qreal baselineOffset() const

$prototype=QQuickItem * childAt(qreal x, qreal y) const
$method=|QQuickItem *|childAt|qreal,qreal

$prototypeV2=QRectF childrenRect()

$prototypeV2=bool clip() const

$prototype=virtual bool contains(const QPointF & point) const
$virtualMethod=|bool|contains|const QPointF &

$prototypeV2=QCursor cursor() const

$prototypeV2=bool filtersChildMouseEvents() const

$prototypeV2=QQuickItem::Flags flags() const

$prototypeV2=void forceActiveFocus()

$prototypeV2=void grabMouse()

$prototypeV2=bool hasActiveFocus() const

$prototypeV2=bool hasFocus() const

$prototypeV2=qreal height() const

$prototypeV2=qreal implicitHeight() const

$prototypeV2=qreal implicitWidth() const

$prototype=virtual QVariant inputMethodQuery(Qt::InputMethodQuery query) const
$virtualMethod=|QVariant|inputMethodQuery|Qt::InputMethodQuery

$prototypeV2=bool isEnabled() const

$prototypeV2=bool isFocusScope() const

$prototypeV2=virtual bool isTextureProvider() const

$prototypeV2=bool isVisible() const

$prototypeV2=bool keepMouseGrab() const

$prototypeV2=bool keepTouchGrab() const

$prototype=QPointF mapFromItem(const QQuickItem * item, const QPointF & point) const
$method=|QPointF|mapFromItem|const QQuickItem *,const QPointF &

$prototype=QPointF mapFromScene(const QPointF & point) const
$method=|QPointF|mapFromScene|const QPointF &

$prototype=QRectF mapRectFromItem(const QQuickItem * item, const QRectF & rect) const
$method=|QRectF|mapRectFromItem|const QQuickItem *,const QRectF &

$prototype=QRectF mapRectFromScene(const QRectF & rect) const
$method=|QRectF|mapRectFromScene|const QRectF &

$prototype=QRectF mapRectToItem(const QQuickItem * item, const QRectF & rect) const
$method=|QRectF|mapRectToItem|const QQuickItem *,const QRectF &

$prototype=QRectF mapRectToScene(const QRectF & rect) const
$method=|QRectF|mapRectToScene|const QRectF &

$prototype=QPointF mapToItem(const QQuickItem * item, const QPointF & point) const
$method=|QPointF|mapToItem|const QQuickItem *,const QPointF &

$prototype=QPointF mapToScene(const QPointF & point) const
$method=|QPointF|mapToScene|const QPointF &

$prototypeV2=qreal opacity() const

$prototypeV2=QQuickItem * parentItem() const

$prototypeV2=void polish()

$prototypeV2=void resetHeight()

$prototypeV2=void resetWidth()

$prototypeV2=qreal rotation() const

$prototypeV2=qreal scale() const

$prototypeV2=QQuickItem * scopedFocusItem() const

$prototype=void setAcceptHoverEvents(bool enabled)
$method=|void|setAcceptHoverEvents|bool

$prototype=void setAcceptedMouseButtons(Qt::MouseButtons buttons)
$method=|void|setAcceptedMouseButtons|Qt::MouseButtons

$prototype=void setAntialiasing(bool)
$method=|void|setAntialiasing|bool

$prototype=void setBaselineOffset(qreal)
$method=|void|setBaselineOffset|qreal

$prototype=void setClip(bool)
$method=|void|setClip|bool

$prototype=void setCursor(const QCursor & cursor)
$method=|void|setCursor|const QCursor &

$prototype=void setEnabled(bool)
$method=|void|setEnabled|bool

$prototype=void setFiltersChildMouseEvents(bool filter)
$method=|void|setFiltersChildMouseEvents|bool

$prototype=void setFlag(Flag flag, bool enabled = true)
$method=|void|setFlag|QQuickItem::Flag,bool=true

$prototype=void setFlags(Flags flags)
$method=|void|setFlags|QQuickItem::Flags

$prototype=void setFocus(bool)
$method=|void|setFocus|bool

$prototype=void setHeight(qreal)
$method=|void|setHeight|qreal

$prototype=void setImplicitHeight(qreal)
$method=|void|setImplicitHeight|qreal

$prototype=void setImplicitWidth(qreal)
$method=|void|setImplicitWidth|qreal

$prototype=void setKeepMouseGrab(bool keep)
$method=|void|setKeepMouseGrab|bool

$prototype=void setKeepTouchGrab(bool keep)
$method=|void|setKeepTouchGrab|bool

$prototype=void setOpacity(qreal)
$method=|void|setOpacity|qreal

$prototype=void setParentItem(QQuickItem * parent)
$method=|void|setParentItem|QQuickItem *

$prototype=void setRotation(qreal)
$method=|void|setRotation|qreal

$prototype=void setScale(qreal)
$method=|void|setScale|qreal

$prototype=void setSmooth(bool)
$method=|void|setSmooth|bool

$prototype=void setState(const QString &)
$method=|void|setState|const QString &

$prototype=void setTransformOrigin(TransformOrigin)
$method=|void|setTransformOrigin|QQuickItem::TransformOrigin

$prototype=void setVisible(bool)
$method=|void|setVisible|bool

$prototype=void setWidth(qreal)
$method=|void|setWidth|qreal

$prototype=void setX(qreal)
$method=|void|setX|qreal

$prototype=void setY(qreal)
$method=|void|setY|qreal

$prototype=void setZ(qreal)
$method=|void|setZ|qreal

$prototypeV2=bool smooth() const

$prototype=void stackAfter(const QQuickItem * sibling)
$method=|void|stackAfter|const QQuickItem *

$prototype=void stackBefore(const QQuickItem * sibling)
$method=|void|stackBefore|const QQuickItem *

$prototypeV2=QString state() const

$prototypeV2=virtual QSGTextureProvider * textureProvider() const

$prototypeV2=QQuickItem::TransformOrigin transformOrigin() const

$prototypeV2=void ungrabMouse()

$prototypeV2=void ungrabTouchPoints()

$prototypeV2=void unsetCursor()

$prototypeV2=qreal width() const

$prototypeV2=QQuickWindow * window() const

$prototypeV2=qreal x() const

$prototypeV2=qreal y() const

$prototypeV2=qreal z() const

$prototypeV2=void update()

#pragma ENDDUMP
