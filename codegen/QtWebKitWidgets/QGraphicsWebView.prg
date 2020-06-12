%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWebKitWidgets

%% TODO: implementar condicao #if !defined(QT_NO_GRAPHICSVIEW)

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QGraphicsWidget

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtWidgets/QAction>

$prototype=explicit QGraphicsWebView ( QGraphicsItem * parent = nullptr )
$constructor=|new|QGraphicsItem *=nullptr

$prototype=~QGraphicsWebView()
$deleteMethod

%%
%% Q_PROPERTY(QString title READ title NOTIFY titleChanged)
%%

$prototypeV2=QString title() const

%%
%% Q_PROPERTY(QIcon icon READ icon NOTIFY iconChanged)
%%

$prototypeV2=QIcon icon() const

%%
%% Q_PROPERTY(qreal zoomFactor READ zoomFactor WRITE setZoomFactor)
%%

$prototypeV2=qreal zoomFactor() const

$prototype=void setZoomFactor ( qreal )
$method=|void|setZoomFactor|qreal

%%
%% Q_PROPERTY(QUrl url READ url WRITE setUrl NOTIFY urlChanged)
%%

$prototypeV2=QUrl url() const

$prototype=void setUrl ( const QUrl & )
$method=|void|setUrl|const QUrl &

%%
%% Q_PROPERTY(bool modified READ isModified)
%%

$prototypeV2=bool isModified() const

%%
%% Q_PROPERTY(bool resizesToContents READ resizesToContents WRITE setResizesToContents)
%%

$prototypeV2=bool resizesToContents() const

$prototype=void setResizesToContents ( bool enabled )
$method=|void|setResizesToContents|bool

%%
%% Q_PROPERTY(bool tiledBackingStoreFrozen READ isTiledBackingStoreFrozen WRITE setTiledBackingStoreFrozen)
%%

$prototypeV2=bool isTiledBackingStoreFrozen() const

$prototype=void setTiledBackingStoreFrozen ( bool frozen )
$method=|void|setTiledBackingStoreFrozen|bool

%%
%% Q_PROPERTY(QPainter::RenderHints renderHints READ renderHints WRITE setRenderHints)
%%

$prototypeV2=QPainter::RenderHints renderHints() const

$prototype=void setRenderHints(QPainter::RenderHints)
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

HB_FUNC_STATIC( QGRAPHICSWEBVIEW_LOAD )
{
  if( ISNUMPAR(1) && ISQURL(1) )
  {
    QGraphicsWebView_load1();
  }
  else if( ISBETWEEN(1,3) && ISQNETWORKREQUEST(1) && ISOPTNUM(2) && ISOPTQBYTEARRAY(3) )
  {
    QGraphicsWebView_load2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=load

$prototypeV2=QWebPage * page() const

$prototype=QAction * pageAction ( QWebPage::WebAction action ) const
$method=|QAction *|pageAction|QWebPage::WebAction

$prototype=void setContent ( const QByteArray & data, const QString & mimeType = QString(), const QUrl & baseUrl = QUrl() )
$method=|void|setContent|const QByteArray &,const QString &=QString(),const QUrl &=QUrl()

$prototype=void setHtml ( const QString & html, const QUrl & baseUrl = QUrl() )
$method=|void|setHtml|const QString &,const QUrl &=QUrl()

$prototype=void setPage ( QWebPage * page )
$method=|void|setPage|QWebPage *

$prototypeV2=QWebSettings * settings() const

$prototype=void triggerPageAction ( QWebPage::WebAction action, bool checked = false )
$method=|void|triggerPageAction|QWebPage::WebAction,bool=false

$prototypeV2=void back()

$prototypeV2=void forward()

$prototypeV2=void reload()

$prototypeV2=void stop()

$prototype=virtual void setGeometry(const QRectF& rect)
$virtualMethod=|void|setGeometry|const QRectF &

$prototypeV2=virtual void updateGeometry()

$prototype=virtual void paint(QPainter*, const QStyleOptionGraphicsItem* options, QWidget* widget = nullptr)
$virtualMethod=|void|paint|QPainter *,const QStyleOptionGraphicsItem *,QWidget *=nullptr

$prototype=virtual QVariant itemChange(GraphicsItemChange change, const QVariant& value)
$virtualMethod=|QVariant|itemChange|QGraphicsItem::GraphicsItemChange,const QVariant &

$prototype=virtual bool event(QEvent*)
$virtualMethod=|bool|event|QEvent *

$prototype=virtual QSizeF sizeHint(Qt::SizeHint which, const QSizeF& constraint) const
$virtualMethod=|QSizeF|sizeHint|Qt::SizeHint,const QSizeF &

$prototype=virtual QVariant inputMethodQuery(Qt::InputMethodQuery query) const
$virtualMethod=|QVariant|inputMethodQuery|Qt::InputMethodQuery

$prototype=void setRenderHint(QPainter::RenderHint, bool enabled = true)
$method=|void|setRenderHint|QPainter::RenderHint,bool=true

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

$prototype=void statusBarMessage( const QString & text )
$signalMethod=|void|statusBarMessage|const QString &

$prototype=void titleChanged( const QString & title )
$signalMethod=|void|titleChanged|const QString &

$prototype=void urlChanged( const QUrl & url )
$signalMethod=|void|urlChanged|const QUrl &

#pragma ENDDUMP
