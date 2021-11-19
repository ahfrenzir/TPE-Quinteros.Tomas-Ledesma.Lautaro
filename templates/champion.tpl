{if $logged}
    {include file="templates/headerLogout.tpl"}
    {else}
        {include file="templates/header.tpl"}
{/if}
<h1 class="text-center"> {$champions->name}, {$champions->description} </h1>

<p class="text-center lead">{$champions->history}<p>
<img src="{BASE_URL}/img/champion.jpg " class="rounded mx-auto d-block">

<form id="form-comment">
<div class="input-group">
  <span class="input-group-text">Deje su comentario</span>
  <textarea class="form-control" aria-label="With textarea"></textarea>
<button class="btn btn-outline-secondary" type="button">Enviar</button>
</div>
</form>

<ul id="comment-list">


</ul>


<script src="/js/comments.js"></script>
{include file="templates/footer.tpl"}