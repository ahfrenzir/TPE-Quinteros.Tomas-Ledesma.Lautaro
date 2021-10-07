{include file="templates/header.tpl"}

<h1> {$titulo} {$roll->roll} </h1>
<h3> {$roll->description} </h3>
<ul>
    {foreach from=$champions item=$champion}
        <li>
        <a href="campeon/{$champion->id_pj}">{$champion->name}</a>, {$champion->description}
        <button> <a href="deleteChampion/{$champion->id_pj}">Borrar</a></button>
        <button> <a href="updateForm/{$champion->id_pj}">Editar</a></button>
        </li>
    {/foreach}
</ul>

{include file="templates/footer.tpl"}