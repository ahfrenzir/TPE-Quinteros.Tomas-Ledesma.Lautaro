{if $admin}
    {include file="templates/Admin/adminHeader.tpl" }

{elseif $logged}
    {include file="templates/headerLogout.tpl"}
    
{else}
        {include file="templates/header.tpl"}
{/if}
<h2 class="text-center lead alert alert-danger" >Atencion, para eliminar un roll, se deben eliminar los campeones que pertenecen a el anteriormente</h2>
<ul class="list-group container-lg">
    {foreach from=$rolls item=$roll}
        <li class="list-group-item">
            <button type="button" class="btn btn-outline-primary"><a href="showChampsByRoll/{$roll->id_roll}">
{$roll->roll}</a></button> : {$roll->description}
            <button type="button" class="btn btn-outline-danger"> <a href="deleteRoll/{$roll->id_roll}">Borrar</a></button>
        </li>
    {/foreach}
</ul>

<div class="d-flex justify-content-evenly">
    <div class="p-2 bd-highlight">
        <h2> Crear roll </h2>
        <form action="createRoll" method="POST">
            <div class="mb-3">
                <input type="text" name="roll" placeholder="Ingrese su roll">
            </div>
            <div class="mb-3">
                <input type="text" name="description" placeholder="Ingrese su descripción">
            </div>
            <div class="mb-3">
                <input type="submit" value="Crear">
            </div>
        </form>
    </div>


    <div class="p-2 bd-highlight">
        <h2>Editar roll</h2>
        <form action="updateRoll" method="POST">
            <div class="mb-3">
                <select name="id_roll" class="form-select">
                    {foreach from=$rolls item=$roll}
                        <option value="{$roll->id_roll}">{$roll->roll}</option>
                    {/foreach}
                </select>
            </div>
            <div class="mb-3">
                <input type="text" placeholder="Ingrese su nuevo roll" name="name">
            </div>
            <div class="mb-3">
                <input type="text" placeholder="Ingrese su nueva descripción" name="description">
            </div>
            <input type="submit" value="Editar">
        </form>
    </div>
</div>



{include file="templates/footer.tpl"}