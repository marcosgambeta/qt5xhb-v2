/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "signals3.h"

static Signals3 *s_signals = nullptr;

/*
  constructor
*/
Signals3::Signals3(QObject *parent) : QObject(parent)
{
  mutex = new QMutex();
}

/*
  destructor
*/
Signals3::~Signals3()
{
  Signals3_release_codeblocks ();
  delete mutex;
}

/*
  Conecta um determinado sinal com um objeto
  Parâmetro 1: ponteiro para o objeto
  Parâmetro 2: assinatura do sinal
  Parâmetro 3: codeblock
  Retorna .t. se a conexão foi bem sucedida ou .f. se falhou
  Função de uso interno, não deve ser usada nas aplicações do
  usuário
*/

bool Signals3_connect_signal ( QObject * object, int signal, PHB_ITEM codeblock )
{
  int i;

  // cria objeto da classe Signals, caso não tenha sido criado
  if( s_signals == nullptr )
  {
    s_signals = new Signals3(QCoreApplication::instance());
  }

  // verifica se já está na lista
  int found = -1;

  for (i = 0; i < s_signals->list1.size(); ++i)
  {
    if( ( (QObject *) s_signals->list1.at(i) == (QObject *) object ) &&
        ( s_signals->list2.at(i) == signal ) &&
        ( (bool) s_signals->list4.at(i) == true ) )
    {
      found = i;
      //hb_itemRelease( codeblock );
      break;
    }
  }

  bool ret = false;

  // se nao encontrado na lista, adiciona
  if( found == -1 )
  {
    // procura por posição livre
    i = s_signals->list4.indexOf( false );

    if( i == -1 ) // nao encontrou posicao livre
    {
      // adiciona sinal na lista de sinais

      s_signals->list1 << object;
      s_signals->list2 << signal;
      s_signals->list3 << codeblock;
      s_signals->list4 << true;
      QMetaObject::Connection connection;
      s_signals->list5 << connection;
    }
    else // encontrou posicao livre
    {
      // coloca na posição livre
      s_signals->list1[i] = object;
      s_signals->list2[i] = signal;
      s_signals->list3[i] = codeblock;
      s_signals->list4[i] = true;
      QMetaObject::Connection connection;
      s_signals->list5[i] = connection;
    }

    ret = true;
  }

  // retorna o resultado da operação
  //hb_retl( ret );
  return ret;
}

/*
  Desconecta um determinado sinal
  Parâmetro 1: ponteiro para o objeto
  Parâmetro 2: assinatura do sinal
  Retorna .t. se a desconexão foi bem sucedida ou .f. se falhou
  Função de uso interno, não deve ser usada nas aplicações do
  usuário
*/

bool Signals3_disconnect_signal ( QObject * object, int signal )
{
  int i;

  // cria objeto da classe Signals, caso não tenha sido criado
  if( s_signals == nullptr )
  {
    s_signals = new Signals3(QCoreApplication::instance());
  }

  bool ret = false;

  // remove sinal da lista de sinais
  for (i = 0; i < s_signals->list1.size(); ++i)
  {
    if( (QObject *) s_signals->list1.at(i) == (QObject *) object )
    {
      if( ( s_signals->list2.at(i) == signal ) &&
          ( (bool) s_signals->list4.at(i) == true ) )
      {
        hb_itemRelease( (PHB_ITEM) s_signals->list3.at(i) );
        s_signals->list1[i] = nullptr;
        s_signals->list2[i] = -1;
        s_signals->list3[i] = nullptr;
        s_signals->list4[i] = false;
        QMetaObject::Connection connection;
        s_signals->list5[i] = connection;
        ret = true;
      }
    }
  }

  // retorna o resultado da operação
  //hb_retl( ret );
  return ret;
}

/*
  Verifica se um determinado sinal do objeto especificado está conectado
  Parâmetro 1: ponteiro para o objeto
  Parâmetro 2: assinatura do sinal
  Retorna .t. se existe uma conexão ativa ou .f. caso não exista
  Função de uso interno, não deve ser usada nas aplicações do
  usuário
*/

bool Signals3_is_signal_connected ( QObject * object, int signal )
{
  // cria objeto da classe Signals, caso não tenha sido criado
  if( s_signals == nullptr )
  {
    s_signals = new Signals3(QCoreApplication::instance());
  }

  // valor de retorno
  bool found = false;

  // verifica se já está na lista
  //int i;
  for (int i = 0; i < s_signals->list1.size(); ++i)
  {
    if( ( (QObject *) s_signals->list1.at(i) == (QObject *) object ) &&
        ( s_signals->list2.at(i) == signal ) &&
        ( (bool) s_signals->list4.at(i) == true ) )
    {
      found = true;
      break;
    }
  }

  return found;
}

/*
  Retorna o codeblock de um determinado objeto e sinal
*/

PHB_ITEM Signals3_return_codeblock ( QObject * object, int signal )
{
  // cria objeto da classe Signals, caso não tenha sido criado
  if( s_signals == nullptr )
  {
    s_signals = new Signals3(QCoreApplication::instance());
  }

  int i;
  int found = -1;

  // localiza sinal na lista de sinais
  for (i = 0; i < s_signals->list1.size(); ++i)
  {
    if( ( (QObject *) s_signals->list1.at(i) == (QObject *) object ) &&
        ( s_signals->list2.at(i) == signal ) &&
        ( (bool) s_signals->list4.at(i) == true ) )
    {
      found = i;
      break;
    }
  }

  // retorna o resultado da operação
  if( found != -1 )
  {
    return (PHB_ITEM) s_signals->list3.at(found);
  }
  else
  {
    return nullptr;
  }
}

/*
  Libera todos os codeblocks relacionados com sinais
*/

void Signals3_release_codeblocks ()
{
  if( s_signals != nullptr )
  {
    for (int i = 0; i < s_signals->list1.size(); ++i)
    {
      if( (bool) s_signals->list4.at(i) == true )
      {
        hb_itemRelease((PHB_ITEM) s_signals->list3.at(i) );
        s_signals->list1[i] = nullptr;
        s_signals->list2[i] = -1;
        s_signals->list3[i] = nullptr;
        s_signals->list4[i] = false;
        QMetaObject::Connection connection;
        s_signals->list5[i] = connection;
      }
    }
  }
}

/*
  Libera todos os codeblocks relacionados com sinais do objeto 'obj',
  incluindo os sinais ligados aos filhos, netos, bisnetos, etc... (se children = true).
  NOTA: o sinal "destroyed(QObject*)" não é liberado, pois se fosse não seria executado
  na destruição do objeto. Este sinal é liberado automaticamente após sua execução, pois
  a destruição de um objeto ocorre apenas uma vez.
*/

void Signals3_disconnect_all_signals (QObject * obj, bool children)
{
  if( s_signals != nullptr )
  {
    if( !children )
    {
      // percorre toda a lista de sinais
      for (int i = 0; i < s_signals->list1.size(); ++i)
      {
        // elimina sinais ativos (true) ligados ao objeto (obj)
//         if( ( (QObject *) s_signals->list1.at(i) == (QObject *) obj ) &&
//             ( s_signals->list2.at(i) != "destroyed(QObject*)" ) &&
//             ( (bool) s_signals->list4.at(i) == true ) )
        if( ( (QObject *) s_signals->list1.at(i) == (QObject *) obj ) &&
            ( s_signals->list2.at(i) != obj->metaObject()->indexOfSignal("destroyed(QObject*)") ) &&
            ( (bool) s_signals->list4.at(i) == true ) )
        {
          QObject::disconnect( s_signals->list5[i] );
          hb_itemRelease( (PHB_ITEM) s_signals->list3.at(i) );
          s_signals->list1[i] = nullptr;
          s_signals->list2[i] = -1;
          s_signals->list3[i] = nullptr;
          s_signals->list4[i] = false;
          QMetaObject::Connection connection;
          s_signals->list5[i] = connection;
        }
      }
    }
    else
    {
      // obtém a lista de filhos, netos, bisnetos, etc...
      QList<QObject *> list = obj->findChildren<QObject *>();

      // adiciona o pai na lista
      list << obj;

      // percorre toda a lista de objetos
      for (int i = 0; i < list.size(); ++i)
      {
        // percorre toda a lista de sinais
        for (int ii = 0; ii < s_signals->list1.size(); ++ii)
        {
          // elimina sinais ativos (true) ligados ao objeto list.at(i)
//           if( ( (QObject *) s_signals->list1.at(ii) == (QObject *) list.at(i) ) &&
//               ( s_signals->list2.at(ii) != "destroyed(QObject*)" ) &&
//               ( (bool) s_signals->list4.at(ii) == true ) )
          if( ( (QObject *) s_signals->list1.at(ii) == (QObject *) list.at(i) ) &&
              ( s_signals->list2.at(ii) != list.at(i)->metaObject()->indexOfSignal("destroyed(QObject*)") ) &&
              ( (bool) s_signals->list4.at(ii) == true ) )
          {
            QObject::disconnect( s_signals->list5[ii] );
            hb_itemRelease( (PHB_ITEM) s_signals->list3.at(ii) );
            s_signals->list1[ii] = nullptr;
            s_signals->list2[ii] = -1;
            s_signals->list3[ii] = nullptr;
            s_signals->list4[ii] = false;
            QMetaObject::Connection connection;
            s_signals->list5[ii] = connection;
          }
        }
      }
    }
  }
}

/*
  conecta sinais e retorna resultado (true/false) (para uso nas classes Q*Slots)
*/
bool Signals3_connection ( QObject * object, int signal )
{
  // cria objeto da classe Signals, caso não tenha sido criado
  if( s_signals == nullptr )
  {
    s_signals = new Signals3( QCoreApplication::instance() );
  }

  bool ret = false;

  s_signals->mutex->lock();

  //if( hb_pcount() == 1 )
  //{
    //QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    bool connected = Signals3_is_signal_connected( object, signal );

    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );

      if( codeblock )
      {
/*
        ret = object->connect( object,
                               object->metaObject()->method(object->metaObject()->indexOfMethod(QMetaObject::normalizedSignature(signal.toLatin1().constData()))),
                               s,
                               s->metaObject()->method(s->metaObject()->indexOfMethod(QMetaObject::normalizedSignature(slot.toLatin1().constData())))
                             );
        if( ret )
        {
*/
          Signals3_connect_signal( object, signal, codeblock ); // se conectado, adiciona
          ret = true;
/*
        }
        else
        {
          hb_itemRelease( codeblock );
        }
*/
      }
    }
  //}

  s_signals->mutex->unlock();

  return ret;
}

/*
  desconecta sinais e retorna resultado (true/false) (para uso nas classes Q*Slots)
*/
bool Signals3_disconnection ( QObject * object, int signal )
{
  // cria objeto da classe Signals, caso não tenha sido criado
  if( s_signals == nullptr )
  {
    s_signals = new Signals3( QCoreApplication::instance() );
  }

  bool ret = false;

  s_signals->mutex->lock();

  //if( hb_pcount() == 0 )
  //{
    //QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
/*
    ret = object->disconnect( object,
                              object->metaObject()->method(object->metaObject()->indexOfMethod(QMetaObject::normalizedSignature(signal.toLatin1().constData()))),
                              s,
                              s->metaObject()->method(s->metaObject()->indexOfMethod(QMetaObject::normalizedSignature(slot.toLatin1().constData())))
                            );
    if( ret )
    {
*/
      Signals3_disconnect_signal( object, signal ); // se desconectado, remove
      ret = true;
/*
    }
*/
  //}

  s_signals->mutex->unlock();

  return ret;
}

/*
  Retorna o tamanho da lista de sinais.
  Atenção: está função não faz parte da API pública, podendo
  ser removida ou sofrer modificações futuramente.
*/

HB_FUNC( QTXHB_SIGNALS3_SIZE )
{
  if( s_signals != nullptr )
  {
    hb_retni( s_signals->list1.size() );
  }
  else
  {
    hb_retni( 0 );
  }
}

/*
  Retorna o número de sinais ativos na lista de sinais.
  Atenção: está função não faz parte da API pública, podendo
  ser removida ou sofrer modificações futuramente.
*/

HB_FUNC( QTXHB_SIGNALS3_SIZE_ACTIVE )
{
  if( s_signals != nullptr )
  {
    // inicializa contador
    int count = 0;
    // percorre toda a lista de sinais
    for (int i = 0; i < s_signals->list1.size(); ++i)
    {
      if( s_signals->list4.at(i) )
      {
        ++count;
      }
    }
    hb_retni( count );
  }
  else
  {
    hb_retni( 0 );
  }
}

PHB_ITEM Signals3_return_object ( void * ptr, const char * classname )
{
  PHB_DYNS pDynSym = hb_dynsymFindName( classname );

  PHB_ITEM pObject = hb_itemNew( NULL );

  if( pDynSym )
  {
    hb_vmPushDynSym( pDynSym );
    hb_vmPushNil();
    hb_vmDo( 0 );
    hb_itemCopy( pObject, hb_stackReturnItem() );
    PHB_ITEM pItem = hb_itemNew( NULL );
    hb_itemPutPtr( pItem, (void *) ptr );
    hb_objSendMsg( pObject, "_POINTER", 1, pItem );
    hb_itemRelease( pItem );
  }
  else
  {
    hb_errRT_BASE( EG_NOFUNC, 1001, NULL, classname, HB_ERR_ARGS_BASEPARAMS );
  }

  return pObject;
}

PHB_ITEM Signals3_return_qobject ( QObject * ptr, const char * classname )
{
  PHB_DYNS pDynSym = NULL;

  if( ptr )
  {
    pDynSym = hb_dynsymFindName( (const char *) ptr->metaObject()->className() );
  }

  if( !pDynSym )
  {
    pDynSym = hb_dynsymFindName( classname );
  }

  PHB_ITEM pObject = hb_itemNew( NULL );

  if( pDynSym )
  {
    hb_vmPushDynSym( pDynSym );
    hb_vmPushNil();
    hb_vmDo( 0 );
    hb_itemCopy( pObject, hb_stackReturnItem() );
    PHB_ITEM pItem = hb_itemNew( NULL );
    hb_itemPutPtr( pItem, (void *) ptr );
    hb_objSendMsg( pObject, "_POINTER", 1, pItem );
    hb_itemRelease( pItem );
  }
  else
  {
    hb_errRT_BASE( EG_NOFUNC, 1001, NULL, classname, HB_ERR_ARGS_BASEPARAMS );
  }

  return pObject;
}

bool Signals3_store_connection ( QObject * object, int signal, QMetaObject::Connection connection )
{
  // cria objeto da classe Signals, caso não tenha sido criado
  if( s_signals == nullptr )
  {
    s_signals = new Signals3(QCoreApplication::instance());
  }

  // valor de retorno
  bool stored = false;

  // armazena handle da conexão
  for (int i = 0; i < s_signals->list1.size(); ++i)
  {
    if( ( (QObject *) s_signals->list1.at(i) == (QObject *) object ) && ( s_signals->list2.at(i) == signal ) && ( (bool) s_signals->list4.at(i) == true ) )
    {
      s_signals->list5[i] = connection;
      stored = true;
      break;
    }
  }

  return stored;
}


QMetaObject::Connection Signals3_get_connection ( QObject * object, int signal )
{
  // cria objeto da classe Signals, caso não tenha sido criado
  if( s_signals == nullptr )
  {
    s_signals = new Signals3(QCoreApplication::instance());
  }

  // valor de retorno
  QMetaObject::Connection connection;

  // busca handle da conexão
  for (int i = 0; i < s_signals->list1.size(); ++i)
  {
    if( ( (QObject *) s_signals->list1.at(i) == (QObject *) object ) && ( s_signals->list2.at(i) == signal ) && ( (bool) s_signals->list4.at(i) == true ) )
    {
      connection = s_signals->list5.at(i);
      break;
    }
  }

  return connection;
}
