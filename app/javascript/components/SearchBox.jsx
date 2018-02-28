import React from 'react';

export default class SearchBox extends React.Component {
    constructor(props) {
        super(props);
        this.state = { query: '' };
    }

    handleKeyUp = (e) => {
        const { value } = e.target;
        this.setState({ query: value });
        this.props.loadBeers(value);
    }

    render(){
        return (
            <div className="field">
                <p className="control has-icons-right">
                    <input className="input" type="text" placeholder="Type in car maker" onKeyUp={this.handleKeyUp} autoFocus="autofocus" />
                    <span className="icon is-small is-right">
              <i className="fa fa-search" aria-hidden="true"></i>
            </span>
                </p>
            </div>
        );
    }
}