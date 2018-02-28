import React from 'react';
import Beers from './Beers';



export default class Index extends React.Component {
    const
    render() {
            return (
            <div>
                <Beers beers={this.props.beers} />
            </div>
        );
    }
}
