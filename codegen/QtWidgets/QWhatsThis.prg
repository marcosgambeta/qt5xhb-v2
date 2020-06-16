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

#include <QtWidgets/QAction>

$deleteMethod

$prototype=static QAction * createAction(QObject * parent = nullptr)
$staticMethod=|QAction *|createAction|QObject *=nullptr

$prototypeV2=static void enterWhatsThisMode()

$prototypeV2=static void hideText()

$prototypeV2=static bool inWhatsThisMode()

$prototypeV2=static void leaveWhatsThisMode()

$prototype=static void showText(const QPoint & pos, const QString & text, QWidget * w = nullptr)
$staticMethod=|void|showText|const QPoint &,const QString &,QWidget *=nullptr

$extraMethods

#pragma ENDDUMP
