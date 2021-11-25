{if $admin}
    {include file="templates/Admin/adminHeader.tpl" }

{elseif $logged}
    {include file="templates/headerLogout.tpl"}

{else}
    {include file="templates/header.tpl"}
{/if}

<ul class="list-group container-lg">
    {foreach from=$champions item=$champion}
        <li class="list-group-item">
            <button type="button" class="btn btn-outline-primary"><a
                    href="campeon/{$champion->id_pj}">{$champion->name}</a></button> {$champion->description}
            <button type="button" class="btn btn-outline-danger"> <a
                    href="deleteChampion/{$champion->id_pj}">Borrar</a></button>       
        </li>
    {/foreach}
</ul>


<div class="d-flex justify-content-evenly">
    <div class="p-2 bd-highlight">
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
                <select name="id_roll" class="form-select">
                    {foreach from=$rolls item=$roll}
                        <option value="{$roll->id_roll}">{$roll->roll}</option>
                    {/foreach}
                </select>
            </div>
            <input type="submit" value="Crear">
        </form>
    </div>

    <div class="p-2 bd-highlight">
        <h2>Editar personaje</h2>
        <form action="updateChampion" method="POST">
            <div class="mb-3">
                <select name="id_pj" class="form-select">
                    {foreach from=$champions item=$champion}
                        <option value="{$champion->id_pj}">{$champion->name}</option>
                    {/foreach}
                </select>
            </div>
            <div class="mb-3">
                <input type="text" placeholder="Ingrese su nuevo nombre" name="name">
            </div>
            <div class="mb-3">
                <input type="text" placeholder="Ingrese su nueva descripción" name="description">
            </div>
            <div class="mb-3">
                <textarea name="history" placeholder="Ingrese su nueva historia" cols="30" rows="10"></textarea>
            </div>
            <div class="mb-3">
                <select name="id_roll" class="form-select">
                    {foreach from=$rolls item=$roll}
                        <option value="{$roll->id_roll}">{$roll->roll}</option>
                    {/foreach}
                </select>
            </div>

            <input type="submit" value="Editar">
        </form>
    </div>
</div>

<img src="./img/1366_2000.jpeg" class="rounded mx-auto d-block">


{include file="templates/footer.tpl"}