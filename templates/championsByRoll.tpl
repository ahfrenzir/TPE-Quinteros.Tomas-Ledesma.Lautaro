{if $logged}
    {include file="templates/headerLogout.tpl"}
    {else}
        {include file="templates/header.tpl"}
{/if}
<h1 class="text-center"> {$titulo} {$roll->roll} </h1>
<h4 class="text-center lead"> {$roll->description} </h4>
<ul class="list-group">
    {foreach from=$champions item=$champion}
        <li class="list-group-item">
        <button type="button" class="btn btn-outline-primary"><a href="campeon/{$champion->id_pj}">{$champion->name}</a></button> {$champion->description}
        <button type="button" class="btn btn-outline-danger"> <a href="deleteChampion/{$champion->id_pj}">Borrar</a></button>
        </li>
    {/foreach}
</ul>

<img src="{BASE_URL}/img/rolls.jpg " class="rounded mx-auto d-block">

{include file="templates/footer.tpl"}