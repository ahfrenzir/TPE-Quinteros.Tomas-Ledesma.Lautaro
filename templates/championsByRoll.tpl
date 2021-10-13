{include file="templates/header.tpl"}

<h1> {$titulo} {$roll->roll} </h1>
<h4> {$roll->description} </h4>
<ul class="list-group">
    {foreach from=$champions item=$champion}
        <li class="list-group-item">
        <button type="button" class="btn btn-outline-primary"><a href="campeon/{$champion->id_pj}">{$champion->name}</a></button> {$champion->description}
        <button type="button" class="btn btn-outline-danger"> <a href="deleteChampion/{$champion->id_pj}">Borrar</a></button>
        </li>
    {/foreach}
</ul>



{include file="templates/footer.tpl"}