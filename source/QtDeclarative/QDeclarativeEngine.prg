/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

// clang-format off

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QDECLARATIVECONTEXT
REQUEST QDECLARATIVEIMAGEPROVIDER
REQUEST QDECLARATIVENETWORKACCESSMANAGERFACTORY
REQUEST QNETWORKACCESSMANAGER
REQUEST QURL
#endif

CLASS QDeclarativeEngine INHERIT QObject

   METHOD new
   METHOD delete
   METHOD addImageProvider
   METHOD addImportPath
   METHOD addPluginPath
   METHOD baseUrl
   METHOD clearComponentCache
   METHOD imageProvider
   METHOD importPathList
   METHOD networkAccessManager
   METHOD networkAccessManagerFactory
   METHOD offlineStoragePath
   METHOD outputWarningsToStandardError
   METHOD pluginPathList
   METHOD removeImageProvider
   METHOD rootContext
   METHOD setBaseUrl
   METHOD setImportPathList
   METHOD setNetworkAccessManagerFactory
   METHOD setOfflineStoragePath
   METHOD setOutputWarningsToStandardError
   METHOD setPluginPathList
   METHOD contextForObject
   METHOD objectOwnership
   METHOD setContextForObject
   METHOD setObjectOwnership

   METHOD onQuit
   METHOD onWarnings

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QDeclarativeEngine
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtDeclarative/QDeclarativeEngine>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtDeclarative/QDeclarativeEngine>
#endif

#include <QtCore/QStringList>
#include <QtDeclarative/QDeclarativeContext>
#include <QtNetwork/QNetworkAccessManager>

    /*
    QDeclarativeEngine(QObject * parent = nullptr)
    */
HB_FUNC_STATIC(QDECLARATIVEENGINE_NEW)
{
  if (ISBETWEEN(0, 1) && (ISQOBJECT(1) || HB_ISNIL(1)))
  {
    auto obj = new QDeclarativeEngine(OPQOBJECT(1, nullptr));
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QDECLARATIVEENGINE_DELETE)
{
  auto obj = qobject_cast<QDeclarativeEngine *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
    Qt5xHb::Events_disconnect_all_events(obj, true);
    Qt5xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = nullptr;
    auto ptr = hb_itemPutPtr(nullptr, nullptr);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void addImageProvider(const QString & providerId, QDeclarativeImageProvider * provider)
*/
HB_FUNC_STATIC(QDECLARATIVEENGINE_ADDIMAGEPROVIDER)
{
  auto obj = qobject_cast<QDeclarativeEngine *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISCHAR(1) && ISQDECLARATIVEIMAGEPROVIDER(2))
    {
#endif
      obj->addImageProvider(PQSTRING(1), PQDECLARATIVEIMAGEPROVIDER(2));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void addImportPath(const QString & path)
*/
HB_FUNC_STATIC(QDECLARATIVEENGINE_ADDIMPORTPATH)
{
  auto obj = qobject_cast<QDeclarativeEngine *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      obj->addImportPath(PQSTRING(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void addPluginPath(const QString & path)
*/
HB_FUNC_STATIC(QDECLARATIVEENGINE_ADDPLUGINPATH)
{
  auto obj = qobject_cast<QDeclarativeEngine *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      obj->addPluginPath(PQSTRING(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QUrl baseUrl() const
*/
HB_FUNC_STATIC(QDECLARATIVEENGINE_BASEURL)
{
  auto obj = qobject_cast<QDeclarativeEngine *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = new QUrl(obj->baseUrl());
      Qt5xHb::createReturnClass(ptr, "QURL", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void clearComponentCache()
*/
HB_FUNC_STATIC(QDECLARATIVEENGINE_CLEARCOMPONENTCACHE)
{
  auto obj = qobject_cast<QDeclarativeEngine *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->clearComponentCache();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QDeclarativeImageProvider * imageProvider(const QString & providerId) const
*/
HB_FUNC_STATIC(QDECLARATIVEENGINE_IMAGEPROVIDER)
{
  auto obj = qobject_cast<QDeclarativeEngine *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      auto ptr = obj->imageProvider(PQSTRING(1));
      Qt5xHb::createReturnClass(ptr, "QDECLARATIVEIMAGEPROVIDER", false);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QStringList importPathList() const
*/
HB_FUNC_STATIC(QDECLARATIVEENGINE_IMPORTPATHLIST)
{
  auto obj = qobject_cast<QDeclarativeEngine *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRINGLIST(obj->importPathList());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QNetworkAccessManager * networkAccessManager() const
*/
HB_FUNC_STATIC(QDECLARATIVEENGINE_NETWORKACCESSMANAGER)
{
  auto obj = qobject_cast<QDeclarativeEngine *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = obj->networkAccessManager();
      Qt5xHb::createReturnQObjectClass(ptr, "QNETWORKACCESSMANAGER");
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QDeclarativeNetworkAccessManagerFactory * networkAccessManagerFactory() const
*/
HB_FUNC_STATIC(QDECLARATIVEENGINE_NETWORKACCESSMANAGERFACTORY)
{
  auto obj = qobject_cast<QDeclarativeEngine *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = obj->networkAccessManagerFactory();
      Qt5xHb::createReturnClass(ptr, "QDECLARATIVENETWORKACCESSMANAGERFACTORY", false);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QString offlineStoragePath() const
*/
HB_FUNC_STATIC(QDECLARATIVEENGINE_OFFLINESTORAGEPATH)
{
  auto obj = qobject_cast<QDeclarativeEngine *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->offlineStoragePath());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool outputWarningsToStandardError() const
*/
HB_FUNC_STATIC(QDECLARATIVEENGINE_OUTPUTWARNINGSTOSTANDARDERROR)
{
  auto obj = qobject_cast<QDeclarativeEngine *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->outputWarningsToStandardError());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QStringList pluginPathList() const
*/
HB_FUNC_STATIC(QDECLARATIVEENGINE_PLUGINPATHLIST)
{
  auto obj = qobject_cast<QDeclarativeEngine *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRINGLIST(obj->pluginPathList());
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void removeImageProvider(const QString & providerId)
*/
HB_FUNC_STATIC(QDECLARATIVEENGINE_REMOVEIMAGEPROVIDER)
{
  auto obj = qobject_cast<QDeclarativeEngine *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      obj->removeImageProvider(PQSTRING(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QDeclarativeContext * rootContext() const
*/
HB_FUNC_STATIC(QDECLARATIVEENGINE_ROOTCONTEXT)
{
  auto obj = qobject_cast<QDeclarativeEngine *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      auto ptr = obj->rootContext();
      Qt5xHb::createReturnQObjectClass(ptr, "QDECLARATIVECONTEXT");
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void setBaseUrl(const QUrl & url)
*/
HB_FUNC_STATIC(QDECLARATIVEENGINE_SETBASEURL)
{
  auto obj = qobject_cast<QDeclarativeEngine *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQURL(1))
    {
#endif
      obj->setBaseUrl(*PQURL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setImportPathList(const QStringList & paths)
*/
HB_FUNC_STATIC(QDECLARATIVEENGINE_SETIMPORTPATHLIST)
{
  auto obj = qobject_cast<QDeclarativeEngine *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISARRAY(1))
    {
#endif
      obj->setImportPathList(PQSTRINGLIST(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setNetworkAccessManagerFactory(QDeclarativeNetworkAccessManagerFactory * factory)
*/
HB_FUNC_STATIC(QDECLARATIVEENGINE_SETNETWORKACCESSMANAGERFACTORY)
{
  auto obj = qobject_cast<QDeclarativeEngine *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQDECLARATIVENETWORKACCESSMANAGERFACTORY(1))
    {
#endif
      obj->setNetworkAccessManagerFactory(PQDECLARATIVENETWORKACCESSMANAGERFACTORY(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setOfflineStoragePath(const QString & dir)
*/
HB_FUNC_STATIC(QDECLARATIVEENGINE_SETOFFLINESTORAGEPATH)
{
  auto obj = qobject_cast<QDeclarativeEngine *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      obj->setOfflineStoragePath(PQSTRING(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setOutputWarningsToStandardError(bool enabled)
*/
HB_FUNC_STATIC(QDECLARATIVEENGINE_SETOUTPUTWARNINGSTOSTANDARDERROR)
{
  auto obj = qobject_cast<QDeclarativeEngine *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISLOG(1))
    {
#endif
      obj->setOutputWarningsToStandardError(PBOOL(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setPluginPathList(const QStringList & paths)
*/
HB_FUNC_STATIC(QDECLARATIVEENGINE_SETPLUGINPATHLIST)
{
  auto obj = qobject_cast<QDeclarativeEngine *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != nullptr)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISARRAY(1))
    {
#endif
      obj->setPluginPathList(PQSTRINGLIST(1));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
static QDeclarativeContext * contextForObject(const QObject * object)
*/
HB_FUNC_STATIC(QDECLARATIVEENGINE_CONTEXTFOROBJECT)
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(1) && ISQOBJECT(1))
  {
#endif
    auto ptr = QDeclarativeEngine::contextForObject(PQOBJECT(1));
    Qt5xHb::createReturnQObjectClass(ptr, "QDECLARATIVECONTEXT");
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static QDeclarativeEngine::ObjectOwnership objectOwnership(QObject * object)
*/
HB_FUNC_STATIC(QDECLARATIVEENGINE_OBJECTOWNERSHIP)
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(1) && ISQOBJECT(1))
  {
#endif
    RENUM(QDeclarativeEngine::objectOwnership(PQOBJECT(1)));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static void setContextForObject(QObject * object, QDeclarativeContext * context)
*/
HB_FUNC_STATIC(QDECLARATIVEENGINE_SETCONTEXTFOROBJECT)
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(2) && ISQOBJECT(1) && ISQDECLARATIVECONTEXT(2))
  {
#endif
    QDeclarativeEngine::setContextForObject(PQOBJECT(1), PQDECLARATIVECONTEXT(2));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif

  hb_itemReturn(hb_stackSelfItem());
}

/*
static void setObjectOwnership(QObject * object, QDeclarativeEngine::ObjectOwnership ownership)
*/
HB_FUNC_STATIC(QDECLARATIVEENGINE_SETOBJECTOWNERSHIP)
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(2) && ISQOBJECT(1) && HB_ISNUM(2))
  {
#endif
    QDeclarativeEngine::setObjectOwnership(PQOBJECT(1), static_cast<QDeclarativeEngine::ObjectOwnership>(hb_parni(2)));
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif

  hb_itemReturn(hb_stackSelfItem());
}

/*
void quit()
*/
HB_FUNC_STATIC(QDECLARATIVEENGINE_ONQUIT)
{
  auto sender = qobject_cast<QDeclarativeEngine *>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if (sender != nullptr)
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("quit()");
    auto indexOfCodeBlock = -1;

    if (hb_pcount() == 1)
    {
      if (Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock))
      {
        auto connection = QObject::connect(sender, &QDeclarativeEngine::quit, [sender, indexOfCodeBlock]() {
          auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

          if (cb != nullptr)
          {
            auto pSender = Qt5xHb::Signals_return_qobject(sender, "QDECLARATIVEENGINE");
            hb_vmEvalBlockV(cb, 1, pSender);
            hb_itemRelease(pSender);
          }
        });

        Qt5xHb::Signals_store_connection(indexOfCodeBlock, connection);
        result = true;
      }
    }
    else if (hb_pcount() == 0)
    {
      Qt5xHb::Signals_disconnection(sender, indexOfSignal);
      QObject::disconnect(Qt5xHb::Signals_get_connection(sender, indexOfSignal));
      result = true;
    }
  }

  hb_retl(result);
}

/*
void warnings(const QList<QDeclarativeError> & warnings)
*/
HB_FUNC_STATIC(QDECLARATIVEENGINE_ONWARNINGS)
{
  auto sender = qobject_cast<QDeclarativeEngine *>(Qt5xHb::getQObjectPointerFromSelfItem());

  auto result = false;

  if (sender != nullptr)
  {
    auto indexOfSignal = sender->metaObject()->indexOfSignal("warnings(QList<QDeclarativeError>)");
    auto indexOfCodeBlock = -1;

    if (hb_pcount() == 1)
    {
      if (Qt5xHb::Signals_connection(sender, indexOfSignal, indexOfCodeBlock))
      {
        auto connection = QObject::connect(
            sender, &QDeclarativeEngine::warnings, [sender, indexOfCodeBlock](const QList<QDeclarativeError> &arg1) {
              auto cb = Qt5xHb::Signals_return_codeblock(indexOfCodeBlock);

              if (cb != nullptr)
              {
                auto pSender = Qt5xHb::Signals_return_qobject(sender, "QDECLARATIVEENGINE");
                auto pDynSym = hb_dynsymFindName("QDECLARATIVEERROR");
                auto pArg1 = hb_itemArrayNew(0);
                if (pDynSym != nullptr)
                {
                  for (const auto &item : arg1)
                  {
                    hb_vmPushDynSym(pDynSym);
                    hb_vmPushNil();
                    hb_vmDo(0);
                    auto pTempObject = hb_itemNew(nullptr);
                    hb_itemCopy(pTempObject, hb_stackReturnItem());
                    auto pTempItem = hb_itemPutPtr(nullptr, new QDeclarativeError(item));
                    hb_objSendMsg(pTempObject, "NEWFROMPOINTER", 1, pTempItem);
                    hb_arrayAddForward(pArg1, pTempObject);
                    hb_itemRelease(pTempObject);
                    hb_itemRelease(pTempItem);
                  }
                }
                else
                {
                  hb_errRT_BASE(EG_NOFUNC, 1001, nullptr, "QDECLARATIVEERROR", HB_ERR_ARGS_BASEPARAMS);
                }
                hb_vmEvalBlockV(cb, 2, pSender, pArg1);
                hb_itemRelease(pSender);
                hb_itemRelease(pArg1);
              }
            });

        Qt5xHb::Signals_store_connection(indexOfCodeBlock, connection);
        result = true;
      }
    }
    else if (hb_pcount() == 0)
    {
      Qt5xHb::Signals_disconnection(sender, indexOfSignal);
      QObject::disconnect(Qt5xHb::Signals_get_connection(sender, indexOfSignal));
      result = true;
    }
  }

  hb_retl(result);
}

#pragma ENDDUMP
