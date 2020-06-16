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

$beginClassFrom=QTextEdit

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QTextBrowser ( QWidget * parent = nullptr )
$constructor=|new|QWidget *=nullptr

$deleteMethod

$prototypeV2=int backwardHistoryCount() const

$prototypeV2=void clearHistory()

$prototypeV2=int forwardHistoryCount() const

$prototype=QString historyTitle ( int i ) const
$method=|QString|historyTitle|int

$prototype=QUrl historyUrl ( int i ) const
$method=|QUrl|historyUrl|int

$prototypeV2=bool isBackwardAvailable() const

$prototypeV2=bool isForwardAvailable() const

$prototypeV2=bool openExternalLinks() const

$prototypeV2=bool openLinks() const

$prototypeV2=QStringList searchPaths() const

$prototype=void setOpenExternalLinks ( bool open )
$method=|void|setOpenExternalLinks|bool

$prototype=void setOpenLinks ( bool open )
$method=|void|setOpenLinks|bool

$prototype=void setSearchPaths ( const QStringList & paths )
$method=|void|setSearchPaths|const QStringList &

$prototypeV2=QUrl source() const

$prototype=virtual QVariant loadResource ( int type, const QUrl & name )
$virtualMethod=|QVariant|loadResource|int,const QUrl &

$prototypeV2=virtual void backward()

$prototypeV2=virtual void forward()

$prototypeV2=virtual void home()

$prototypeV2=virtual void reload()

$prototype=virtual void setSource ( const QUrl & name )
$virtualMethod=|void|setSource|const QUrl &

%%
%% SIGNALS
%%

$prototype=void anchorClicked( const QUrl & link )
$signalMethod=|void|anchorClicked|const QUrl &

$prototype=void backwardAvailable( bool available )
$signalMethod=|void|backwardAvailable|bool

$prototype=void forwardAvailable( bool available )
$signalMethod=|void|forwardAvailable|bool

$prototype=void highlighted( const QUrl & link )
$signalMethod=|void|highlighted,highlighted1,QOverload<const QUrl &>|const QUrl &

$prototype=void highlighted( const QString & link )
$signalMethod=|void|highlighted,highlighted2,QOverload<const QString &>|const QString &

$prototype=void historyChanged()
$signalMethod=|void|historyChanged|

$prototype=void sourceChanged( const QUrl & src )
$signalMethod=|void|sourceChanged|const QUrl &

#pragma ENDDUMP
