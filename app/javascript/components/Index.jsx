import React from 'react';
import Beers from './Beers';
import SearchBox from './SearchBox';

export default class Index extends React.Component {
    constructor() {
        super();
        this.state = {
            query: '',
            beers: []
        }
    }
    loadBeers = (query = '') => {
        fetch(`beer_table/search?query=${query}`, { credentials: 'same-origin' })
            .then(response => response.json())
            .then(beers => this.setState({ beers }));

    };
    componentWillMount() {
        this.loadBeers(this.state.beers);
    };
    render() {
        const { beers } = this.state;
            return (
            <div>
                <SearchBox loadBeers={this.loadBeers} />
                <Beers beers={beers} />
            </div>
        );
    }
};
