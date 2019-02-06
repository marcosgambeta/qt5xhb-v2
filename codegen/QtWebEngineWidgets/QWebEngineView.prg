%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWebEngineWidgets

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QWidget

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,4,0

#include <QtWidgets/QAction>

$prototype=explicit QWebEngineView(QWidget* parent = nullptr)
$constructor=5,4,0|new|QWidget *=nullptr

$deleteMethod=5,4,0

$prototype=QWebEnginePage* page() const
$method=5,4,0|QWebEnginePage *|page|

$prototype=void setPage(QWebEnginePage* page)
$method=5,4,0|void|setPage|QWebEnginePage *

$prototype=void load(const QUrl& url)
$method=5,4,0|void|load|const QUrl &

$prototype=void setHtml(const QString& html, const QUrl& baseUrl = QUrl())
$method=5,4,0|void|setHtml|const QString &,const QUrl &=QUrl()

$prototype=void setContent(const QByteArray& data, const QString& mimeType = QString(), const QUrl& baseUrl = QUrl())
$method=5,4,0|void|setContent|const QByteArray &,const QString &=QString(),const QUrl &=QUrl()

$prototype=QWebEngineHistory* history() const
$method=5,4,0|QWebEngineHistory *|history|

$prototype=QString title() const
$method=5,4,0|QString|title|

$prototype=QUrl url() const
$method=5,4,0|QUrl|url|

$prototype=void setUrl(const QUrl &url)
$method=5,4,0|void|setUrl|const QUrl &

$prototype=QUrl iconUrl() const
$method=5,4,0|QUrl|iconUrl|

$prototype=bool hasSelection() const
$method=5,4,0|bool|hasSelection|

$prototype=QString selectedText() const
$method=5,4,0|QString|selectedText|

$prototype=QAction* pageAction(QWebEnginePage::WebAction action) const
$method=5,4,0|QAction *|pageAction|QWebEnginePage::WebAction|#ifndef QT_NO_ACTION

$prototype=void triggerPageAction(QWebEnginePage::WebAction action, bool checked = false)
$method=5,4,0|void|triggerPageAction|QWebEnginePage::WebAction,bool=false

$prototype=qreal zoomFactor() const
$method=5,4,0|qreal|zoomFactor|

$prototype=void setZoomFactor(qreal factor)
$method=5,4,0|void|setZoomFactor|qreal

$prototype=void findText(const QString &subString, QWebEnginePage::FindFlags options = 0, const QWebEngineCallback<bool> &resultCallback = QWebEngineCallback<bool>())
%% TODO: implementar
%% $method=5,4,0|void|findText|const QString &,QWebEnginePage::FindFlags=0,const QWebEngineCallback<bool> &=QWebEngineCallback<bool>()

$prototype=virtual QSize sizeHint() const
$virtualMethod=5,4,0|QSize|sizeHint|

$prototype=void stop()
$method=5,4,0|void|stop|

$prototype=void back()
$method=5,4,0|void|back|

$prototype=void forward()
$method=5,4,0|void|forward|

$prototype=void reload()
$method=5,4,0|void|reload|

%%
%% SIGNALS
%%

$prototype=void loadStarted()
$signalMethod=5,4,0|void|loadStarted|

$prototype=void loadProgress( int progress )
$signalMethod=5,4,0|void|loadProgress|int

$prototype=void loadFinished( bool b )
$signalMethod=5,4,0|void|loadFinished|bool

$prototype=void titleChanged( const QString & title )
$signalMethod=5,4,0|void|titleChanged|const QString &

$prototype=void selectionChanged()
$signalMethod=5,4,0|void|selectionChanged|

$prototype=void urlChanged( const QUrl & url )
$signalMethod=5,4,0|void|urlChanged|const QUrl &

$prototype=void iconUrlChanged( const QUrl & url )
$signalMethod=5,4,0|void|iconUrlChanged|const QUrl &

#pragma ENDDUMP
