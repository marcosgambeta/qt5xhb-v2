%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=ActiveQt

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QDialog

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QAxSelect(QWidget *parent = nullptr, Qt::WindowFlags flags = Qt::WindowFlags())
$constructor=|new|QWidget *=nullptr,Qt::WindowFlags=Qt::WindowFlags()

$prototype=~QAxSelect() override
$deleteMethod

$prototype=QString clsid() const
$method=|QString|clsid|

$prototype=SandboxingLevel sandboxingLevel() const
$method=5,13,0|QAxSelect::SandboxingLevel|sandboxingLevel|

$prototype=void onActiveXListCurrentChanged(const QModelIndex &) [private] [slot]

$prototype=void onActiveXListActivated() [private] [slot]

$prototype=void onFilterLineEditChanged(const QString &) [private] [slot]

#pragma ENDDUMP
