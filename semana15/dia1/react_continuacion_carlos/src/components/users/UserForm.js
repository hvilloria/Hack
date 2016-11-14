import React from 'react'

export default class UserForm extends React.Component {
  constructor () {
    super()
    this.state = { name: '', lastname: '', dni: '' }
  }

  handleSubmit (event) {
    event.preventDefault()
  }

  handleNameInput (event) {
    const name = event.target.value
    this.setState({name})
  }

  handleLastnameInput (event) {
    const lastname = event.target.value
    this.setState({ lastname })
  }

  handleDNIInput (event) {
    const dni = event.target.value
    this.setState({ dni })
  }

  sendForm (event) {
    let userData = this.state
    userData.id = Date.now()
    this.props.onUserSubmit(userData)
    this.setState({id: '', name: '', lastname: '', dni: ''})
  }

  render () {
    return (
      <div className="col-xs-6">
        <form onSubmit={this.handleSubmit.bind(this)} id="newUser" action="#" acceptCharset="UTF-8" method="post">
          <div className="form-group">
            <label htmlFor="nameUser">Name</label>
            <input onChange={this.handleNameInput.bind(this)} type="text" name="user[name]" id="user-name" className="form-control" value={this.state.name}/>
          </div>
          <div className="form-group">
            <label htmlFor="nameLastname">Lastname</label>
            <input onChange={this.handleLastnameInput.bind(this)} type="text" name="user[lastname]" id="user-lastname" className="form-control" value={this.state.lastname}/>
          </div>
          <div className="form-group">
            <label htmlFor="nameDNI">DNI</label>
            <input onChange={this.handleDNIInput.bind(this)} type="text" name="user[dni]" id="user-dni" className="form-control" value={this.state.dni}/>
          </div>
          <input onClick={this.sendForm.bind(this)} type="submit" name="commit" value="create" className="btn btn-success"/>
        </form>
      </div>
    )
  }
}
