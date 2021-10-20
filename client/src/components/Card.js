import React from 'react'

const Card = ({ characterName, actorName, imageUrl }) => {
  return (
    <div className="card">
      <img src={imageUrl} alt={characterName} />
      <h3>{characterName}</h3>
      <small>Played by: {actorName}</small>
    </div>
  )
}

export default Card
