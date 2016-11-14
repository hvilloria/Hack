import React from 'react'

export default class User extends React.Component {
  render () {
    return (
      <tr>
        <td> {this.props.userData.name} </td>
        <td> {this.props.userData.lastname} </td>
        <td> {this.props.userData.dni} </td>
      </tr>
    )
  }
}
