<form action="createChampion/{$roll->id_roll}" method="POST">
    <input type="text" name="name" id="name">
    <input type="text" name="description" id="description">
    <textarea name="history" id="" cols="30" rows="10"></textarea>
    <select name="id_roll" id="">
    {foreach from=$rolls item=$roll}
        <option value="{$roll->id_roll}">{$roll->roll}</option>
    {/foreach}
    </select>
    <input type="submit" value="Enviar">
</form>