import React from 'react';
import Moment from 'react-moment';





const Line = ({ id, title, description, price, opened }) => {
    return (
        <tr>
            <td>{title}</td>
            <td>{description}</td>
            <td>{price}</td>
            <td><Moment fromNow parse="YYYY-MM-DD HH"  >{opened}</Moment></td>
        </tr>
    );
};

export default Line;
