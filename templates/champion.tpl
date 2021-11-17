{if $logged}
    {include file="templates/headerLogout.tpl"}
    {else}
        {include file="templates/header.tpl"}
{/if}
<h1 class="text-center"> {$champions->name}, {$champions->description} </h1>

<p class="text-center lead">{$champions->history}<p>
<img src="{BASE_URL}/img/champion.jpg " class="rounded mx-auto d-block">

{include file="templates/footer.tpl"}