import React from 'react';

const Header = () => {
    return (
        <thead>
            <tr>
                <th width ="20%" className="has-text-left">Beers name</th>
                <th className="has-text-left">Description</th>
                <th className="has-text-centered">Price</th>
                <th width ="15%" className="has-text-centered">Date opened</th>
            </tr>
        </thead>
    )
};

export default Header;
