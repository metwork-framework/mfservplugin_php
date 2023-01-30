# mfservplugin_php

## Prerequisites

- **mfserv**

- **mfext** 
with layers:
  - metwork-mfext-layer-python3_devtools
  - **metwork-mfext-layer-php**

## Installations

### Layer php

Verification :

```
su - mfserv
layers
# - (*) php@mfext [/opt/metwork-mfext-2.1/opt/php]
# if not loaded, execute: layer_load php@mfext
php --version
composer --version
```

## Installation plugin

```
su - mfserv
git clone https://github.com/metwork-framework/mfservplugin_php
cd mfservplugin_php
make develop
```

## URL

http://localhost:18868/mfservplugin_php/index.php

Enjoy using PHP with MetWork !!!
