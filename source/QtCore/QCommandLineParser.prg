/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QCOMMANDLINEOPTION
#endif

CLASS QCommandLineParser

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD setSingleDashWordOptionMode
   METHOD addOption
   METHOD addVersionOption
   METHOD addHelpOption
   METHOD setApplicationDescription
   METHOD applicationDescription
   METHOD addPositionalArgument
   METHOD clearPositionalArguments
   METHOD process
   METHOD parse
   METHOD errorText
   METHOD isSet
   METHOD value
   METHOD values
   METHOD positionalArguments
   METHOD optionNames
   METHOD unknownOptionNames
   METHOD showHelp
   METHOD helpText

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QCommandLineParser
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QtCore/QCommandLineParser>
#endif
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QtCore/QCommandLineParser>
#endif
#endif

/*
QCommandLineParser()
*/
HB_FUNC_STATIC( QCOMMANDLINEPARSER_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  if( ISNUMPAR(0) )
  {
    auto obj = new QCommandLineParser();
    Qt5xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

HB_FUNC_STATIC( QCOMMANDLINEPARSER_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto obj = static_cast<QCommandLineParser*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
    delete obj;
    obj = nullptr;
    auto ptr = hb_itemPutPtr(nullptr, nullptr);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
void setSingleDashWordOptionMode( QCommandLineParser::SingleDashWordOptionMode parsingMode )
*/
HB_FUNC_STATIC( QCOMMANDLINEPARSER_SETSINGLEDASHWORDOPTIONMODE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto obj = static_cast<QCommandLineParser*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setSingleDashWordOptionMode( static_cast<QCommandLineParser::SingleDashWordOptionMode>( hb_parni(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
bool addOption( const QCommandLineOption & commandLineOption )
*/
HB_FUNC_STATIC( QCOMMANDLINEPARSER_ADDOPTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto obj = static_cast<QCommandLineParser*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQCOMMANDLINEOPTION(1) )
    {
#endif
      RBOOL( obj->addOption( *PQCOMMANDLINEOPTION(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
QCommandLineOption addVersionOption()
*/
HB_FUNC_STATIC( QCOMMANDLINEPARSER_ADDVERSIONOPTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto obj = static_cast<QCommandLineParser*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QCommandLineOption( obj->addVersionOption() );
      Qt5xHb::createReturnClass(ptr, "QCOMMANDLINEOPTION", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
QCommandLineOption addHelpOption()
*/
HB_FUNC_STATIC( QCOMMANDLINEPARSER_ADDHELPOPTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto obj = static_cast<QCommandLineParser*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QCommandLineOption( obj->addHelpOption() );
      Qt5xHb::createReturnClass(ptr, "QCOMMANDLINEOPTION", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setApplicationDescription( const QString & description )
*/
HB_FUNC_STATIC( QCOMMANDLINEPARSER_SETAPPLICATIONDESCRIPTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto obj = static_cast<QCommandLineParser*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      obj->setApplicationDescription( PQSTRING(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
QString applicationDescription() const
*/
HB_FUNC_STATIC( QCOMMANDLINEPARSER_APPLICATIONDESCRIPTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto obj = static_cast<QCommandLineParser*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->applicationDescription() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void addPositionalArgument( const QString & name, const QString & description, const QString & syntax = QString() )
*/
HB_FUNC_STATIC( QCOMMANDLINEPARSER_ADDPOSITIONALARGUMENT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto obj = static_cast<QCommandLineParser*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(2, 3) && HB_ISCHAR(1) && HB_ISCHAR(2) && ( HB_ISCHAR(3) || HB_ISNIL(3) ) )
    {
#endif
      obj->addPositionalArgument( PQSTRING(1), PQSTRING(2), OPQSTRING( 3, QString() ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
void clearPositionalArguments()
*/
HB_FUNC_STATIC( QCOMMANDLINEPARSER_CLEARPOSITIONALARGUMENTS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto obj = static_cast<QCommandLineParser*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->clearPositionalArguments();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

HB_FUNC_STATIC( QCOMMANDLINEPARSER_PROCESS )
{
  if( ISNUMPAR(1) && HB_ISARRAY(1) )
  {
    /*
    void process( const QStringList & arguments )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
    auto obj = static_cast<QCommandLineParser*>(Qt5xHb::itemGetPtrStackSelfItem());

    if (obj != nullptr)
    {
      obj->process( PQSTRINGLIST(1) );
    }

    hb_itemReturn(hb_stackSelfItem());
#endif

  }
  else if( ISNUMPAR(1) && ISQCOREAPPLICATION(1) )
  {
    /*
    void process( const QCoreApplication & app )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
    auto obj = static_cast<QCommandLineParser*>(Qt5xHb::itemGetPtrStackSelfItem());

    if (obj != nullptr)
    {
      obj->process( *PQCOREAPPLICATION(1) );
    }

    hb_itemReturn(hb_stackSelfItem());
#endif

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
bool parse( const QStringList & arguments )
*/
HB_FUNC_STATIC( QCOMMANDLINEPARSER_PARSE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto obj = static_cast<QCommandLineParser*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISARRAY(1) )
    {
#endif
      RBOOL( obj->parse( PQSTRINGLIST(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
QString errorText() const
*/
HB_FUNC_STATIC( QCOMMANDLINEPARSER_ERRORTEXT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto obj = static_cast<QCommandLineParser*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->errorText() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

HB_FUNC_STATIC( QCOMMANDLINEPARSER_ISSET )
{
  if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
    /*
    bool isSet( const QString & name ) const
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
    auto obj = static_cast<QCommandLineParser*>(Qt5xHb::itemGetPtrStackSelfItem());

    if (obj != nullptr)
    {
      RBOOL( obj->isSet( PQSTRING(1) ) );
    }
#endif

  }
  else if( ISNUMPAR(1) && ISQCOMMANDLINEOPTION(1) )
  {
    /*
    bool isSet( const QCommandLineOption & option ) const
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
    auto obj = static_cast<QCommandLineParser*>(Qt5xHb::itemGetPtrStackSelfItem());

    if (obj != nullptr)
    {
      RBOOL( obj->isSet( *PQCOMMANDLINEOPTION(1) ) );
    }
#endif

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QCOMMANDLINEPARSER_VALUE )
{
  if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
    /*
    QString value( const QString & name ) const
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
    auto obj = static_cast<QCommandLineParser*>(Qt5xHb::itemGetPtrStackSelfItem());

    if (obj != nullptr)
    {
      RQSTRING( obj->value( PQSTRING(1) ) );
    }
#endif

  }
  else if( ISNUMPAR(1) && ISQCOMMANDLINEOPTION(1) )
  {
    /*
    QString value( const QCommandLineOption & option ) const
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
    auto obj = static_cast<QCommandLineParser*>(Qt5xHb::itemGetPtrStackSelfItem());

    if (obj != nullptr)
    {
      RQSTRING( obj->value( *PQCOMMANDLINEOPTION(1) ) );
    }
#endif

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QCOMMANDLINEPARSER_VALUES )
{
  if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
    /*
    QStringList values( const QString & name ) const
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
    auto obj = static_cast<QCommandLineParser*>(Qt5xHb::itemGetPtrStackSelfItem());

    if (obj != nullptr)
    {
      RQSTRINGLIST( obj->values( PQSTRING(1) ) );
    }
#endif

  }
  else if( ISNUMPAR(1) && ISQCOMMANDLINEOPTION(1) )
  {
    /*
    QStringList values( const QCommandLineOption & option ) const
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
    auto obj = static_cast<QCommandLineParser*>(Qt5xHb::itemGetPtrStackSelfItem());

    if (obj != nullptr)
    {
      RQSTRINGLIST( obj->values( *PQCOMMANDLINEOPTION(1) ) );
    }
#endif

  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QStringList positionalArguments() const
*/
HB_FUNC_STATIC( QCOMMANDLINEPARSER_POSITIONALARGUMENTS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto obj = static_cast<QCommandLineParser*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRINGLIST( obj->positionalArguments() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
QStringList optionNames() const
*/
HB_FUNC_STATIC( QCOMMANDLINEPARSER_OPTIONNAMES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto obj = static_cast<QCommandLineParser*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRINGLIST( obj->optionNames() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
QStringList unknownOptionNames() const
*/
HB_FUNC_STATIC( QCOMMANDLINEPARSER_UNKNOWNOPTIONNAMES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto obj = static_cast<QCommandLineParser*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRINGLIST( obj->unknownOptionNames() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
Q_NORETURN void showHelp( int exitCode = 0 )
*/
HB_FUNC_STATIC( QCOMMANDLINEPARSER_SHOWHELP )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto obj = static_cast<QCommandLineParser*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0, 1) && ( HB_ISNUM(1) || HB_ISNIL(1) ) )
    {
#endif
      obj->showHelp( OPINT( 1, 0 ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
QString helpText() const
*/
HB_FUNC_STATIC( QCOMMANDLINEPARSER_HELPTEXT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  auto obj = static_cast<QCommandLineParser*>(Qt5xHb::itemGetPtrStackSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->helpText() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

HB_FUNC_STATIC( QCOMMANDLINEPARSER_NEWFROM )
{
  auto self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISOBJECT(1) )
  {
    auto ptr = hb_itemPutPtr(nullptr, hb_itemGetPtr(hb_objSendMsg(hb_param(1, HB_IT_OBJECT), "POINTER", 0)));
    hb_objSendMsg(self, "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
    auto des = hb_itemPutL(nullptr, false);
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else if( hb_pcount() == 1 && HB_ISPOINTER(1) )
  {
    auto ptr = hb_itemPutPtr(nullptr, hb_itemGetPtr(hb_param(1, HB_IT_POINTER)));
    hb_objSendMsg(self, "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
    auto des = hb_itemPutL(nullptr, false);
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

HB_FUNC_STATIC( QCOMMANDLINEPARSER_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QCOMMANDLINEPARSER_NEWFROM );
}

HB_FUNC_STATIC( QCOMMANDLINEPARSER_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QCOMMANDLINEPARSER_NEWFROM );
}

HB_FUNC_STATIC( QCOMMANDLINEPARSER_SELFDESTRUCTION )
{
  hb_retl(hb_itemGetL(hb_objSendMsg(hb_stackSelfItem(), "SELF_DESTRUCTION", 0)));
}

HB_FUNC_STATIC( QCOMMANDLINEPARSER_SETSELFDESTRUCTION )
{
  auto self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISLOG(1) )
  {
    auto des = hb_itemPutL(nullptr, hb_parl(1));
    hb_objSendMsg(self, "_SELF_DESTRUCTION", 1, des);
    hb_itemRelease(des);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }

  hb_itemReturn(self);
}

#pragma ENDDUMP
