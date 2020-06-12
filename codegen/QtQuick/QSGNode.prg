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

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QSGNode()
$constructor=|new|

$deleteMethod

$prototype=void appendChildNode(QSGNode * node)
$method=|void|appendChildNode|QSGNode *

$prototype=QSGNode * childAtIndex(int i) const
$method=|QSGNode *|childAtIndex|int

$prototypeV2=int childCount() const

$prototypeV2=QSGNode * firstChild() const

$prototypeV2=QSGNode::Flags flags() const

$prototype=void insertChildNodeAfter(QSGNode * node, QSGNode * after)
$method=|void|insertChildNodeAfter|QSGNode *,QSGNode *

$prototype=void insertChildNodeBefore(QSGNode * node, QSGNode * before)
$method=|void|insertChildNodeBefore|QSGNode *,QSGNode *

$prototypeV2=virtual bool isSubtreeBlocked() const

$prototypeV2=QSGNode * lastChild() const

$prototype=void markDirty(DirtyState bits)
$method=|void|markDirty|QSGNode::DirtyState

$prototypeV2=QSGNode * nextSibling() const

$prototypeV2=QSGNode * parent() const

$prototype=void prependChildNode(QSGNode * node)
$method=|void|prependChildNode|QSGNode *

$prototypeV2=virtual void preprocess()

$prototypeV2=QSGNode * previousSibling() const

$prototypeV2=void removeAllChildNodes()

$prototype=void removeChildNode(QSGNode * node)
$method=|void|removeChildNode|QSGNode *

$prototype=void setFlag(Flag f, bool enabled = true)
$method=|void|setFlag|QSGNode::Flag,bool=true

$prototype=void setFlags(Flags f, bool enabled = true)
$method=|void|setFlags|QSGNode::Flags,bool=true

$prototypeV2=QSGNode::NodeType type() const

$extraMethods

#pragma ENDDUMP
