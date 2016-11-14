import React from 'react'
import SearchForm from './SearchForm'
import UserForm from './UserForm'
import UserTable from './UserTable'

export default class ListingUsers extends React.Component {
  constructor () {
    super()
    this.state = { users: [], string: '' }
  }

  userSearch(name){
    this.setState({string: name})
    console.log(this.state.string)
  }

  handleUserData (userData) {
    const users = this.state.users
    users.push(userData)
    this.setState({users})
  }

  render () {
    return (
      <div className="row">
        <div className="col-xs-10 col-xs-offset-1">
          <h1 className="text-center">Listing Users</h1>
          <SearchForm onUserSearch={this.userSearch.bind(this)} />
          <div className="row">
            <UserForm onUserSubmit={this.handleUserData.bind(this)}/>
            <UserTable users={this.state.users} searchs={this.state.string}/>
          </div>
        </div>
      </div>
    )
  }
}
