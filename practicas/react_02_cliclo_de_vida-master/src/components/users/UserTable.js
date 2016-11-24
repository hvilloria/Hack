import React from 'react'
import User from './User'

export default class UserTable extends React.Component {

  render () {

    let allusers = this.props.sendUser;
    console.log('el all userss'+allusers);
    let users = allusers.map((user)=>{
      return (<User key={user.id} userData={user} deleteUser={this.props.deleteUser}/>)
    })
    return (
      <div className="col-xs-6">
        <table id="usersTable" className="table table-hover">
          <thead>
            <tr>
              <th>Name</th>
              <th>Lastname</th>
              <th>DNI</th>
              <th>Acciones</th>
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
