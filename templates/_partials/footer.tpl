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
<div class="container">
    <div class="row">
        {block name='hook_footer_before'}
            {hook h='displayFooterBefore'}
        {/block}
    </div>
</div>
<div class="footer-container">
    <div class="container">
        <div class="row rowfoot2">
            {block name='hook_footer'}
                {hook h='displayFooter'}
            {/block}
            <div class="col-md-2 links wrapper">
                <div class="hidden-sm-down">
                    <h1 class="h1delivery">DELIVERY</h1>
                    <ul>
                        <li>MANCHESTER</li>
                        <li>GOFFSTOWN</li>
                        <li>HOOKSETT</li>
                        <li>BEDFORD</li>
                        <li>CONCORD</li>
                        <li>AUBURN</li>
                        <li>MERRIMACK</li>
                        <li>AMHERST</li>
                        <li>HOLLIS</li>
                        <li>HUDSON</li>
                        <li>NASHUA</li>
                        <li>DERRY</li>
                        {*<li>WINDHAM</li>*}
                        {*<li>LONDONDERRY</li>*}
                        {*<li>SALEM</li>*}
                        {*<li>STRATHAM</li>*}
                        {*<li>PORTSMOUTH</li>*}
                        {*<li>HAMPTON</li>*}
                        {*<li>NORTH HAMPTON</li>*}
                        {*<li>HAMPTON FALLS</li>*}
                        {*<li>EXETER</li>*}
                        {*<li>RYE</li>*}

                    </ul>
                </div>
            </div>
                    <div class="col-md-2 links wrapper">
                        <div class="hidden-sm-down twofooter">

                            <ul>
                                <li>WINDHAM</li>
                                <li>LONDONDERRY</li>
                                <li>SALEM</li>
                                <li>STRATHAM</li>
                                <li>PORTSMOUTH</li>
                                <li>HAMPTON</li>
                                <li>NORTH HAMPTON</li>
                                <li>HAMPTON FALLS</li>
                                <li>EXETER</li>
                                <li>RYE</li>
                            </ul>
                        </div>
                    </div>
            <div class="col-md-4 links wrapper">
                <div class="hidden-sm-down thirdfooter">
                <h2>With every purchase, All Real Meal supports the food insecure in our local and global community!</h2>
                </div>
            </div>
                    {*</div>*}
                    {*<div>*}
                    {*<h2>WITH EVERY PURCHASE, ALL REAL MEAL SUPPORTS THE FOOD IS SECURE IN OUR LOCAL AND GLOBAL COMMUNITY !</h2>*}
                    {*</div>*}


                {*</div>*}
                <div class="row">
                    {block name='hook_footer_after'}
                        {hook h='displayFooterAfter'}
                    {/block}
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <p class="text-sm-center">
                            {block name='copyright_link'}
                                <a class="_blank" href="http://www.prestashop.com" target="_blank">
                                    {l s='%copyright% %year% - Ecommerce software by %prestashop%' sprintf=['%prestashop%' => 'PrestaShop™', '%year%' => 'Y'|date, '%copyright%' => '©'] d='Shop.Theme.Global'}
                                </a>
                            {/block}
                        </p>
                    </div>
                </div>
            </div>
        </div>
