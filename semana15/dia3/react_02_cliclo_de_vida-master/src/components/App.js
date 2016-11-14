import React from 'react'
import ListingUsers from './users/ListingUsers'

export default class App extends React.Component {
  render () {
    return (
      <div>
        <div className="row">
          <div className="col-xs-12">
            <div className="alert alert-success" id="notice">
              Welcome Rect - 02/React -  2016/11/02
            </div>
          </div>
        </div>
        <ListingUsers/>
      </div>
    )
  }
}
