import React from 'react'

const Header = ({ children }) => (
  <header className="header">
    <div className="header-content">
      <h1>Eastenders Database</h1>
      {children}
    </div>
  </header>
)

export default Header
