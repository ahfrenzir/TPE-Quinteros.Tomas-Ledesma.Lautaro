"use strict"

const API_URL = "api/comment";
window.addEventListener("load", loadFetch);
document.querySelector("#form-comment").addEventListener("click", createComment);

async function createComment(){

}

async function loadFetch(){
    let response = await fetch(API_URL);
    try {
        if (response.ok) {
            let comentarios = await response.json();
            loadComment(comentarios);
            }
        }catch (error) {
            console.log(error);
        }
    }

let comment = new Vue({
    el:"#comment",
    data:{
        cuerpo : document.querySelector("#")
    }
})

function createCommentList(comentarios){
    let list = docume.querySelector("#comment-list")

}