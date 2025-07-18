//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#ifndef QT5XHB_MACROS_QTSCXML_H
#define QT5XHB_MACROS_QTSCXML_H

#define ISQSCXMLCOMPILER(n)                                 Qt5xHb::isObjectDerivedFrom(n, "QScxmlCompiler")
#define ISQSCXMLCPPDATAMODEL(n)                             Qt5xHb::isObjectDerivedFrom(n, "QScxmlCppDataModel")
#define ISQSCXMLDATAMODEL(n)                                Qt5xHb::isObjectDerivedFrom(n, "QScxmlDataModel")
#define ISQSCXMLDYNAMICSCXMLSERVICEFACTORY(n)               Qt5xHb::isObjectDerivedFrom(n, "QScxmlDynamicScxmlServiceFactory")
#define ISQSCXMLECMASCRIPTDATAMODEL(n)                      Qt5xHb::isObjectDerivedFrom(n, "QScxmlEcmaScriptDataModel")
#define ISQSCXMLERROR(n)                                    Qt5xHb::isObjectDerivedFrom(n, "QScxmlError")
#define ISQSCXMLEVENT(n)                                    Qt5xHb::isObjectDerivedFrom(n, "QScxmlEvent")
#define ISQSCXMLINVOKABLESERVICE(n)                         Qt5xHb::isObjectDerivedFrom(n, "QScxmlInvokableService")
#define ISQSCXMLINVOKABLESERVICEFACTORY(n)                  Qt5xHb::isObjectDerivedFrom(n, "QScxmlInvokableServiceFactory")
#define ISQSCXMLNULLDATAMODEL(n)                            Qt5xHb::isObjectDerivedFrom(n, "QScxmlNullDataModel")
#define ISQSCXMLSTATEMACHINE(n)                             Qt5xHb::isObjectDerivedFrom(n, "QScxmlStateMachine")
#define ISQSCXMLSTATICSCXMLSERVICEFACTORY(n)                Qt5xHb::isObjectDerivedFrom(n, "QScxmlStaticScxmlServiceFactory")
#define ISQSCXMLTABLEDATA(n)                                Qt5xHb::isObjectDerivedFrom(n, "QScxmlTableData")

#define PQSCXMLCOMPILER(n)                                  static_cast<QScxmlCompiler*>(Qt5xHb::itemGetPtr(n))
#define PQSCXMLCPPDATAMODEL(n)                              static_cast<QScxmlCppDataModel*>(Qt5xHb::itemGetPtr(n))
#define PQSCXMLDATAMODEL(n)                                 static_cast<QScxmlDataModel*>(Qt5xHb::itemGetPtr(n))
#define PQSCXMLDYNAMICSCXMLSERVICEFACTORY(n)                static_cast<QScxmlDynamicScxmlServiceFactory*>(Qt5xHb::itemGetPtr(n))
#define PQSCXMLECMASCRIPTDATAMODEL(n)                       static_cast<QScxmlEcmaScriptDataModel*>(Qt5xHb::itemGetPtr(n))
#define PQSCXMLERROR(n)                                     static_cast<QScxmlError*>(Qt5xHb::itemGetPtr(n))
#define PQSCXMLEVENT(n)                                     static_cast<QScxmlEvent*>(Qt5xHb::itemGetPtr(n))
#define PQSCXMLINVOKABLESERVICE(n)                          static_cast<QScxmlInvokableService*>(Qt5xHb::itemGetPtr(n))
#define PQSCXMLINVOKABLESERVICEFACTORY(n)                   static_cast<QScxmlInvokableServiceFactory*>(Qt5xHb::itemGetPtr(n))
#define PQSCXMLNULLDATAMODEL(n)                             static_cast<QScxmlNullDataModel*>(Qt5xHb::itemGetPtr(n))
#define PQSCXMLSTATEMACHINE(n)                              static_cast<QScxmlStateMachine*>(Qt5xHb::itemGetPtr(n))
#define PQSCXMLSTATICSCXMLSERVICEFACTORY(n)                 static_cast<QScxmlStaticScxmlServiceFactory*>(Qt5xHb::itemGetPtr(n))
#define PQSCXMLTABLEDATA(n)                                 static_cast<QScxmlTableData*>(Qt5xHb::itemGetPtr(n))

#define OPQSCXMLCOMPILER(n, v)                              HB_ISNIL(n) ? v : static_cast<QScxmlCompiler*>(Qt5xHb::itemGetPtr(n))
#define OPQSCXMLCPPDATAMODEL(n, v)                          HB_ISNIL(n) ? v : static_cast<QScxmlCppDataModel*>(Qt5xHb::itemGetPtr(n))
#define OPQSCXMLDATAMODEL(n, v)                             HB_ISNIL(n) ? v : static_cast<QScxmlDataModel*>(Qt5xHb::itemGetPtr(n))
#define OPQSCXMLDYNAMICSCXMLSERVICEFACTORY(n, v)            HB_ISNIL(n) ? v : static_cast<QScxmlDynamicScxmlServiceFactory*>(Qt5xHb::itemGetPtr(n))
#define OPQSCXMLECMASCRIPTDATAMODEL(n, v)                   HB_ISNIL(n) ? v : static_cast<QScxmlEcmaScriptDataModel*>(Qt5xHb::itemGetPtr(n))
#define OPQSCXMLERROR(n, v)                                 HB_ISNIL(n) ? v : static_cast<QScxmlError*>(Qt5xHb::itemGetPtr(n))
#define OPQSCXMLEVENT(n, v)                                 HB_ISNIL(n) ? v : static_cast<QScxmlEvent*>(Qt5xHb::itemGetPtr(n))
#define OPQSCXMLINVOKABLESERVICE(n, v)                      HB_ISNIL(n) ? v : static_cast<QScxmlInvokableService*>(Qt5xHb::itemGetPtr(n))
#define OPQSCXMLINVOKABLESERVICEFACTORY(n, v)               HB_ISNIL(n) ? v : static_cast<QScxmlInvokableServiceFactory*>(Qt5xHb::itemGetPtr(n))
#define OPQSCXMLNULLDATAMODEL(n, v)                         HB_ISNIL(n) ? v : static_cast<QScxmlNullDataModel*>(Qt5xHb::itemGetPtr(n))
#define OPQSCXMLSTATEMACHINE(n, v)                          HB_ISNIL(n) ? v : static_cast<QScxmlStateMachine*>(Qt5xHb::itemGetPtr(n))
#define OPQSCXMLSTATICSCXMLSERVICEFACTORY(n, v)             HB_ISNIL(n) ? v : static_cast<QScxmlStaticScxmlServiceFactory*>(Qt5xHb::itemGetPtr(n))
#define OPQSCXMLTABLEDATA(n, v)                             HB_ISNIL(n) ? v : static_cast<QScxmlTableData*>(Qt5xHb::itemGetPtr(n))

#endif // QT5XHB_MACROS_QTSCXML_H
