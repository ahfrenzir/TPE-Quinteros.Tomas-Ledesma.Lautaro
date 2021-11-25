{if $admin}
    {include file="templates/Admin/adminHeader.tpl" }

{elseif $logged}
    {include file="templates/headerLogout.tpl"}

{else}
    {include file="templates/header.tpl"}
{/if}
<h1 class="text-center"> {$champions->name}, {$champions->description} </h1>

<p class="text-center lead">{$champions->history}</p>

{if {$champions->img}}
    <img  class="rounded mx-auto d-block" src={$champions->img} />
{/if}


{if $admin}
    <form action="uploadImage/{$champions->id_pj}" method="POST" enctype="multipart/form-data">
        <div class="input-group">
            <input type="file" class="form-control" name="images" id="inputGroupFile04" aria-describedby="inputGroupFileAddon04"
                aria-label="Upload">
            <button class="btn btn-outline-secondary" type="submit" id="inputGroupFileAddon04">Enviar</button>
        </div>
    </form> 
{/if}

        
        <form id="form-comment" data-admin="{$admin}" data-idItem="{$champions->id_pj}">
        {if $logged}
        <div class="input-group">
            <span class="input-group-text">¡Dejanos tu comentario!</span>
            <textarea class="form-control" aria-label="With textarea" placeholder="Escribe aquí..."
                id="comment-body" required></textarea>
            <select class="form-select " aria-label="Default select example" id="punctuation">
                <option value="1" selected> 1 </option>
                <option value="2"> 2 </option>
                <option value="3"> 3 </option>
                <option value="4"> 4 </option>
                <option value="5"> 5 </option>
            </select>
            <button id="submit-btn" class="btn btn-outline-secondary" type="button">Enviar</button>
            </div>
        {/if}
        </form>

        <p id="error" class="text-center lead alert link-danger"></p>
<div id="app">
    <h2 > Comentarios de {$champions->name} </h2>
    {include file="vue/comments.tpl"}
</div>


<script src="./js/comments.js"></script>
{include file="templates/footer.tpl"}