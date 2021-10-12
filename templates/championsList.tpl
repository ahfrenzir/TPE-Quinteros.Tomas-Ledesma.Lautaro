{include file="templates/header.tpl"}

<ul>
    {foreach from=$champions item=$champion}
        <li>
            <a href="campeon/{$champion->id_pj}">{$champion->name}</a>, {$champion->description}
            <button> <a href="deleteChampion/{$champion->id_pj}">Borrar</a></button>
        </li>
    {/foreach}
</ul>

<h2>Crear personaje</h2>
<form action="createChampion" method="POST">
    <div class="mb-3">
        <input type="text" placeholder="Ingrese el nombre" name="name">
    </div>
    <div class="mb-3">
        <input type="text" placeholder="Ingrese su descripción" name="description">
    </div>
    <div class="mb-3">
        <textarea name="history" placeholder="Ingrese su historia" id="" cols="30" rows="10"></textarea>
    </div>
    <div class="mb-3">
        <select name="id_roll">
            {foreach from=$rolls item=$roll}
                <option value="{$roll->id_roll}">{$roll->roll}</option>
            {/foreach}
        </select>
    </div>
    <input type="submit" value="Crear">
    </div>
</form>

<h2>Editar personaje</h2>
<form action="updateChampion" method="POST">
    <select name="id_pj">
        {foreach from=$champions item=$champion}
            <option value="{$champion->id_pj}">{$champion->name}</option>
        {/foreach}
    </select>
    <input type="text" placeholder="Ingrese su nuevo nombre" name="name">
    <input type="text" placeholder="Ingrese su nueva descripción" name="description">
    <textarea name="history" placeholder="Ingrese su nueva historia" cols="30" rows="10"></textarea>
    <select name="id_roll">
        {foreach from=$rolls item=$roll}
            <option value="{$roll->id_roll}">{$roll->roll}</option>
        {/foreach}
    </select>
    <input type="submit" value="Editar">
</form>

{include file="templates/footer.tpl"}