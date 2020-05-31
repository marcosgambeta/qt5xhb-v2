/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "signals.h"

static Signals *s_signals = nullptr;

/*
  constructor
*/
Signals::Signals( QObject *parent ) : QObject( parent )
{
  m_list1 = new QVector<QObject*>( 1000, nullptr );       // armazena ponteiro do objeto
  m_list2 = new QVector<int>( 1000, -1 );                 // armazena indice do sinal
  m_list3 = new QVector<PHB_ITEM>( 1000, nullptr );       // armazena codeblock
  QMetaObject::Connection connection;
  m_list4 = new QVector<QMetaObject::Connection>( 1000, connection ); // handle da conexão
  m_mutex = new QMutex();
}

/*
  destructor
*/
Signals::~Signals()
{
  const auto listsize = m_list1->size();
  for( auto i = 0; i < listsize; ++i )
  {
    if( m_list1->at(i) != nullptr )
    {
      hb_itemRelease( m_list3->at(i) );
    }
  }

  delete m_list1;
  delete m_list2;
  delete m_list3;
  delete m_list4;
  delete m_mutex;
}

/*
  Conecta um determinado sinal com um objeto
  Parâmetro 1: objeto
  Parâmetro 2: indice do sinal
  Parâmetro 3: codeblock
  Retorna o indice usado no vetor
  Função de uso interno, não deve ser usada nas aplicações do usuário
*/

int Signals::connectSignal( QObject * object, int indexOfSignal, PHB_ITEM codeblock )
{
  auto result = -1;
  auto found = false;

  const auto listsize = m_list1->size();
  for( auto i = 0; i < listsize; ++i )
  {
    if( ( m_list1->at(i) == object ) && ( m_list2->at(i) == indexOfSignal ) )
    {
      found = true;
      break;
    }
  }

  // se nao encontrado na lista, adiciona
  if( !found )
  {
    // procura por posição livre
    auto index = m_list1->indexOf( nullptr );

    if( index == -1 ) // nao encontrou posicao livre
    {
      // adiciona sinal na lista de sinais
      m_list1->append( object );
      m_list2->append( indexOfSignal );
      m_list3->append( codeblock );
      QMetaObject::Connection connection;
      m_list4->append( connection );
      result = m_list1->size() - 1;
    }
    else // encontrou posicao livre
    {
      // coloca na posição livre
      m_list1->replace( index, object );
      m_list2->replace( index, indexOfSignal );
      m_list3->replace( index, codeblock );
      QMetaObject::Connection connection;
      m_list4->replace( index, connection );
      result = index;
    }
  }

  return result;
}

/*
  Desconecta um determinado sinal
  Parâmetro 1: objeto
  Parâmetro 2: indice do sinal
  Retorna true se a desconexão foi bem sucedida ou false se falhou
  Função de uso interno, não deve ser usada nas aplicações do usuário
*/

bool Signals::disconnectSignal( QObject * object, int indexOfSignal )
{
  auto result = false;

  const auto listsize = m_list1->size();
  for( auto i = 0; i < listsize; ++i )
  {
    if( ( m_list1->at(i) == object ) && ( m_list2->at(i) == indexOfSignal ) )
    {
      hb_itemRelease( m_list3->at(i) );
      m_list1->replace( i, nullptr );
      m_list2->replace( i, -1 );
      m_list3->replace( i, nullptr );
      QMetaObject::Connection connection;
      m_list4->replace( i, connection );
      result = true;
    }
  }

  return result;
}

/*
  Verifica se um determinado sinal do objeto especificado está conectado
  Parâmetro 1: objeto
  Parâmetro 2: indice do sinal
  Retorna true se existe uma conexão ativa ou false caso não exista
  Função de uso interno, não deve ser usada nas aplicações do usuário
*/

bool Signals::isSignalConnected( QObject * object, int indexOfSignal )
{
  auto result = false;

  const auto listsize = m_list1->size();
  for( auto i = 0; i < listsize; ++i )
  {
    if( ( m_list1->at(i) == object ) && ( m_list2->at(i) == indexOfSignal ) )
    {
      result = true;
      break;
    }
  }

  return result;
}

/*
  Retorna um codeblock atraves do indice do codeblock no vetor
  Parâmetro: indice do codeblock
  Função de uso interno, não deve ser usada nas aplicações do usuário
*/

PHB_ITEM Signals::returnCodeblock( int indexOfCodeBlock )
{
  return m_list3->at( indexOfCodeBlock );
}

/*
  Libera todos os codeblocks relacionados com sinais do objeto 'obj',
  incluindo os sinais ligados aos filhos, netos, bisnetos, etc... (se children = true).
  NOTA: o sinal "destroyed(QObject*)" não é liberado, pois se fosse não seria executado
  na destruição do objeto. Este sinal é liberado automaticamente após sua execução, pois
  a destruição de um objeto ocorre apenas uma vez.
*/

void Signals::disconnectAllSignals( QObject * obj, bool children )
{
  auto indexOfSignal = 0;

  if( !children )
  {
    indexOfSignal = obj->metaObject()->indexOfSignal("destroyed(QObject*)");

    // percorre toda a lista de sinais
    const auto listsize = m_list1->size();
    for( auto i = 0; i < listsize; ++i )
    {
      // elimina sinais ativos ligados ao objeto 'obj'
      if( ( m_list1->at(i) == obj ) && ( m_list2->at(i) != indexOfSignal ) )
      {
        QObject::disconnect( m_list4->at(i) );
        hb_itemRelease( m_list3->at(i) );
        m_list1->replace( i, nullptr );
        m_list2->replace( i, -1);
        m_list3->replace( i, nullptr );
        QMetaObject::Connection connection;
        m_list4->replace( i, connection );
      }
    }
  }
  else
  {
    // obtém a lista de filhos, netos, bisnetos, etc...
    auto objectList = obj->findChildren<QObject *>();

    // adiciona o pai na lista
    objectList << obj;

    // percorre toda a lista de objetos
    const auto listsize = objectList.size();
    for( auto i = 0; i < listsize; ++i )
    {
      QObject * currentObject = objectList.at(i);
      indexOfSignal = currentObject->metaObject()->indexOfSignal("destroyed(QObject*)");

      // percorre toda a lista de sinais
      const auto listsize2 = m_list1->size();
      for( auto ii = 0; ii < listsize2; ++ii )
      {
        // elimina sinais ativos ligados ao objeto 'list.at(i)'
        if( ( m_list1->at(ii) == currentObject ) && ( m_list2->at(ii) != indexOfSignal ) )
        {
          QObject::disconnect( m_list4->at(ii) );
          hb_itemRelease( m_list3->at(ii) );
          m_list1->replace( ii, nullptr );
          m_list2->replace( ii, -1 );
          m_list3->replace( ii, nullptr );
          QMetaObject::Connection connection;
          m_list4->replace( ii, connection );
        }
      }
    }
  }
}

/*
  conecta sinais e retorna resultado (true/false)
*/

bool Signals::connection( QObject * object, int indexOfSignal, int & indexOfCodeBlock )
{
  auto result = false;

  m_mutex->lock();

  if( !isSignalConnected( object, indexOfSignal ) )
  {
    PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );

    if( codeblock != nullptr )
    {
      indexOfCodeBlock = connectSignal( object, indexOfSignal, codeblock );
      result = true;
    }
  }

  m_mutex->unlock();

  return result;
}

/*
  desconecta sinais e retorna resultado (true/false)
*/

bool Signals::disconnection( QObject * object, int indexOfSignal )
{
  auto result = false;

  m_mutex->lock();

  disconnectSignal( object, indexOfSignal );

  result = true;

  m_mutex->unlock();

  return result;
}

PHB_ITEM Signals::returnObject( void * ptr, const char * classname )
{
  PHB_DYNS pDynSym = hb_dynsymFindName( classname );

  PHB_ITEM pObject = hb_itemNew( nullptr );

  if( pDynSym != nullptr )
  {
    hb_vmPushDynSym( pDynSym );
    hb_vmPushNil();
    hb_vmDo( 0 );
    hb_itemCopy( pObject, hb_stackReturnItem() );
    PHB_ITEM pItem = hb_itemNew( nullptr );
    hb_itemPutPtr( pItem, (void *) ptr );
    hb_objSendMsg( pObject, "_POINTER", 1, pItem );
    hb_itemRelease( pItem );
  }
  else
  {
    hb_errRT_BASE( EG_NOFUNC, 1001, nullptr, classname, HB_ERR_ARGS_BASEPARAMS );
  }

  return pObject;
}

PHB_ITEM Signals::returnQObject( QObject * ptr, const char * classname )
{
  PHB_DYNS pDynSym = nullptr;

  if( ptr != nullptr )
  {
    pDynSym = hb_dynsymFindName( (const char *) ptr->metaObject()->className() );
  }

  if( pDynSym == nullptr )
  {
    pDynSym = hb_dynsymFindName( classname );
  }

  PHB_ITEM pObject = hb_itemNew( nullptr );

  if( pDynSym != nullptr )
  {
    hb_vmPushDynSym( pDynSym );
    hb_vmPushNil();
    hb_vmDo( 0 );
    hb_itemCopy( pObject, hb_stackReturnItem() );
    PHB_ITEM pItem = hb_itemNew( nullptr );
    hb_itemPutPtr( pItem, (void *) ptr );
    hb_objSendMsg( pObject, "_POINTER", 1, pItem );
    hb_itemRelease( pItem );
  }
  else
  {
    hb_errRT_BASE( EG_NOFUNC, 1001, nullptr, classname, HB_ERR_ARGS_BASEPARAMS );
  }

  return pObject;
}

bool Signals::storeConnection( int index, QMetaObject::Connection connection )
{
  m_list4->replace( index, connection );

  return true;
}

QMetaObject::Connection Signals::getConnection( QObject * object, int signal )
{
  // valor de retorno
  QMetaObject::Connection connection;

  // busca handle da conexão
  const auto listsize = m_list1->size();
  for( auto i = 0; i < listsize; ++i )
  {
    if( ( m_list1->at(i) == object ) && ( m_list2->at(i) == signal ) )
    {
      connection = m_list4->at(i);
      break;
    }
  }

  return connection;
}

int Signals::size()
{
  return m_list1->size();
}

int Signals::active()
{
  auto count = 0;

  // percorre toda a lista de sinais
  const auto listsize = m_list1->size();
  for( auto i = 0; i < listsize; ++i )
  {
    if( m_list1->at(i) != nullptr )
    {
      ++count;
    }
  }

  return count;
}

namespace Qt5xHb
{
  int Signals_connect_signal( QObject * object, int indexOfSignal, PHB_ITEM codeblock )
  {
    return s_signals->connectSignal( object, indexOfSignal, codeblock );
  }

  bool Signals_disconnect_signal( QObject * object, int indexOfSignal )
  {
    return s_signals->disconnectSignal( object, indexOfSignal );
  }

  bool Signals_is_signal_connected( QObject * object, int indexOfSignal )
  {
    return s_signals->isSignalConnected( object, indexOfSignal );
  }

  PHB_ITEM Signals_return_codeblock( int indexOfCodeBlock )
  {
    return s_signals->returnCodeblock( indexOfCodeBlock );
  }

  void Signals_disconnect_all_signals( QObject * obj, bool children )
  {
    s_signals->disconnectAllSignals( obj, children );
  }

  bool Signals_connection( QObject * object, int indexOfSignal, int & indexOfCodeBlock )
  {
    return s_signals->connection( object, indexOfSignal, indexOfCodeBlock );
  }

  bool Signals_disconnection( QObject * object, int indexOfSignal )
  {
    return s_signals->disconnection( object, indexOfSignal );
  }

  PHB_ITEM Signals_return_object( void * ptr, const char * classname )
  {
    return s_signals->returnObject( ptr, classname );
  }

  PHB_ITEM Signals_return_qobject( QObject * ptr, const char * classname )
  {
    return s_signals->returnQObject( ptr, classname );
  }

  bool Signals_store_connection( int index, QMetaObject::Connection connection )
  {
    return s_signals->storeConnection( index, connection );
  }

  QMetaObject::Connection Signals_get_connection( QObject * object, int signal )
  {
    return s_signals->getConnection( object, signal );
  }
}

/*
  Retorna o tamanho da lista de sinais.
  Atenção: está função não faz parte da API pública, podendo
  ser removida ou sofrer modificações futuramente.
*/

HB_FUNC( QTXHB_SIGNALS_SIZE )
{
  hb_retni( s_signals->size() );
}

/*
  Retorna o número de sinais ativos na lista de sinais.
  Atenção: está função não faz parte da API pública, podendo
  ser removida ou sofrer modificações futuramente.
*/

HB_FUNC( QTXHB_SIGNALS_ACTIVE )
{
  hb_retni( s_signals->active() );
}

HB_FUNC( QTXHB_SIGNALS_SIZE_ACTIVE ) // deprecated
{
  hb_retni( s_signals->active() );
}

#include "hbvm.h"
#include "hbinit.h"

static void qt5xhb_signals_init( void * cargo )
{
  HB_SYMBOL_UNUSED( cargo );

  if( s_signals == nullptr )
  {
    s_signals = new Signals();
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
