import React from 'react';

const Header = () => {
    return (
        <thead>
        <tr>
            <th className="has-text-left">Beers name</th>
            <th className="has-text-centered">Description</th>
            <th className="has-text-centered">Price</th>
            <th className="has-text-centered">Date opened</th>
        </tr>
        </thead>
    )
};

export default Header;
