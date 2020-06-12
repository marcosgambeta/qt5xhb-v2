%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtPrintSupport

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QDialog

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototypeV2=virtual int exec() = 0

$prototypeV2=int fromPage() const

$prototypeV2=int maxPage() const

$prototypeV2=int minPage() const

$prototypeV2=QAbstractPrintDialog::PrintRange printRange() const

$prototypeV2=QPrinter * printer() const

$prototype=void setFromTo ( int from, int to )
$method=|void|setFromTo|int,int

$prototype=void setMinMax ( int min, int max )
$method=|void|setMinMax|int,int

$prototype=void setOptionTabs ( const QList<QWidget *> & tabs )
$method=|void|setOptionTabs|const QList<QWidget *> &

$prototype=void setPrintRange ( PrintRange range )
$method=|void|setPrintRange|QAbstractPrintDialog::PrintRange

$prototypeV2=int toPage() const

$prototype=void addEnabledOption(PrintDialogOption option)
$method=|void|addEnabledOption|QAbstractPrintDialog::PrintDialogOption

$prototype=void setEnabledOptions(PrintDialogOptions options)
$method=|void|setEnabledOptions|QAbstractPrintDialog::PrintDialogOptions

$prototypeV2=QAbstractPrintDialog::PrintDialogOptions enabledOptions() const

$prototype=bool isOptionEnabled(PrintDialogOption option) const
$method=|bool|isOptionEnabled|QAbstractPrintDialog::PrintDialogOption

#pragma ENDDUMP
