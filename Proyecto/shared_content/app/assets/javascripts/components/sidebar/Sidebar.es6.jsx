class Sidebar extends React.Component{


  render(){
    return(
      <div className= "sidebar-container">
        <BrandLogo/>
        <ContentOptions onClick={this.props.onClick}/>
      </div>
    )
  }
}
