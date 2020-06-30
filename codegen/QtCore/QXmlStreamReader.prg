%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCore

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QXmlStreamReader()
$internalConstructor=|new1|

$prototype=QXmlStreamReader(QIODevice * device)
$internalConstructor=|new2|QIODevice *

$prototype=QXmlStreamReader(const QByteArray & data)
$internalConstructor=|new3|const QByteArray &

$prototype=QXmlStreamReader(const QString & data)
$internalConstructor=|new4|const QString &

%% TODO: conflito entre [4] e [5]

/*
[1]QXmlStreamReader()
[2]QXmlStreamReader(QIODevice * device)
[3]QXmlStreamReader(const QByteArray & data)
[4]QXmlStreamReader(const QString & data)
[5]QXmlStreamReader(const char * data) // INFO: nao implementado
*/

HB_FUNC_STATIC( QXMLSTREAMREADER_NEW )
{
  if( ISNUMPAR(0) )
  {
    QXmlStreamReader_new1();
  }
  else if( ISNUMPAR(1) && ISQIODEVICE(1) )
  {
    QXmlStreamReader_new2();
  }
  else if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    QXmlStreamReader_new3();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QXmlStreamReader_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=void addData(const QByteArray & data)
$internalMethod=|void|addData,addData1|const QByteArray &

$prototype=void addData(const QString & data)
$internalMethod=|void|addData,addData2|const QString &

$prototype=void addData(const char * data)
$internalMethod=|void|addData,addData3|const char *

%% TODO: conflito entre [2] e [3]

/*
[1]void addData(const QByteArray & data)
[2]void addData(const QString & data)
[3]void addData(const char * data)
*/

HB_FUNC_STATIC( QXMLSTREAMREADER_ADDDATA )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    QXmlStreamReader_addData1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QXmlStreamReader_addData2();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QXmlStreamReader_addData3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=addData

$prototypeV2=void addExtraNamespaceDeclaration( const QXmlStreamNamespaceDeclaration & extraNamespaceDeclaration )

$prototypeV2=bool atEnd() const

$prototypeV2=QXmlStreamAttributes attributes() const

$prototypeV2=qint64 characterOffset() const

$prototypeV2=void clear()

$prototypeV2=qint64 columnNumber() const

$prototypeV2=QIODevice * device() const

$prototypeV2=QStringRef documentEncoding() const

$prototypeV2=QStringRef documentVersion() const

$prototypeV2=QStringRef dtdName() const

$prototypeV2=QStringRef dtdPublicId() const

$prototypeV2=QStringRef dtdSystemId() const

$prototypeV2=QXmlStreamEntityDeclarations entityDeclarations() const

$prototypeV2=QXmlStreamEntityResolver * entityResolver() const

$prototypeV2=QXmlStreamReader::Error error() const

$prototypeV2=QString errorString() const

$prototypeV2=bool hasError() const

$prototypeV2=bool isCDATA() const

$prototypeV2=bool isCharacters() const

$prototypeV2=bool isComment() const

$prototypeV2=bool isDTD() const

$prototypeV2=bool isEndDocument() const

$prototypeV2=bool isEndElement() const

$prototypeV2=bool isEntityReference() const

$prototypeV2=bool isProcessingInstruction() const

$prototypeV2=bool isStandaloneDocument() const

$prototypeV2=bool isStartDocument() const

$prototypeV2=bool isStartElement() const

$prototypeV2=bool isWhitespace() const

$prototypeV2=qint64 lineNumber() const

$prototypeV2=QStringRef name() const

$prototypeV2=QXmlStreamNamespaceDeclarations namespaceDeclarations() const

$prototypeV2=bool namespaceProcessing() const

$prototypeV2=QStringRef namespaceUri() const

$prototypeV2=QXmlStreamNotationDeclarations notationDeclarations() const

$prototypeV2=QStringRef prefix() const

$prototypeV2=QStringRef processingInstructionData() const

$prototypeV2=QStringRef processingInstructionTarget() const

$prototypeV2=QStringRef qualifiedName() const

$prototypeV2=void raiseError( const QString & message = QString() )

$prototypeV2=QString readElementText( QXmlStreamReader::ReadElementTextBehaviour behaviour = QXmlStreamReader::ErrorOnUnexpectedElement )

$prototypeV2=QXmlStreamReader::TokenType readNext()

$prototypeV2=bool readNextStartElement()

$prototypeV2=void setDevice( QIODevice * device )

$prototypeV2=void setEntityResolver( QXmlStreamEntityResolver * resolver )

$prototypeV2=void setNamespaceProcessing( bool )

$prototypeV2=void skipCurrentElement()

$prototypeV2=QStringRef text() const

$prototypeV2=QString tokenString() const

$prototypeV2=QXmlStreamReader::TokenType tokenType() const

$extraMethods

#pragma ENDDUMP
