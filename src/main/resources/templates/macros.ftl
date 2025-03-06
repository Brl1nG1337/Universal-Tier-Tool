<#macro macro_header title subtitle detail>
    <div id="header-container"
         class="container-fluid sticky-top bg-dark-subtle text-white bold
         <#if detail>mb-0 pb-0 pt-0 <#else>mb-2 pb-2 pt-2</#if>" <#if detail>style="box-shadow: none !important;" </#if>
         xmlns="http://www.w3.org/1999/html">
        <div class="container justify-content-center">
            <div class="row <#if detail>pt-1 pb-1</#if><#if !detail>pt-3 pb-3</#if>">
                <div class="col-md-2">
                    <a href="/">
                        <img src="/images/logo.png" alt="Logo"
                             style="width: 100%; height: 100%;">
                    </a>
                </div>
                <div class="col-md-10">
                    <h1 class="text-start" style="font-weight: bold !important;">${title}</h1>
                    <p class="text-start">${subtitle}</p>
                </div>
            </div>
        </div>
    </div>
</#macro>



<#macro macro_footer>
    <div class="container-fluid bg-dark text-white py-3 mt-5 pt-4 pb-2"
         style="box-shadow: 0px -70px 35px rgba(0, 0, 0, 0.5);">
        <footer class="text-center">
            <p>&copy; UTT- Universal Tier Tool
                <br> (AKA: Julia Peters und Basti Röling)
                <br>Alle Rechte vorbehalten</p>
            <ul class="nav justify-content-center">
                <li class="nav-item">
                    <a href="" class="nav-link text-white">Semig</a>
                </li>
                <li class="nav-item">
                    <a href="" class="nav-link text-white">bester</a>
                </li>
                <li class="nav-item">
                    <a href="" class="nav-link text-white">Mann</a>
                </li>
            </ul>
        </footer>
    </div>
</#macro>


<#macro macro_background>
    <style>
      .background-container {
        position: relative;
        width: 100%;
        height: 100%; /* Vollbildhöhe */
        background-image: url("/images/bg-left.jpg"), url("/images/bg-right.jpg");
        background-position: left center, right center;
        background-repeat: no-repeat;
        background-size: 968px 1974px, 968px 1974px;
      }
    </style>
</#macro>

<#macro macro_card imageUrl="" title="" subtitle="" refUrl="/" buttonLabel="">
    <div class="col-md-4">
        <div class="card d-flex" style="width: 100%; height: 100%;">
            <a href="${refUrl}" class="text-decoration-none" style="color: #1a1d20">
                <img src="${imageUrl}" class="card-img-top" alt="card">
            </a>
            <div class="card-body d-flex flex-column">
                <h5 class="card-title" style="font-weight: bold; font-size: 28px">${title}</h5>
                <p class="card-text">${subtitle}</p>
                <a href="${refUrl}" class="btn btn-primary mt-auto">${buttonLabel}</a>
            </div>
        </div>
    </div>
</#macro>