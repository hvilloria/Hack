import React from 'react'

export default class UserTable extends React.Component {
  render () {
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
          </tbody>
        </table>
      </div>
    )
  }
}
