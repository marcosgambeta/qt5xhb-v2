%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
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

#include <QAction>

$deleteMethod

$prototype=static QAction * createAction(QObject * parent = nullptr)
$staticMethod=|QAction *|createAction|QObject *=nullptr

$prototype=static void enterWhatsThisMode()
$staticMethod=|void|enterWhatsThisMode|

$prototype=static void hideText()
$staticMethod=|void|hideText|

$prototype=static bool inWhatsThisMode()
$staticMethod=|bool|inWhatsThisMode|

$prototype=static void leaveWhatsThisMode()
$staticMethod=|void|leaveWhatsThisMode|

$prototype=static void showText(const QPoint & pos, const QString & text, QWidget * w = nullptr)
$staticMethod=|void|showText|const QPoint &,const QString &,QWidget *=nullptr

$extraMethods

#pragma ENDDUMP
