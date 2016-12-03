class App extends React.Component {
  constructor() {
    super();
    this.state = {weeks: [],
                  days: []};
    this.handleWeeks = this.handleWeeks.bind(this);
    this.handleDays = this.handleDays.bind(this);
  }

  handleWeeks(weeks){
    console.log(weeks)
    this.setState({weeks});
  }

  handleDays(days) {
    console.log(days)
    this.setState({days})
  }

  render(){
    return(
      <div className="GeneralContainer">
        <Sidebar onClick= {this.handleWeeks}/>
        <Weeklist week={this.state.weeks} onClick={this.handleDays} />
        <Daylist days={this.state.days}/>
      </div>
    );
  }
}
