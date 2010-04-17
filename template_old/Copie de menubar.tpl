{* $Id: menubar.tpl 2409 2008-07-01 02:09:21Z rvelices $ *}
<div id="menubar"> {if not empty($links)}
  <table id="table_menu_link" cellspacing="0" cellpadding="0">
    <tr>
      <td class="menu_up_left">&nbsp;</td>
      <td class="blocmenu_up">&nbsp;</td>
      <td class="blocmenu_up_right">&nbsp;</td>
    </tr>
    <tr>
      <td class="blocmenu_left">&nbsp;</td>
      <td class="blocmenu_in"><dl id="mbLinks">
          <dt>{'Links'|@translate}</dt>
          <dd>
            <ul>
              {foreach from=$links item=link}
              <li> <a href="{$link.URL}"
      {if isset($link.new_window) }onclick="window.open(this.href, '{$link.new_window.NAME|@escape:'javascript'}','{$link.new_window.FEATURES|@escape:'javascript'}'); return false;"{/if}
    > {$link.LABEL} </a> </li>
              {/foreach}{*links*}
            </ul>
          </dd>
        </dl></td>
      <td class="blocmenu_right">&nbsp;</td>
    </tr>
    <tr>
      <td class="blocmenu_bottom_left">&nbsp;</td>
      <td class="blocmenu_bottom">&nbsp;</td>
      <td class="blocmenu_bottom_right">&nbsp;</td>
    </tr>
  </table>
  {/if}{*links*}
  <table id="table_menu_cat" cellspacing="0" cellpadding="0">
    <tr>
      <td class="blocmenu_up_left">&nbsp;</td>
      <td class="blocmenu_up">&nbsp;</td>
      <td class="blocmenu_up_right">&nbsp;</td>
    </tr>
    <tr>
      <td class="blocmenu_left">&nbsp;</td>
      <td class="blocmenu_in"> {if isset($U_START_FILTER)} <a href="{$U_START_FILTER}" title="{'start_filter_hint'|@translate}" rel="nofollow"><img src="{$ROOT_URL}{$themeconf.icon_dir}/start_filter.png" class="button" alt="start filter"></a> {/if}
        {if isset($U_STOP_FILTER)} <a href="{$U_STOP_FILTER}" title="{'stop_filter_hint'|@translate}"><img src="{$ROOT_URL}{$themeconf.icon_dir}/stop_filter.png" class="button" alt="stop filter"></a> {/if}
        <dl id="mbCategories">
          <dt><a href="{$U_CATEGORIES}">{'Categories'|@translate}</a></dt>
          <dd> {$MENU_CATEGORIES_CONTENT}
            {if isset($U_UPLOAD)}
            <ul>
              <li> <a href="{$U_UPLOAD}">{'upload_picture'|@translate}</a> </li>
            </ul>
            {/if}
            <p class="totalImages">{$pwg->l10n_dec('%d element', '%d elements', $NB_PICTURE)}</p>
          </dd>
        </dl></td>
      <td class="blocmenu_right">&nbsp;</td>
    </tr>
    <tr>
      <td class="blocmenu_bottom_left">&nbsp;</td>
      <td class="blocmenu_bottom">&nbsp;</td>
      <td class="blocmenu_bottom_right">&nbsp;</td>
    </tr>
  </table>
  {if not empty($related_tags)}
  <table id="table_menu_tag" cellspacing="0" cellpadding="0">
    <tr>
      <td class="blocmenu_up_left">&nbsp;</td>
      <td class="blocmenu_up">&nbsp;</td>
      <td class="blocmenu_up_right">&nbsp;</td>
    </tr>
    <tr>
      <td class="blocmenu_left">&nbsp;</td>
      <td class="blocmenu_in"><dl id="mbTags">
          <dt>{'Related tags'|@translate}</dt>
          <dd>
            <ul id="menuTagCloud">
              {foreach from=$related_tags item=tag}
              <li> {if !empty($tag.U_ADD) } <a href="{$tag.U_ADD}" 
        title="{$pwg->l10n_dec('%d element are also linked to current tags', '%d elements are also linked to current tags', $tag.counter)}"
        rel="nofollow"> <img src="{$ROOT_URL}{$themeconf.icon_dir}/add_tag.png" alt="+" /> </a> {/if} <a href="{$tag.URL}" class="tagLevel{$tag.level}" title="{'See elements linked to this tag only'|@translate}">{$tag.name}</a> </li>
              {/foreach}
            </ul>
          </dd>
        </dl></td>
      <td class="blocmenu_right">&nbsp;</td>
    </tr>
    <tr>
      <td class="blocmenu_bottom_left">&nbsp;</td>
      <td class="blocmenu_bottom">&nbsp;</td>
      <td class="blocmenu_bottom_right">&nbsp;</td>
    </tr>
  </table>
  {/if}
  <table id="table_menu_spe" cellspacing="0" cellpadding="0">
    <tr>
      <td class="blocmenu_up_left">&nbsp;</td>
      <td class="blocmenu_up">&nbsp;</td>
      <td class="blocmenu_up_right">&nbsp;</td>
    </tr>
    <tr>
      <td class="blocmenu_left">&nbsp;</td>
      <td class="blocmenu_in"><dl id="mbSpecial">
          <dt>{'special_categories'|@translate}</dt>
          <dd>
            <ul>
              {foreach from=$special_categories item=cat}
              <li><a href="{$cat.URL}" title="{$cat.TITLE}" {if isset($cat.REL)}{$cat.REL}{/if}>{$cat.NAME}</a></li>
              {/foreach}
            </ul>
          </dd>
        </dl></td>
      <td class="blocmenu_right">&nbsp;</td>
    </tr>
    <tr>
      <td class="blocmenu_bottom_left">&nbsp;</td>
      <td class="blocmenu_bottom">&nbsp;</td>
      <td class="blocmenu_bottom_right">&nbsp;</td>
    </tr>
  </table>
  <table id="table_menu_menu" cellspacing="0" cellpadding="0">
    <tr>
      <td class="blocmenu_up_left">&nbsp;</td>
      <td class="blocmenu_up">&nbsp;</td>
      <td class="blocmenu_up_right">&nbsp;</td>
    </tr>
    <tr>
      <td class="blocmenu_left">&nbsp;</td>
      <td class="blocmenu_in"><dl id="mbMenu">
          <dt>{'title_menu'|@translate}</dt>
          <dd>
            <form action="{$ROOT_URL}qsearch.php" method="get" id="quicksearch">
              <p style="margin:0;padding:0"> {*this <p> is for html validation only - does not affect positioning*}
                <input type="text" name="q" id="qsearchInput" onfocus="if (value==qsearch_prompt) value='';" onblur="if (value=='') value=qsearch_prompt;" style="width:90%"/>
              </p>
            </form>
            <script type="text/javascript">var qsearch_prompt="{'qsearch'|@translate|@escape:'javascript'}"; document.getElementById('qsearchInput').value=qsearch_prompt;</script>
            <ul>
              {foreach from=$summaries item=sum}
              <li><a href="{$sum.U_SUMMARY}" title="{$sum.TITLE}" {if isset($sum.REL)}{$sum.REL}{/if}>{$sum.NAME}</a></li>
              {/foreach}
            </ul>
          </dd>
        </dl></td>
      <td class="blocmenu_right">&nbsp;</td>
    </tr>
    <tr>
      <td class="blocmenu_bottom_left">&nbsp;</td>
      <td class="blocmenu_bottom">&nbsp;</td>
      <td class="blocmenu_bottom_right">&nbsp;</td>
    </tr>
  </table>
  <table id="table_menu_id" cellspacing="0" cellpadding="0">
    <tr>
      <td class="blocmenu_up_left">&nbsp;</td>
      <td class="blocmenu_up">&nbsp;</td>
      <td class="blocmenu_up_right">&nbsp;</td>
    </tr>
    <tr>
      <td class="blocmenu_left">&nbsp;</td>
      <td class="blocmenu_in"><dl id="mbIdentification">
          <dt>{'identification'|@translate}</dt>
          <dd> {if isset($USERNAME)}
            <p>{'hello'|@translate}&nbsp;{$USERNAME}&nbsp;!</p>
            {/if}
            <ul>
              {if isset($U_REGISTER)}
              <li><a href="{$U_REGISTER}" title="{'Create a new account'|@translate}" rel="nofollow">{'Register'|@translate}</a></li>
              {/if}
              
              {if isset($U_IDENTIFY)}
              <li><a href="{$U_IDENTIFY}" rel="nofollow">{'Connection'|@translate}</a></li>
              {/if}
              
              {if isset($U_LOGOUT)}
              <li><a href="{$U_LOGOUT}">{'logout'|@translate}</a></li>
              {/if}
              
              {if isset($U_PROFILE)}
              <li><a href="{$U_PROFILE}" title="{'hint_customize'|@translate}">{'customize'|@translate}</a></li>
              {/if}
              
              {if isset($U_ADMIN)}
              <li><a href="{$U_ADMIN}" title="{'hint_admin'|@translate}">{'admin'|@translate}</a></li>
              {/if}
            </ul>
            {if isset($U_IDENTIFY)}
            <form method="post" action="{$U_IDENTIFY}" class="filter" id="quickconnect">
              <fieldset>
              <legend>{'Quick connect'|@translate}</legend>
              <label> {'Username'|@translate}
              <input type="text" name="username" size="15" value="">
              </label>
              <label> {'Password'|@translate}
              <input type="password" name="password" size="15">
              </label>
              {if $AUTHORIZE_REMEMBERING}
              <label> {'remember_me'|@translate}
              <input type="checkbox" name="remember_me" value="1">
              </label>
              {/if}
              <p>
                <input class="submit" type="submit" name="login" value="{'Submit'|@translate}">
              </p>
              <ul class="actions">
                <li><a href="{$U_LOST_PASSWORD}" title="{'Forgot your password?'|@translate}" rel="nofollow"><img src="{$ROOT_URL}{$themeconf.icon_dir}/lost_password.png" class="button" alt="{'Forgot your password?'|@translate}"></a></li>
                {if isset($U_REGISTER)}
                <li><a href="{$U_REGISTER}" title="{'Create a new account'|@translate}" rel="nofollow"><img src="{$ROOT_URL}{$themeconf.icon_dir}/register.png" class="button" alt="{'Register'|@translate}"/></a></li>
                {/if}
              </ul>
              </fieldset>
            </form>
            {/if} </dd>
        </dl></td>
      <td class="blocmenu_right">&nbsp;</td>
    </tr>
    <tr>
      <td class="blocmenu_bottom_left">&nbsp;</td>
      <td class="blocmenu_bottom">&nbsp;</td>
      <td class="blocmenu_bottom_right">&nbsp;</td>
    </tr>
  </table>
</div>
<!-- menubar -->