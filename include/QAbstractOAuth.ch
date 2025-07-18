//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#ifndef QABSTRACTOAUTH_CH
#define QABSTRACTOAUTH_CH

// enum class QAbstractOAuth::Status
#define QAbstractOAuth_NotAuthenticated                              0
#define QAbstractOAuth_TemporaryCredentialsReceived                  1
#define QAbstractOAuth_Granted                                       2
#define QAbstractOAuth_RefreshingToken                               3

// enum class QAbstractOAuth::Stage
#define QAbstractOAuth_RequestingTemporaryCredentials                0
#define QAbstractOAuth_RequestingAuthorization                       1
#define QAbstractOAuth_RequestingAccessToken                         2
#define QAbstractOAuth_RefreshingAccessToken                         3

// enum class QAbstractOAuth::Error
#define QAbstractOAuth_NoError                                       0
#define QAbstractOAuth_NetworkError                                  1
#define QAbstractOAuth_ServerError                                   2
#define QAbstractOAuth_OAuthTokenNotFoundError                       3
#define QAbstractOAuth_OAuthTokenSecretNotFoundError                 4
#define QAbstractOAuth_OAuthCallbackNotVerified                      5

// enum class QAbstractOAuth::ContentType
#define QAbstractOAuth_WwwFormUrlEncoded                             0
#define QAbstractOAuth_Json                                          1

#endif // QABSTRACTOAUTH_CH
