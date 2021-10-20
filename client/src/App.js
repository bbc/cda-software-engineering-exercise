import React, { Fragment } from 'react'
import './App.css'

import Header from './components/Header'
import SearchBar from './components/SearchBar'
import Card from './components/Card'

import { useQuery } from '@apollo/client'
import { GET_CHARACTERS } from './queries'

const App = () => {
  const { loading, error, data } = useQuery(GET_CHARACTERS)
  const characters = data?.characters

  return (
    !loading &&
    !error && (
      <Fragment>
        <Header>
          <SearchBar />
        </Header>
        <div className="App">
          <div className="grid">
            {characters.map(item => (
              <Card {...item} key={item.id} />
            ))}
          </div>
        </div>
      </Fragment>
    )
  )
}

export default App
