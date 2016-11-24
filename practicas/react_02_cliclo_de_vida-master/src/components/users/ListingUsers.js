import React from 'react'
import SearchForm from './SearchForm'
import UserForm from './UserForm'
import UserTable from './UserTable'

export default class ListingUsers extends React.Component {
  constructor(){
    super();
    this.state=({users: []})
    this.handleUsers = this.handleUsers.bind(this)
    this.handleDeleteUser = this.handleDeleteUser.bind(this)
  }

  handleDeleteUser(userId){
    let user = userId;
    let allusers = this.state.users;
    console.log('este es el id ' + user);
    for(let i = 0; i < allusers.length ; i++  ){
        if (allusers[i].id == user){
            console.log(allusers[i]);
          allusers.splice(i,1);
        }
    }
    this.setState({users: allusers})
  }
  handleUsers(users){
    const algo = this.state.users;
    algo.push(users)
    this.setState({users: algo})
    console.log(this.state.users);

  }
  render () {
    return (
      <div className="row">
        <div className="col-xs-10 col-xs-offset-1">
          <h1 className="text-center">Listing Users</h1>
          <SearchForm />
          <div className="row">
            <UserForm receiveUser={this.handleUsers}/>
            <UserTable sendUser={this.state.users} deleteUser={this.handleDeleteUser}/>
          </div>
        </div>
      </div>
    )
  }
}
