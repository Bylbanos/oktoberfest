import React from 'react';
import Moment from 'react-moment';


const Line = ({ id, title, description, price, opened }) => {
    return (
        <tr>
            <td>{title}</td>
            <td className="has-text-left">{description}</td>
            <td className="has-text-centered">{price}</td>
            <td className="has-text-centered"><Moment fromNow parse="YYYY-MM-DD HH"  >{opened}</Moment></td>
        </tr>
    );
};

export default Line;
