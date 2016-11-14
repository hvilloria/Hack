import React from 'react'
import User from './User'

export default class UserTable extends React.Component {
  render () {
    let  self = this
    let lookNames = this.props.users.filter(function(user){
      return user.name.match(self.props.searchs)
    })
    console.log(lookNames)
    let users = lookNames.map((user) => {
      return(
        <User userData={user} key={user.id}/>
      )
    })
    return (
      <div className="col-xs-6">
        <table id="usersTable" className="table table-hover">
          <thead>
            <tr>
              <th>Name</th>
              <th>Lastname</th>
              <th>DNI</th>
            </tr>
          </thead>
          <tbody>
            {users}
          </tbody>
        </table>
      </div>
    )
  }
}
