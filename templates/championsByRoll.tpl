{include file="templates/header.tpl"}

<ul>
    {foreach from=$champions item=$champion}
        <li>
            {$champion->name}, {$champion->description}
        </li>
    {/foreach}
</ul>

{include file="templates/footer.tpl"}