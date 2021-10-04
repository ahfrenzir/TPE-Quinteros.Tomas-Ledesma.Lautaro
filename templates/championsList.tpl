{include file="templates/header.tpl"}

<ul>
    {foreach from=$champions item=champion}
        <li>
            {$champion->name}, {$champion->description}
        </li>
    {/foreach}
</ul>

<form action="createChampion" method="POST">
    <input type="text" name="name" id="name">
    <input type="text" name="description" id="description">
    <textarea name="history" id="" cols="30" rows="10"></textarea>
    <select name="id_roll" id="">
        <option value="1">Mago</option>
        <option value="2">Luchador</option>
        <option value="3">Asesino</option>
        <option value="4">Tanque</option>
        <option value="5">Tirador</option>
        <option value="6">Soporte</option>
    </select>
    <input type="submit" value="Enviar">
</form>

{include file="templates/footer.tpl"}