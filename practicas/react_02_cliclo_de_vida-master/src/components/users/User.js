import React from 'react'

export default class User extends React.Component {
  constructor(props){
    super(props);
    this.state={name: this.props.userData.name,
      inputType: true }
    this.deleteUser = this.deleteUser.bind(this)
  }
  deleteUser(e){
    let id = e.target.value
    this.props.deleteUser(id)
  }
  render(){
    if (this.state.inputType == false){
      return(

        <tr>
          <td>{this.props.userData.name}</td>
          <td>{this.props.userData.lastname}</td>
          <td>{this.props.userData.dni}</td>
          <td>
            <div>
              <button className="btn" >Edit</button>
              <button className="btn" value={this.props.userData.id} onClick={this.deleteUser}>Delete</button>
            </div>
          </td>
        </tr>
      )
    }
    else{
      return(

        <tr>
          <td><input type="text" value ={this.state.name}/></td>
          <td>{this.props.userData.lastname}</td>
          <td>{this.props.userData.dni}</td>
          <td>
            <div>
              <button className="btn" >Edit</button>
              <button className="btn" value={this.props.userData.id} onClick={this.deleteUser}>Delete</button>
            </div>
          </td>
        </tr>
      )
    }
  }
}

// let allusers = this.props.sendUser;
// let users = allusers.props.map((user)=>{
//   return
// })
//
// <Item key={item.videoId} song={item} playlist={this.props.play
