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

$beginClassFrom=QAccessibleObject,QAccessibleActionInterface

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtGui/QWindow>

$prototype=QAccessibleWidget(QWidget *o, QAccessible::Role r = QAccessible::Client, const QString& name = QString())
$constructor=|new|QWidget *,QAccessible::Role=QAccessible::Client,const QString &=QString()

$prototypeV2=bool isValid() const

$prototypeV2=QWindow * window() const

$prototypeV2=int childCount() const

$prototype=int indexOfChild(const QAccessibleInterface *child) const
$method=|int|indexOfChild|const QAccessibleInterface *

$prototypeV2=QAccessibleInterface * focusChild() const

$prototypeV2=QRect rect() const

$prototypeV2=QAccessibleInterface * parent() const

$prototype=QAccessibleInterface *child(int index) const
$method=|QAccessibleInterface *|child|int

$prototype=QString text(QAccessible::Text t) const
$method=|QString|text|QAccessible::Text

$prototypeV2=QAccessible::Role role() const

$prototypeV2=QColor foregroundColor() const

$prototypeV2=QColor backgroundColor() const

$prototype=void *interface_cast(QAccessible::InterfaceType t)
$method=|void *|interface_cast|QAccessible::InterfaceType

$prototypeV2=QStringList actionNames() const

$prototype=void doAction(const QString &actionName)
$method=|void|doAction|const QString &

$prototype=QStringList keyBindingsForAction(const QString &actionName) const
$method=|QStringList|keyBindingsForAction|const QString &

#pragma ENDDUMP
