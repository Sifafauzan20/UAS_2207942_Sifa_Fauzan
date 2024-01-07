import React, { Component } from "react";
import UserService from "../services/UserService";

class ViewUserComponent extends Component {
  constructor(props) {
    super(props);

    this.state = {
      id: this.props.match.params.id,
      user: {},
    };
  }

  componentDidMount() {
    UserService.getUserById(this.state.id).then((res) => {
      this.setState({ user: res.data });
    });
  }

  render() {
    return (
      <div>
        <br></br>
        <div className="col-md-6 offset-md-3">
          <div className="view">
          <h3 className="text-center">Transaction Details</h3>
            <div className="rows">
              <label> Date : </label>
              <div> {this.state.user.date}</div>
            </div>
            <div className="rows">
              <label> Description : </label>
              <div> {this.state.user.description}</div>
            </div>
            <div className="rows">
              <label> Amount : </label>
              <div> {this.state.user.amount}</div>
            </div>
            <div className="rows">
              <label> Status : </label>
              <div> {this.state.user.status}</div>
          </div>
            <div className="rows">
              <label> Receiver : </label>
              <div> {this.state.user.receiver}</div>
            </div>
            <div className="rows">
              <label> Gender : </label>
              <div> {this.state.user.jk}</div>
            </div>
            <div className="rows">
              <label>  No telephone : </label>
              <div> {this.state.user.no_telp}</div>
            </div>
            <div className="rows">
              <label> Address :</label>
              <div> {this.state.user.address}</div>
            </div>
          </div>
        </div>
      </div>
    );
  }
}

export default ViewUserComponent;
