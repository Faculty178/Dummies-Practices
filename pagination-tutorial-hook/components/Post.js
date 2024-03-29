import React from 'react';

const Post = ({posts, loading}) => {
    if(loading){
        return <h2>...loading</h2>;
    }
    return(
        <ul>
            {posts.map(post=> <li key={post.id}>{post.title}</li>)}
        </ul>
    );
};

export default Post;