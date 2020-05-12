/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "signals5.h"

static Signals5 *s_signals = nullptr;

/*
  constructor
*/
Signals5::Signals5(QObject *parent) : QObject(parent)
{
  mutex = new QMutex();
}

/*
  destructor
*/
Signals5::~Signals5()
{
  Signals5_release_codeblocks ();
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

//bool Signals5_connect_signal ( QObject * object, int signal, PHB_ITEM codeblock )
int Signals5_connect_signal ( QObject * object, int signal, PHB_ITEM codeblock )
{
  int i;

  // verifica se já está na lista
  int found = -1;
  const int listsize = s_signals->list1.size();

  for (i = 0; i < listsize; ++i)
  {
    if( ( (QObject *) s_signals->list1.at(i) == (QObject *) object ) && ( s_signals->list2.at(i) == signal ) )
    {
      found = i;
      //hb_itemRelease( codeblock );
      break;
    }
  }

  //bool ret = false;
  int ret = -1;

  // se nao encontrado na lista, adiciona
  if( found == -1 )
  {
    // procura por posição livre
    i = s_signals->list1.indexOf( nullptr );

    if( i == -1 ) // nao encontrou posicao livre
    {
      // adiciona sinal na lista de sinais

      s_signals->list1 << object;
      s_signals->list2 << signal;
      s_signals->list3 << codeblock;
      QMetaObject::Connection connection;
      s_signals->list4 << connection;
      ret = s_signals->list1.size() - 1;
    }
    else // encontrou posicao livre
    {
      // coloca na posição livre
      s_signals->list1[i] = object;
      s_signals->list2[i] = signal;
      s_signals->list3[i] = codeblock;
      QMetaObject::Connection connection;
      s_signals->list4[i] = connection;
      ret = i;
    }

    //ret = true;
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

bool Signals5_disconnect_signal ( QObject * object, int signal )
{
  int i;

  bool ret = false;
  const int listsize = s_signals->list1.size();

  // remove sinal da lista de sinais
  for (i = 0; i < listsize; ++i)
  {
    if( (QObject *) s_signals->list1.at(i) == (QObject *) object )
    {
      if( ( s_signals->list2.at(i) == signal ) )
      {
        hb_itemRelease( (PHB_ITEM) s_signals->list3.at(i) );
        s_signals->list1[i] = nullptr;
        s_signals->list2[i] = -1;
        s_signals->list3[i] = nullptr;
        QMetaObject::Connection connection;
        s_signals->list4[i] = connection;
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

bool Signals5_is_signal_connected ( QObject * object, int signal )
{
  // valor de retorno
  bool found = false;
  const int listsize = s_signals->list1.size();

  // verifica se já está na lista
  //int i;
  for (int i = 0; i < listsize; ++i)
  {
    if( ( (QObject *) s_signals->list1.at(i) == (QObject *) object ) && ( s_signals->list2.at(i) == signal ) )
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

PHB_ITEM Signals5_return_codeblock ( QObject * object, int signal )
{
  int i;
  int found = -1;
  const int listsize = s_signals->list1.size();

  // localiza sinal na lista de sinais
  for (i = 0; i < listsize; ++i)
  {
    if( ( (QObject *) s_signals->list1.at(i) == (QObject *) object ) && ( s_signals->list2.at(i) == signal ) )
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
  Retorna o codeblock atraves do indice
*/

//PHB_ITEM Signals5_return_codeblock ( QObject * object, int signal, int indexOfCodeBlock )
PHB_ITEM Signals5_return_codeblock ( int indexOfCodeBlock )
{
  //int i;
  //int found = -1;

  // localiza sinal na lista de sinais
  //for (i = 0; i < s_signals->list1.size(); ++i)
  //{
  //  if( ( (QObject *) s_signals->list1.at(i) == (QObject *) object ) &&
  //      ( s_signals->list2.at(i) == signal ) &&
  //      ( (bool) s_signals->list4.at(i) == true ) )
  //  {
  //    found = i;
  //    break;
  //  }
  //}

  // retorna o resultado da operação
  //if( found != -1 )
  //{
    //return (PHB_ITEM) s_signals->list3.at(found);
    return (PHB_ITEM) s_signals->list3.at(indexOfCodeBlock);
  //}
  //else
  //{
  //  return nullptr;
  //}
}

/*
  Libera todos os codeblocks relacionados com sinais
*/

void Signals5_release_codeblocks ()
{
  if( s_signals != nullptr )
  {
    const int listsize = s_signals->list1.size();

    for (int i = 0; i < listsize; ++i)
    {
      if( s_signals->list1.at(i) != nullptr )
      {
        hb_itemRelease((PHB_ITEM) s_signals->list3.at(i) );
        s_signals->list1[i] = nullptr;
        s_signals->list2[i] = -1;
        s_signals->list3[i] = nullptr;
        QMetaObject::Connection connection;
        s_signals->list4[i] = connection;
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

void Signals5_disconnect_all_signals (QObject * obj, bool children)
{
  if( s_signals != nullptr )
  {
    if( !children )
    {
      const int listsize = s_signals->list1.size();

      // percorre toda a lista de sinais
      for (int i = 0; i < listsize; ++i)
      {
        // elimina sinais ativos (true) ligados ao objeto (obj)
//         if( ( (QObject *) s_signals->list1.at(i) == (QObject *) obj ) &&
//             ( s_signals->list2.at(i) != "destroyed(QObject*)" ) &&
//             ( (bool) s_signals->list4.at(i) == true ) )
        if( ( (QObject *) s_signals->list1.at(i) == (QObject *) obj ) &&
            ( s_signals->list2.at(i) != obj->metaObject()->indexOfSignal("destroyed(QObject*)") ) )
        {
          QObject::disconnect( s_signals->list4[i] );
          hb_itemRelease( (PHB_ITEM) s_signals->list3.at(i) );
          s_signals->list1[i] = nullptr;
          s_signals->list2[i] = -1;
          s_signals->list3[i] = nullptr;
          QMetaObject::Connection connection;
          s_signals->list4[i] = connection;
        }
      }
    }
    else
    {
      // obtém a lista de filhos, netos, bisnetos, etc...
      QList<QObject *> list = obj->findChildren<QObject *>();

      // adiciona o pai na lista
      list << obj;

      const int listsize = list.size();

      // percorre toda a lista de objetos
      for (int i = 0; i < listsize; ++i)
      {
        const int listsize2 = s_signals->list1.size();

        // percorre toda a lista de sinais
        for (int ii = 0; ii < listsize2; ++ii)
        {
          // elimina sinais ativos (true) ligados ao objeto list.at(i)
//           if( ( (QObject *) s_signals->list1.at(ii) == (QObject *) list.at(i) ) &&
//               ( s_signals->list2.at(ii) != "destroyed(QObject*)" ) &&
//               ( (bool) s_signals->list4.at(ii) == true ) )
          if( ( (QObject *) s_signals->list1.at(ii) == (QObject *) list.at(i) ) &&
              ( s_signals->list2.at(ii) != list.at(i)->metaObject()->indexOfSignal("destroyed(QObject*)") ) )
          {
            QObject::disconnect( s_signals->list4[ii] );
            hb_itemRelease( (PHB_ITEM) s_signals->list3.at(ii) );
            s_signals->list1[ii] = nullptr;
            s_signals->list2[ii] = -1;
            s_signals->list3[ii] = nullptr;
            QMetaObject::Connection connection;
            s_signals->list4[ii] = connection;
          }
        }
      }
    }
  }
}

/*
  conecta sinais e retorna resultado (true/false) (para uso nas classes Q*Slots)
*/
bool Signals5_connection ( QObject * object, int signal )
{
  bool ret = false;

  s_signals->mutex->lock();

  //if( hb_pcount() == 1 )
  //{
    //QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    bool connected = Signals5_is_signal_connected( object, signal );

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
          Signals5_connect_signal( object, signal, codeblock ); // se conectado, adiciona
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

bool Signals5_connection ( QObject * object, int signal, int & indexOfCodeBlock )
{
  bool ret = false;

  s_signals->mutex->lock();

  //if( hb_pcount() == 1 )
  //{
    //QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    bool connected = Signals5_is_signal_connected( object, signal );

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
          indexOfCodeBlock = Signals5_connect_signal( object, signal, codeblock ); // se conectado, adiciona
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
bool Signals5_disconnection ( QObject * object, int signal )
{
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
      Signals5_disconnect_signal( object, signal ); // se desconectado, remove
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

HB_FUNC( QTXHB_SIGNALS_SIZE )
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

HB_FUNC( QTXHB_SIGNALS_SIZE_ACTIVE )
{
  if( s_signals != nullptr )
  {
    // inicializa contador
    int count = 0;

    const int listsize = s_signals->list1.size();

    // percorre toda a lista de sinais
    for (int i = 0; i < listsize; ++i)
    {
      if( s_signals->list1.at(i) != nullptr )
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

PHB_ITEM Signals5_return_object ( void * ptr, const char * classname )
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

PHB_ITEM Signals5_return_qobject ( QObject * ptr, const char * classname )
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

bool Signals5_store_connection ( QObject * object, int signal, QMetaObject::Connection connection )
{
  // valor de retorno
  bool stored = false;

  const int listsize = s_signals->list1.size();

  // armazena handle da conexão
  for (int i = 0; i < listsize; ++i)
  {
    if( ( (QObject *) s_signals->list1.at(i) == (QObject *) object ) && ( s_signals->list2.at(i) == signal ) )
    {
      s_signals->list4[i] = connection;
      stored = true;
      break;
    }
  }

  return stored;
}

bool Signals5_store_connection ( int index, QMetaObject::Connection connection )
{
  // valor de retorno
  //bool stored = false;

  // armazena handle da conexão
  //for (int i = 0; i < s_signals->list1.size(); ++i)
  //{
  //  if( ( (QObject *) s_signals->list1.at(i) == (QObject *) object ) && ( s_signals->list2.at(i) == signal ) && ( (bool) s_signals->list4.at(i) == true ) )
  //  {
  //    s_signals->list5[i] = connection;
  //    stored = true;
  //    break;
  //  }
  //}

  s_signals->list4[index] = connection;

  //return stored;
  return true;
}

QMetaObject::Connection Signals5_get_connection ( QObject * object, int signal )
{
  // valor de retorno
  QMetaObject::Connection connection;

  const int listsize = s_signals->list1.size();

  // busca handle da conexão
  for (int i = 0; i < listsize; ++i)
  {
    if( ( (QObject *) s_signals->list1.at(i) == (QObject *) object ) && ( s_signals->list2.at(i) == signal ) )
    {
      connection = s_signals->list4.at(i);
      break;
    }
  }

  return connection;
}

#include "hbvm.h"
#include "hbinit.h"

static void qt5xhb_signals_init( void * cargo )
{
  HB_SYMBOL_UNUSED( cargo );

  if( s_signals == nullptr )
  {
    //s_signals = new Signals5(QCoreApplication::instance());
    s_signals = new Signals5();
  }
}

static void qt5xhb_signals_exit( void * cargo )
{
  HB_SYMBOL_UNUSED( cargo );

  delete s_signals;
}

HB_CALL_ON_STARTUP_BEGIN( _qt5xhb_signals_init_ )
  hb_vmAtInit( qt5xhb_signals_init, nullptr );
  hb_vmAtExit( qt5xhb_signals_exit, nullptr );
HB_CALL_ON_STARTUP_END( _qt5xhb_signals_init_ )

#if defined( HB_PRAGMA_STARTUP )
  #pragma startup _qt5xhb_signals_init_
#elif defined( HB_DATASEG_STARTUP )
  #define HB_DATASEG_BODY HB_DATASEG_FUNC( _qt5xhb_signals_init_ )
  #include "hbiniseg.h"
#endif
