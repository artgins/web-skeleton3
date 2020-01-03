<!doctype html>
<html class="no-js" lang="">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>${title}</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="manifest" href="site.webmanifest">
        <link rel="apple-touch-icon" href="icon.png">
        <!-- Place favicon.ico in the root directory -->

        % for key, value in metadata.items():
            % if value:
        <meta name="${key}" content="${value}">
            % endif
        % endfor

        % if 'css' in assets_env:
            % for url in assets_env['css'].urls():
        <link rel="stylesheet" href="${url}">
            % endfor
        % endif

        % if 'top_js' in assets_env:
            % for url in assets_env['top_js'].urls():
        <script src="${url}"></script>
            % endfor
        % endif
    </head>
    <body>
        <!--[if lte IE 9]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser.
            Please <a href="https://browsehappy.com/">upgrade your browser</a>
            to improve your experience and security.</p>
        <![endif]-->

        <div id="your-app">
        </div>

    % if 'bottom_js' in assets_env:
        % for url in assets_env['bottom_js'].urls():
        <script src="${url}"></script>
        % endfor
    % endif
    </body>
</html>