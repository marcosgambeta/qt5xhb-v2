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

$prototypeV2=bool addShader( QOpenGLShader * shader )

$prototypeV2=void removeShader( QOpenGLShader * shader )

$prototypeV2=QList<QOpenGLShader *> shaders() const

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

$prototypeV2=bool addShaderFromSourceFile( QOpenGLShader::ShaderType type, const QString & fileName )

$prototypeV2=void removeAllShaders()

$prototypeV2=virtual bool link()

$prototypeV2=bool isLinked() const

$prototypeV2=QString log() const

$prototypeV2=bool bind()

$prototypeV2=void release()

$prototypeV2=GLuint programId() const

$prototypeV2=int maxGeometryOutputVertices() const

$prototypeV2=void setPatchVertexCount( int count )

$prototypeV2=int patchVertexCount() const

$prototypeV2=static bool hasOpenGLShaderPrograms( QOpenGLContext * context = nullptr )

#pragma ENDDUMP
