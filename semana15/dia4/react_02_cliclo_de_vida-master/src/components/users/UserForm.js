import React from 'react'

export default class UserForm extends React.Component {
  render () {
    return (
      <div className="col-xs-6">
        <form id="newUser" action="#" acceptCharset="UTF-8" method="post">
          <div className="form-group">
            <label htmlFor="nameUser">Name</label>
            <input type="text" name="user[name]" id="user-name" className="form-control"/>
          </div>
          <div className="form-group">
            <label htmlFor="nameLastname">Lastname</label>
            <input type="text" name="user[lastname]" id="user-lastname" className="form-control"/>
          </div>
          <div className="form-group">
            <label htmlFor="nameDNI">DNI</label>
            <input type="text" name="user[dni]" id="user-dni" className="form-control"/>
          </div>
          <input type="submit" name="commit" value="create" className="btn btn-success"/>
        </form>
      </div>
    )
  }
}
