%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWebEngineWidgets
$added=5,4,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QWidget

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtWidgets/QAction>

$prototype=explicit QWebEngineView(QWidget* parent = nullptr)
$constructor=|new|QWidget *=nullptr

$deleteMethod

$prototype=QWebEnginePage* page() const
$method=|QWebEnginePage *|page|

$prototype=void setPage(QWebEnginePage* page)
$method=|void|setPage|QWebEnginePage *

$prototype=void load(const QUrl& url)
$method=|void|load|const QUrl &

$prototype=void setHtml(const QString& html, const QUrl& baseUrl = QUrl())
$method=|void|setHtml|const QString &,const QUrl &=QUrl()

$prototype=void setContent(const QByteArray& data, const QString& mimeType = QString(), const QUrl& baseUrl = QUrl())
$method=|void|setContent|const QByteArray &,const QString &=QString(),const QUrl &=QUrl()

$prototype=QWebEngineHistory* history() const
$method=|QWebEngineHistory *|history|

$prototype=QString title() const
$method=|QString|title|

$prototype=QUrl url() const
$method=|QUrl|url|

$prototype=void setUrl(const QUrl &url)
$method=|void|setUrl|const QUrl &

$prototype=QUrl iconUrl() const
$method=|QUrl|iconUrl|

$prototype=bool hasSelection() const
$method=|bool|hasSelection|

$prototype=QString selectedText() const
$method=|QString|selectedText|

$prototype=QAction* pageAction(QWebEnginePage::WebAction action) const
$method=|QAction *|pageAction|QWebEnginePage::WebAction|#ifndef QT_NO_ACTION

$prototype=void triggerPageAction(QWebEnginePage::WebAction action, bool checked = false)
$method=|void|triggerPageAction|QWebEnginePage::WebAction,bool=false

$prototype=qreal zoomFactor() const
$method=|qreal|zoomFactor|

$prototype=void setZoomFactor(qreal factor)
$method=|void|setZoomFactor|qreal

$prototype=void findText(const QString &subString, QWebEnginePage::FindFlags options = 0, const QWebEngineCallback<bool> &resultCallback = QWebEngineCallback<bool>())
%% TODO: implementar
%% $method=|void|findText|const QString &,QWebEnginePage::FindFlags=0,const QWebEngineCallback<bool> &=QWebEngineCallback<bool>()

$prototype=virtual QSize sizeHint() const
$virtualMethod=|QSize|sizeHint|

$prototype=void stop()
$method=|void|stop|

$prototype=void back()
$method=|void|back|

$prototype=void forward()
$method=|void|forward|

$prototype=void reload()
$method=|void|reload|

%%
%% SIGNALS
%%

$prototype=void loadStarted()
$signalMethod=|void|loadStarted|

$prototype=void loadProgress( int progress )
$signalMethod=|void|loadProgress|int

$prototype=void loadFinished( bool b )
$signalMethod=|void|loadFinished|bool

$prototype=void titleChanged( const QString & title )
$signalMethod=|void|titleChanged|const QString &

$prototype=void selectionChanged()
$signalMethod=|void|selectionChanged|

$prototype=void urlChanged( const QUrl & url )
$signalMethod=|void|urlChanged|const QUrl &

$prototype=void iconUrlChanged( const QUrl & url )
$signalMethod=|void|iconUrlChanged|const QUrl &

#pragma ENDDUMP
