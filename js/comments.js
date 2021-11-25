"use strict";
window.onload = getComments;
let API_URL = "api/comment";
let form = document.getElementById("form-comment");
if (document.querySelector("#submit-btn")) {
  document
    .querySelector("#submit-btn")
    .addEventListener("click", createComment);
}

let app = new Vue({
  el: "#app",
  data: {
    admin: form.getAttribute("data-admin"),
    comments: [],
  },
  methods: {
    deleteComment: function (id_btn) {
      deleteCommentById(id_btn);
    },
  },
});

async function getComments() {
  try {
    let id_champion = form.getAttribute("data-idItem");
    let response = await fetch("api/comments" + "/" + id_champion);
    let comments = await response.json();

    console.log(comments);

    app.comments = comments;

    console.log(id_champion);
  } catch (error) {
    console.log(error);
  }
}

async function createComment() {
  let body = document.querySelector("#comment-body").value;
  let date = new Date();
  let output =
    String(date.getDate()).padStart(2, "0") +
    "/" +
    String(date.getMonth() + 1).padStart(2, "0") +
    "/" +
    date.getFullYear();
  let id_champion = form.getAttribute("data-idItem");
  let punctuation = document.getElementById("#punctuation").value;

  console.log(body);
  console.log(output);
  console.log(id_champion);
  console.log(punctuation);
  if (body) {
    let comment = {
      body: body,
      date: output,
      punctuation: punctuation,
      id_champion: id_champion,
    };
    try {
      let response = await fetch(API_URL, {
        method: "POST",
        mode: "cors",
        headers: { "Content-type": "application/json" },
        body: JSON.stringify(comment),
      });
      if (response.ok) {
        console.log(response);
        getComments();
        document.querySelector("#comment-body").value = "";
      }
    } catch (error) {
      console.log(error);
    }
  }else{
      document.querySelector("#error").innerHTML = "No has ingresado ningun comentario, vuelve a intentarlo"
  }
}

async function deleteCommentById(id_btn) {
  try {
    let response = await fetch(API_URL + "/" + id_btn, {
      method: "DELETE",
      headers: {
        "Content-Type": "application/json",
      },
    });
    getComments();
  } catch (response) {
    console.error(response);
  }
}
