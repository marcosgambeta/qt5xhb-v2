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

$prototype=QOpenGLShaderProgram(QObject *parent = nullptr)
$constructor=|new|QObject *=nullptr

$deleteMethod

$prototype=bool addShader(QOpenGLShader *shader)
$method=|bool|addShader|QOpenGLShader *

$prototype=void removeShader(QOpenGLShader *shader)
$method=|void|removeShader|QOpenGLShader *

$prototype=QList<QOpenGLShader *> shaders() const
$method=|QList<QOpenGLShader *>|shaders|

$prototype=bool addShaderFromSourceCode(QOpenGLShader::ShaderType type, const char *source)
$method=|bool|addShaderFromSourceCode,addShaderFromSourceCode1|QOpenGLShader::ShaderType,const char *

$prototype=bool addShaderFromSourceCode(QOpenGLShader::ShaderType type, const QByteArray& source)
$method=|bool|addShaderFromSourceCode,addShaderFromSourceCode2|QOpenGLShader::ShaderType,const QByteArray &

$prototype=bool addShaderFromSourceCode(QOpenGLShader::ShaderType type, const QString& source)
$method=|bool|addShaderFromSourceCode,addShaderFromSourceCode3|QOpenGLShader::ShaderType,const QString &

/*
[1]bool addShaderFromSourceCode(QOpenGLShader::ShaderType type, const char *source)
[2]bool addShaderFromSourceCode(QOpenGLShader::ShaderType type, const QByteArray& source)
[3]bool addShaderFromSourceCode(QOpenGLShader::ShaderType type, const QString& source)
*/

HB_FUNC_STATIC( QOPENGLSHADERPROGRAM_ADDSHADERFROMSOURCECODE )
{
  // TODO: implementar
}
$addMethod=addShaderFromSourceCode

$prototype=bool addShaderFromSourceFile(QOpenGLShader::ShaderType type, const QString& fileName)
$method=|bool|addShaderFromSourceFile|QOpenGLShader::ShaderType,const QString &

$prototypeV2=void removeAllShaders()

$prototypeV2=virtual bool link()

$prototypeV2=bool isLinked() const

$prototypeV2=QString log() const

$prototypeV2=bool bind()

$prototypeV2=void release()

$prototypeV2=GLuint programId() const

$prototypeV2=int maxGeometryOutputVertices() const

$prototype=void setPatchVertexCount(int count)
$method=|void|setPatchVertexCount|int

$prototypeV2=int patchVertexCount() const

$prototype=static bool hasOpenGLShaderPrograms(QOpenGLContext *context = nullptr)
$staticMethod=|bool|hasOpenGLShaderPrograms|QOpenGLContext *=nullptr

#pragma ENDDUMP
