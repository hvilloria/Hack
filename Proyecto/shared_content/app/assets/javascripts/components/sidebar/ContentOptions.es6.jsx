class ContentOptions extends React.Component {
  constructor(){
    super();
    this.state = {
      active: 0
    };
    this.handleClick = this.handleClick.bind(this);
    this.setOptionActive = this.setOptionActive.bind(this);
  }

  setOptionActive(index){
    return(index === this.state.active ? 'active' : '');
  }



  handleClick(index){
    this.setState({active: index});
    switch (index) {
      case 0:
        searchweeks()
          .then((value) => { this.props.onClick(value) })
        break;
      case 1:
        searchWeeksnotes()
          .then((value) => { this.props.onClick(value) })
        break;
    };
  }

  optionList(){
    return([
      {title: "Contenido", onClick: this.handleClick },
      {title: "Mis Notas", onClick: this.handleClick }
    ]);
  }

  render(){
    let options = this.optionList().map((value,index)=> {
      return( <Option className={this.setOptionActive(index)} title={value.title} onClick={value.onClick} key={index} index={index}/>);
    });

    return(
      <div className= "options-container">
        {options}
      </div>
    );
  }
}
