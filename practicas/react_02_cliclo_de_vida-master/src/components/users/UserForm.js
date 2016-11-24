import React from 'react'

export default class UserForm extends React.Component {
  constructor(){
    super()
    this.state=({
      name: '',
      lastname:'',
      dni:'',
      id: ''
    })

    this.handleName = this.handleName.bind(this);
    this.handleLastName = this.handleLastName.bind(this);
    this.handleDNI = this.handleDNI.bind(this);
    this.sendUser = this.sendUser.bind(this);
  }
  sendUser(e){
    e.preventDefault();
    const user= this.state
    user.id = Date.now();
    console.log('probando ' + user.id);
    this.props.receiveUser(user)
    this.setState({
      name: '',
      lastname:'',
      dni:'',
      id: ''
    })
  }

  handleName(e){
    let name = e.target.value;
    this.setState({name});
    console.log(this.state.name);

  }
  handleLastName(e){
    let lastname= e.target.value;
    this.setState({lastname});
    console.log(this.state.lastname);
  }
  handleDNI(e){
    let dni = e.target.value;
    this.setState({dni});
    console.log(this.state.dni);
  }
  render () {
    return (
      <div className="col-xs-6">
        <form id="newUser" action="#" acceptCharset="UTF-8" method="post">
          <div className="form-group">
            <label htmlFor="nameUser">Name</label>
            <input type="text" onChange={this.handleName} value={this.state.name} className="form-control"/>
          </div>
          <div className="form-group">
            <label htmlFor="nameLastname">Lastname</label>
            <input type="text" onChange={this.handleLastName} value={this.state.lastname} className="form-control"/>
          </div>
          <div className="form-group">
            <label htmlFor="nameDNI">DNI</label>
            <input type="text" onChange={this.handleDNI} value={this.state.dni} className="form-control"/>
          </div>
          <input type="submit" onClick ={this.sendUser} value="create" className="btn btn-success"/>
        </form>
      </div>
    )
  }
}
