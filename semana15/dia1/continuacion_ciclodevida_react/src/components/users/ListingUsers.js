import React from 'react'
import SearchForm from './SearchForm'
import UserForm from './UserForm'
import UserTable from './UserTable'

export default class ListingUsers extends React.Component {
  render () {
    return (
      <div className="row">
        <div className="col-xs-10 col-xs-offset-1">
          <h1 className="text-center">Listing Users</h1>
          <SearchForm />
          <div className="row">
            <UserForm />
            <UserTable />
          </div>
        </div>
      </div>
    )
  }
}
