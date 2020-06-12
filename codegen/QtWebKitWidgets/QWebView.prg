%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWebKitWidgets

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

#include <QtCore/QUrl>
#include <QtWidgets/QAction>
#include <QtWidgets/QWidget>

$prototype=explicit QWebView ( QWidget * parent = nullptr )
$constructor=|new|QWidget *=nullptr

$prototype=virtual ~QWebView()
$deleteMethod

%%
%% Q_PROPERTY(QString title READ title)
%%

$prototypeV2=QString title() const

%%
%% Q_PROPERTY(QUrl url READ url WRITE setUrl)
%%

$prototypeV2=QUrl url() const

$prototype=void setUrl ( const QUrl & url )
$method=|void|setUrl|const QUrl &

%%
%% Q_PROPERTY(QIcon icon READ icon)
%%

$prototypeV2=QIcon icon() const

%%
%% Q_PROPERTY(QString selectedText READ selectedText)
%%

$prototypeV2=QString selectedText() const

%%
%% Q_PROPERTY(QString selectedHtml READ selectedHtml)
%%

$prototypeV2=QString selectedHtml() const

%%
%% Q_PROPERTY(bool hasSelection READ hasSelection)
%%

$prototypeV2=bool hasSelection() const

%%
%% Q_PROPERTY(bool modified READ isModified)
%%

$prototypeV2=bool isModified() const

%%
%% //Q_PROPERTY(Qt::TextInteractionFlags textInteractionFlags READ textInteractionFlags WRITE setTextInteractionFlags)
%%

%% /*
%% Qt::TextInteractionFlags textInteractionFlags() const
%% void setTextInteractionFlags(Qt::TextInteractionFlags flags)
%% void setTextInteractionFlag(Qt::TextInteractionFlag flag)
%% */

%%
%% Q_PROPERTY(qreal textSizeMultiplier READ textSizeMultiplier WRITE setTextSizeMultiplier DESIGNABLE false)
%%

$prototypeV2=qreal textSizeMultiplier() const

$prototype=void setTextSizeMultiplier ( qreal factor )
$method=|void|setTextSizeMultiplier|qreal

%%
%% Q_PROPERTY(qreal zoomFactor READ zoomFactor WRITE setZoomFactor)
%%

$prototypeV2=qreal zoomFactor() const

$prototype=void setZoomFactor ( qreal factor )
$method=|void|setZoomFactor|qreal

%%
%% Q_PROPERTY(QPainter::RenderHints renderHints READ renderHints WRITE setRenderHints)
%%

$prototypeV2=QPainter::RenderHints renderHints() const

$prototype=void setRenderHints ( QPainter::RenderHints hints )
$method=|void|setRenderHints|QPainter::RenderHints

%%
%%
%%

$prototype=bool findText ( const QString & subString, QWebPage::FindFlags options = 0 )
$method=|bool|findText|const QString &,QWebPage::FindFlags=0

$prototypeV2=QWebHistory * history() const

$prototype=void load ( const QUrl & url )
$internalMethod=|void|load,load1|const QUrl &

$prototype=void load ( const QNetworkRequest & request, QNetworkAccessManager::Operation operation = QNetworkAccessManager::GetOperation, const QByteArray & body = QByteArray() )
$internalMethod=|void|load,load2|const QNetworkRequest &,QNetworkAccessManager::Operation=QNetworkAccessManager::GetOperation,const QByteArray &=QByteArray()

/*
[1]void load ( const QUrl & url )
[2]void load ( const QNetworkRequest & request, QNetworkAccessManager::Operation operation = QNetworkAccessManager::GetOperation, const QByteArray & body = QByteArray() )
*/

HB_FUNC_STATIC( QWEBVIEW_LOAD )
{
  if( ISNUMPAR(1) && ISQURL(1) )
  {
    QWebView_load1();
  }
  else if( ISBETWEEN(1,3) && ISQNETWORKREQUEST(1) && ISOPTNUM(2) && ISOPTQBYTEARRAY(3) )
  {
    QWebView_load2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=load

$prototypeV2=QWebPage * page() const

$prototype=QAction * pageAction ( QWebPage::WebAction action ) const
$method=|QAction *|pageAction|QWebPage::WebAction|#ifndef QT_NO_ACTION

$prototype=void setContent ( const QByteArray & data, const QString & mimeType = QString(), const QUrl & baseUrl = QUrl() )
$method=|void|setContent|const QByteArray &,const QString &=QString(),const QUrl &=QUrl()

$prototype=void setHtml ( const QString & html, const QUrl & baseUrl = QUrl() )
$method=|void|setHtml|const QString &,const QUrl &=QUrl()

$prototype=void setPage ( QWebPage * page )
$method=|void|setPage|QWebPage *

$prototype=void setRenderHint ( QPainter::RenderHint hint, bool enabled = true )
$method=|void|setRenderHint|QPainter::RenderHint,bool=true

$prototypeV2=QWebSettings * settings() const

$prototype=void triggerPageAction ( QWebPage::WebAction action, bool checked = false )
$method=|void|triggerPageAction|QWebPage::WebAction,bool=false

$prototypeV2=void back() [slot]

$prototypeV2=void forward() [slot]

$prototype=void print ( QPrinter * printer ) const
$slotMethod=|void|print|QPrinter *

$prototypeV2=void reload() [slot]

$prototypeV2=void stop() [slot]

%% TODO: is virtual ?
$prototype=QVariant inputMethodQuery(Qt::InputMethodQuery property) const
$method=|QVariant|inputMethodQuery|Qt::InputMethodQuery

%% TODO: is virtual ?
$prototypeV2=QSize sizeHint() const

$prototype=virtual bool event(QEvent*)
$virtualMethod=|bool|event|QEvent *

%%
%% SIGNALS
%%

$prototype=void iconChanged()
$signalMethod=|void|iconChanged|

$prototype=void linkClicked( const QUrl & url )
$signalMethod=|void|linkClicked|const QUrl &

$prototype=void loadFinished( bool ok )
$signalMethod=|void|loadFinished|bool

$prototype=void loadProgress( int progress )
$signalMethod=|void|loadProgress|int

$prototype=void loadStarted()
$signalMethod=|void|loadStarted|

$prototype=void selectionChanged()
$signalMethod=|void|selectionChanged|

$prototype=void statusBarMessage( const QString & text )
$signalMethod=|void|statusBarMessage|const QString &

$prototype=void titleChanged( const QString & title )
$signalMethod=|void|titleChanged|const QString &

$prototype=void urlChanged( const QUrl & url )
$signalMethod=|void|urlChanged|const QUrl &

#pragma ENDDUMP
