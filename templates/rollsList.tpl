{include file="templates/header.tpl"}

<ul>
    {foreach from=$rolls item=$roll}
        <li>
        <button><a href="showChampsByRoll/{$roll->id_roll}"> {$roll->roll}</a></button>:  {$roll->description}
        <button> <a href="deleteRoll/{$roll->id_roll}">Borrar</a></button>
        </li>
    {/foreach}
</ul>

<h1> Crear roll </h1>

<form action="createRoll" method="POST">
    <input type="text" name="roll">
    <textarea name="description" id="" cols="30" rows="10"></textarea>
    <input type="submit" value="Enviar">
</form>

<h2>Editar roll</h2>
<form action="updateRoll" method="POST">
    <select name="id_roll">
        {foreach from=$rolls item=$roll}
            <option value="{$roll->id_roll}">{$roll->roll}</option>
        {/foreach}
    </select>
    <input type="text" placeholder="Ingrese su nuevo roll" name="name">
    <input type="text" placeholder="Ingrese su nueva descripción" name="description">
    </select>
    <input type="submit" value="Editar">
</form>

{include file="templates/footer.tpl"}
