import React from 'react'

export default class SearchForm extends React.Component {

  lookName(e){
    let name= e.target.value;
    this.props.onUserSearch(name);

  }

  render () {
    return (
      <div className="row">
        <div className="col-xs-8 col-xs-offset-4 text-right">
          <form id="formSearch" className="form-inline" action="#" acceptCharset="UTF-8" method="get">
            <div className="form-group">
              <input onChange={this.lookName.bind(this)} type="text" name="search" id="search" placeholder="Enter Name" className="form-control"/>
            </div>
            <input type="submit" name="commit" value="Search" className="btn btn-default"/>
          </form>
        </div>
      </div>
    )
  }
}
