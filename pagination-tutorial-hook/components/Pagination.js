import React from 'react';
//다른 게시물에서도 쓸 수 있음
const Pagination = ({postPerPage, totalPosts, paginate}) => {
    const pageNumbers = [];

    for(let i = 1; i<Math.ceil(totalPosts / postPerPage); i++){
        pageNumbers.push(i);
    }

    return(
        <nav>
            <ul className='pagiantion'>
                {pageNumbers.map(num=>
                    <li key={num}>
                        <a onClick={()=>paginate(num)} href='!#'>{num}</a>
                    </li>)}
            </ul>
        </nav>
    );
    
};

export default Pagination;