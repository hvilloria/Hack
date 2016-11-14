import React from 'react'

export default class ListingUsers extends React.Component {
  render () {
    return (
      <div className="row">
        <div className="col-xs-8 col-xs-offset-4 text-right">
          <form id="formSearch" className="form-inline" action="#" acceptCharset="UTF-8" method="get">
            <div className="form-group">
              <input type="text" name="search" id="search" placeholder="Enter Name" className="form-control"/>
            </div>
            <input type="submit" name="commit" value="Search" className="btn btn-default"/>
          </form>
        </div>
      </div>
    )
  }
}

