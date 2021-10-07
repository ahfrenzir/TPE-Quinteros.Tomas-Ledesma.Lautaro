{include file="templates/header.tpl"}

<ul>
    {foreach from=$rolls item=$roll}
        <li>
        <button><a href="showChampsByRoll/{$roll->id_roll}"> {$roll->roll}</a></button>:  {$roll->description}
        </li>
    {/foreach}
</ul>

<form action="createChampion" method="POST">
    <input type="text" name="description" id="description">
    <textarea name="history" id="" cols="30" rows="10"></textarea>
    <input type="submit" value="Enviar">
</form>

{include file="templates/footer.tpl"}

<script src="js/app.js"></script>
 