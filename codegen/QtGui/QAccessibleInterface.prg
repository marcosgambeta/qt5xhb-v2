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

#include <QtGui/QWindow>

$prototypeV2=virtual bool isValid() const = 0

$prototypeV2=virtual QObject * object() const = 0

$prototypeV2=virtual QWindow * window() const

$prototypeV2=virtual QAccessibleInterface * focusChild() const

$prototype=virtual QAccessibleInterface *childAt(int x, int y) const = 0
$virtualMethod=|QAccessibleInterface *|childAt|int,int

$prototypeV2=virtual QAccessibleInterface * parent() const = 0

$prototype=virtual QAccessibleInterface *child(int index) const = 0
$virtualMethod=|QAccessibleInterface *|child|int

$prototypeV2=virtual int childCount() const = 0

$prototype=virtual int indexOfChild(const QAccessibleInterface *) const = 0
$virtualMethod=|int|indexOfChild|const QAccessibleInterface *

$prototype=virtual QString text(QAccessible::Text t) const = 0
$virtualMethod=|QString|text|QAccessible::Text

$prototype=virtual void setText(QAccessible::Text t, const QString &text) = 0
$virtualMethod=|void|setText|QAccessible::Text,const QString &

$prototypeV2=virtual QRect rect() const = 0

$prototypeV2=virtual QAccessible::Role role() const = 0

$prototypeV2=virtual QColor foregroundColor() const

$prototypeV2=virtual QColor backgroundColor() const

$prototypeV2=QAccessibleTextInterface * textInterface()

$prototypeV2=QAccessibleEditableTextInterface * editableTextInterface()

$prototypeV2=QAccessibleValueInterface * valueInterface()

$prototypeV2=QAccessibleActionInterface * actionInterface()

$prototypeV2=QAccessibleImageInterface * imageInterface()

$prototypeV2=QAccessibleTableInterface * tableInterface()

$prototypeV2=QAccessibleTableCellInterface * tableCellInterface()

$prototype=void virtual_hook(int id, void *data)
$method=|void|virtual_hook|int,void *

$prototype=virtual void *interface_cast(QAccessible::InterfaceType)
$virtualMethod=|void *|interface_cast|QAccessible::InterfaceType

$extraMethods

#pragma ENDDUMP
