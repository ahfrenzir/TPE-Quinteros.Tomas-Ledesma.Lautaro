{include file="templates/header.tpl"}

<ul class="list-group">
    {foreach from=$rolls item=$roll}
        <li class="list-group-item">
        <button type="button" class="btn btn-outline-primary"><a href="showChampsByRoll/{$roll->id_roll}"> {$roll->roll}</a></button> : {$roll->description}
            <button type="button" class="btn btn-outline-danger"> <a href="deleteRoll/{$roll->id_roll}">Borrar</a></button>
        </li>
    {/foreach}
</ul>

<h2> Crear roll </h2>

<form action="createRoll" method="POST">
    <div class="mb-3">
        <input type="text" name="roll" placeholder="Ingrese su roll">
        <input type="text" name="description" placeholder="Ingrese su descripción">
        <input type="submit" value="Crear">
    </div>
</form>

<h2>Editar roll</h2>
<form action="updateRoll" method="POST">
    <div class="mb-3">
        <select name="id_roll">
            {foreach from=$rolls item=$roll}
                <option value="{$roll->id_roll}">{$roll->roll}</option>
            {/foreach}
        </select>
        <input type="text" placeholder="Ingrese su nuevo roll" name="name">
        <input type="text" placeholder="Ingrese su nueva descripción" name="description">
        </select>
        <input type="submit" value="Editar">
    </div>
</form>

{include file="templates/footer.tpl"}