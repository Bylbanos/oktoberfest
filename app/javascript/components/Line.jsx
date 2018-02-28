import React from 'react';

// import numeral from 'numeral'



const Line = ({ id, title, description, price, opened }) => {
    return (
        <tr>
            <td>{title}</td>
            <td>{description}</td>
            <td>{price}</td>
            <td>{opened}</td>
        </tr>
    );
};

export default Line;
