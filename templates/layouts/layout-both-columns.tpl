{**
 * 2007-2018 PrestaShop
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License 3.0 (AFL-3.0)
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * https://opensource.org/licenses/AFL-3.0
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@prestashop.com so we can send you a copy immediately.
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
 * versions in the future. If you wish to customize PrestaShop for your
 * needs please refer to http://www.prestashop.com for more information.
 *
 * @author    PrestaShop SA <contact@prestashop.com>
 * @copyright 2007-2018 PrestaShop SA
 * @license   https://opensource.org/licenses/AFL-3.0 Academic Free License 3.0 (AFL-3.0)
 * International Registered Trademark & Property of PrestaShop SA
 *}
<!doctype html>
<html lang="{$language.iso_code}">

<head>
    {block name='head'}
        {include file='_partials/head.tpl'}
    {/block}
</head>

<body id="{$page.page_name}" class="{$page.body_classes|classnames}">

{block name='hook_after_body_opening_tag'}
    {hook h='displayAfterBodyOpeningTag'}
{/block}

<main>
    {block name='product_activation'}
        {include file='catalog/_partials/product-activation.tpl'}
    {/block}

    <header id="header">
        {block name='header'}
            {include file='_partials/header.tpl'}
        {/block}
    </header>

    {block name='notifications'}
        {include file='_partials/notifications.tpl'}
    {/block}
    {block name='hook_Display_CheckboxPrivacy'}
        {hook h='hookDisplayCheckboxPrivacy'}
    {/block}

    
    <section id="wrapper">
        <div class="left-column col-xs-12 col-sm-8 col-md-9 menucategory">
            <div class="order__selectClientWrap">
                <a href="/36-all">All</a>
                <a href="/13-gluten-free">GLUTEN FREE</a>
                <a href="/14-grain-free">GRAIN FREE</a>
                <a href="/35-dairy-free">Dairy Free</a>
                <a href="/33-desserts">Desserts</a>
                <a href="/45-slides">SIDES</a>

            </div>
        </div>
        {hook h="displayWrapperTop"}
        <div class="container">

            {block name='breadcrumb'}
                {include file='_partials/breadcrumb.tpl'}
            {/block}
            {*{block name="left_column"}*}
            {*<div id="left-column" class="col-xs-12 col-sm-4 col-md-2">*}
            {*{if $page.page_name == 'product'}*}
            {*{hook h='displayLeftColumnProduct'}*}
            {*{else}*}
            {*{hook h="displayLeftColumn"}*}
            {*{/if}*}
            {*</div>*}
            {*{/block}*}
            {*<div id="right-column" class="col-xs-12 col-sm-4 col-md-3 rightcolumnmenu">*}
                {*<div class="block-categories hidden-sm-down rightcolumnmenu2">*}
                    {*<ul class="category-top-menu">*}
                        {*<li>*}
                            {*<a class="text-uppercase h6 ordertittle">Order*}
                                {*Summary</a></li>*}


                    {*</ul>*}


                {*</div>*}
                {*<a class="text-uppercase h6 orderh2">ORDER*}
                    {*TOTAL</a>*}
                {*<button type="button" class="btn btnplaceorder">PLACE ORDER</button>*}
                {*<div id="search_filters_wrapper" class="hidden-sm-down">*}
                    {*<div id="search_filter_controls" class="hidden-md-up">*}
                        {*<span id="_mobile_search_filters_clear_all"></span>*}
                        {*<button class="btn btn-secondary ok">*}
                            {*<i class="material-icons rtl-no-flip"></i>*}
                            {*OK*}
                        {*</button>*}
                    {*</div>*}
                {*</div>*}
            {*</div>*}
            {block name="content_wrapper"}
                <div id="content-wrapper" class="left-column right-column col-sm-4 col-md-6">
                    {hook h="displayContentWrapperTop"}
                    {block name="content"}
                        <p>Hello world! This is HTML5 Boilerplate.</p>
                    {/block}
                    {hook h="displayContentWrapperBottom"}
                </div>
            {/block}

            {block name="right_column"}
                <div id="right-column" class="col-xs-12 col-sm-4 col-md-3">
                    {if $page.page_name == 'product'}
                        {hook h='displayRightColumnProduct'}
                    {else}
                        {hook h="displayRightColumn"}
                    {/if}
                </div>
            {/block}
        </div>
        {hook h="displayWrapperBottom"}
    </section>

    <footer id="footer">
        {block name="footer"}
            {include file="_partials/footer.tpl"}
        {/block}
    </footer>

</main>

{block name='javascript_bottom'}
    {include file="_partials/javascript.tpl" javascript=$javascript.bottom}
{/block}

{block name='hook_before_body_closing_tag'}
    {hook h='displayBeforeBodyClosingTag'}
{/block}
</body>

</html>
