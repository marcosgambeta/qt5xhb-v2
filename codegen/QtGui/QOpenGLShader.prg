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

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QOpenGLShader(QOpenGLShader::ShaderType type, QObject *parent = nullptr)
$constructor=|new|QOpenGLShader::ShaderType,QObject *=nullptr

$deleteMethod

$prototypeV2=QOpenGLShader::ShaderType shaderType() const

$prototype=bool compileSourceCode(const char *source)
$method=|bool|compileSourceCode,compileSourceCode1|const char *

$prototype=bool compileSourceCode(const QByteArray& source)
$method=|bool|compileSourceCode,compileSourceCode2|const QByteArray &

$prototype=bool compileSourceCode(const QString& source)
$method=|bool|compileSourceCode,compileSourceCode3|const QString &

/*
[1]bool compileSourceCode(const char *source)
[2]bool compileSourceCode(const QByteArray& source)
[3]bool compileSourceCode(const QString& source)
*/

HB_FUNC_STATIC( QOPENGLSHADER_COMPILESOURCECODE )
{
  // TODO: implementar
}
$addMethod=compileSourceCode

$prototype=bool compileSourceFile(const QString& fileName)
$method=|bool|compileSourceFile|const QString &

$prototypeV2=QByteArray sourceCode() const

$prototypeV2=bool isCompiled() const

$prototypeV2=QString log() const

$prototypeV2=GLuint shaderId() const

$prototype=static bool hasOpenGLShaders(ShaderType type, QOpenGLContext *context = nullptr)
$staticMethod=|bool|hasOpenGLShaders|QOpenGLShader::ShaderType,QOpenGLContext *=nullptr

#pragma ENDDUMP
