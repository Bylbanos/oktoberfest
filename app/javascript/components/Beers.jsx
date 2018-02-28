import React from 'react';

import Header from './Header';
import Line from './Line';

export default class Beers extends React.Component {


    render() {
        const { beers } = this.props;
        if (beers.length === 0) {
            return (<p className="is-size-4 has-text-centered">Nothing found</p>);
        }
        else {
            return (
                <table className="table is-narrow is-hoverable is-fullwidth ">
                    <Header />
                    <tbody>{beers.map(beer => <Line {...beer} key={beer.id} /> )}</tbody>
                </table>
            )
        }
    }
}
