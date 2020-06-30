%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QMimeData>
#include <QtGui/QImage>
#include <QtGui/QPixmap>

$prototypeV2=void clear( QClipboard::Mode mode = QClipboard::Clipboard )

$prototypeV2=QImage image( QClipboard::Mode mode = QClipboard::Clipboard ) const

$prototypeV2=const QMimeData * mimeData( QClipboard::Mode mode = QClipboard::Clipboard ) const

$prototypeV2=bool ownsClipboard() const

$prototypeV2=bool ownsFindBuffer() const

$prototypeV2=bool ownsSelection() const

$prototypeV2=QPixmap pixmap( QClipboard::Mode mode = QClipboard::Clipboard ) const

$prototypeV2=void setImage( const QImage & image, QClipboard::Mode mode = QClipboard::Clipboard )

$prototypeV2=void setMimeData( QMimeData * src, QClipboard::Mode mode = QClipboard::Clipboard )

$prototypeV2=void setPixmap( const QPixmap & pixmap, QClipboard::Mode mode = QClipboard::Clipboard )

$prototypeV2=void setText( const QString & text, QClipboard::Mode mode = QClipboard::Clipboard )

$prototypeV2=bool supportsFindBuffer() const

$prototypeV2=bool supportsSelection() const

$prototype=QString text ( Mode mode = Clipboard ) const
$internalMethod=|QString|text,text1|QClipboard::Mode=QClipboard::Clipboard

$prototype=QString text ( QString & subtype, Mode mode = Clipboard ) const
%% TODO: fix first parameter (QString &)
%% $internalMethod=|QString|text,text2|QString &,QClipboard::Mode=QClipboard::Clipboard
void QClipboard_text2 ()
{
  auto obj = (QClipboard *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QString par1 = PQSTRING(1);
    RQSTRING( obj->text ( par1, ISNIL(2)? (QClipboard::Mode) QClipboard::Clipboard : (QClipboard::Mode) hb_parni(2) ) );
    hb_storc( QSTRINGTOSTRING(par1), 1 );
  }
}

/*
[1]QString text ( Mode mode = Clipboard ) const
[2]QString text ( QString & subtype, Mode mode = Clipboard ) const
*/

HB_FUNC_STATIC( QCLIPBOARD_TEXT )
{
  if( ISBETWEEN(0,1) && ISOPTNUM(1) )
  {
    QClipboard_text1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTNUM(2) )
  {
    QClipboard_text2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=text

%%
%% SIGNALS
%%

$prototype=void changed( QClipboard::Mode mode )
$signalMethod=|void|changed|QClipboard::Mode

$prototype=void dataChanged()
$signalMethod=|void|dataChanged|

$prototype=void findBufferChanged()
$signalMethod=|void|findBufferChanged|

$prototype=void selectionChanged()
$signalMethod=|void|selectionChanged|

#pragma ENDDUMP
