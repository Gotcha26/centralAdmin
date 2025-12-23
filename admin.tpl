<h2>Central Admin CSS</h2>

{if isset($page.infos)}
  <ul>
    {foreach from=$page.infos item=info}
      <li>{$info}</li>
    {/foreach}
  </ul>
{/if}

<form method="post">
  {foreach from=$centralAdmin key=key item=value}
    <label>{$key}</label>
    <input type="text" name="{$key}" value="{$value}">
    <br>
  {/foreach}
  <input type="submit" name="save" value="Enregistrer">
</form>
