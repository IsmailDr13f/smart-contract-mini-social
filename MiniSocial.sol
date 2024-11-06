// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract MiniSocial{
    //Question1: Création de la structure Post et l integration de variables message et author.
    struct Post{
        string message;
        address author;
    }
    //Question2: Création de liste dynamique postes de type Post[] pour stocker les postes publiées.
    Post[] public posts;

    //Question3: Création de la fonction de publication.
    function publishPost(string memory _message) public{
        Post memory new_post = Post({
            message: _message,
            author: msg.sender
    });
    posts.push(new_post);
    }

    //Question4: Création de function de consultation.
    function getPost(uint index) public view returns (string memory, address){
        Post storage post =posts[index];
        return (post.message,post.author);
    }

    //Question5: Création de fonction pour récupérer le nombre des messages publiés.
    function getTotalPosts() public view returns (uint){
        return posts.length;
    }
}