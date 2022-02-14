# mfservplugin_php

## Prerequisites

- **mfserv**
- **mfext** (with metwork-mfext-layer-python3_devtools)

## Installations

### Installation layer php

Installation of the layer **php** for mfext, as root user :

```
git clone -b release_1.0 https://github.com/metwork-framework/mfextaddon_php.git
cd mfextaddon_php
./bootstrap.sh /opt/metwork-mfext-1.0/
make
```

Verification :

```
su - mfserv
layers
# - (*) php@mfext [/opt/metwork-mfext-1.0/opt/php]
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

