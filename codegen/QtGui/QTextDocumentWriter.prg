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

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QIODevice>

$prototype=QTextDocumentWriter()
$internalConstructor=|new1|

$prototype=QTextDocumentWriter(QIODevice *device, const QByteArray &format)
$internalConstructor=|new2|QIODevice *,const QByteArray &

$prototype=QTextDocumentWriter(const QString &fileName, const QByteArray &format = QByteArray())
$internalConstructor=|new3|const QString &,const QByteArray &=QByteArray()

/*
[1]QTextDocumentWriter()
[2]QTextDocumentWriter(QIODevice *device, const QByteArray &format)
[3]QTextDocumentWriter(const QString &fileName, const QByteArray &format = QByteArray())
*/

HB_FUNC_STATIC( QTEXTDOCUMENTWRITER_NEW )
{
  if( ISNUMPAR(0) )
  {
    QTextDocumentWriter_new1();
  }
  else if( ISNUMPAR(2) && ISQIODEVICE(1) && ISQBYTEARRAY(2) )
  {
    QTextDocumentWriter_new2();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTQBYTEARRAY(2) )
  {
    QTextDocumentWriter_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototypeV2=void setFormat( const QByteArray & format )

$prototypeV2=QByteArray format() const

$prototypeV2=void setDevice( QIODevice * device )

$prototypeV2=QIODevice * device() const

$prototypeV2=void setFileName(const QString & fileName )

$prototypeV2=QString fileName() const

$prototype=bool write(const QTextDocument *document)
$internalMethod=|bool|write,write1|const QTextDocument *

$prototype=bool write(const QTextDocumentFragment &fragment)
$internalMethod=|bool|write,write2|const QTextDocumentFragment &

/*
[1]bool write(const QTextDocument *document)
[2]bool write(const QTextDocumentFragment &fragment)
*/

HB_FUNC_STATIC( QTEXTDOCUMENTWRITER_WRITE )
{
  if( ISNUMPAR(1) && ISQTEXTDOCUMENT(1) )
  {
    QTextDocumentWriter_write1();
  }
  else if( ISNUMPAR(1) && ISQTEXTDOCUMENTFRAGMENT(1) )
  {
    QTextDocumentWriter_write2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=write

$prototypeV2=void setCodec( QTextCodec * codec )

$prototypeV2=QTextCodec * codec() const

$extraMethods

#pragma ENDDUMP
