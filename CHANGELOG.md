# Changelog

All notable changes to this project will be documented in this file. See [standard-version](https://github.com/conventional-changelog/standard-version) for commit guidelines.

## [0.7.0](https://github.com/oleoneto/cartofi/compare/v0.6.2...v0.7.0) (2022-03-08)


### Features

* **assets:** adds js and css ([8aa3c51](https://github.com/oleoneto/cartofi/commits/8aa3c51e60d0704d07dfdd655796de9338c7d9db))
* **comments:** adds comments controller ([51a3572](https://github.com/oleoneto/cartofi/commits/51a3572570732570d760aaf4abe8bb16468dec6f))
* **controllers:** adds archives and trash routes ([63859a6](https://github.com/oleoneto/cartofi/commits/63859a68fbc6bcf7edd05646f10a24981b1efcb7))
* **controllers:** updates users#show and set_user action ([b47a0a4](https://github.com/oleoneto/cartofi/commits/b47a0a4703326a97b117e4dd22db183a09a23048))
* **gravatar:** remove if-condition ([8a323ac](https://github.com/oleoneto/cartofi/commits/8a323ac29f30fd8be8279801f805e85d12a7e088))
* **locales:** updates locales ([b73ad5f](https://github.com/oleoneto/cartofi/commits/b73ad5f17d295f3ec133031a07519005c874f393))
* **models:** adds ActionText::Attachable ([6e070f1](https://github.com/oleoneto/cartofi/commits/6e070f1658786646c77eb2708f017faca5bf7825))
* **models:** adds ActionText::Attachable ([7cb2ecd](https://github.com/oleoneto/cartofi/commits/7cb2ecdd9eb7e0a4eb04f3bf5b33155b89e2f030))
* **models:** adds prefixed_ids ([4e6a37a](https://github.com/oleoneto/cartofi/commits/4e6a37adfbc3828009068b81f30ef6a84abf7142))
* **users:** adds users controller ([fd0a676](https://github.com/oleoneto/cartofi/commits/fd0a67648a0a8d17b9454fa984a8189399e2c5d7))
* **views:** add shared templates ([46b5869](https://github.com/oleoneto/cartofi/commits/46b58699781dfcba06b591a911ddc469550eab43))
* **views:** updates views ([21867f3](https://github.com/oleoneto/cartofi/commits/21867f36a0963e45a4cdda29c579a73aec368aa8))


### Bug Fixes

* **gem:** adds jbuilder ([e34d8e0](https://github.com/oleoneto/cartofi/commits/e34d8e097f86f1203c406653a9c444b819ecf5b6))
* **generators:** correct gem name for devise-i18n ([b64a599](https://github.com/oleoneto/cartofi/commits/b64a599fbccc35d54af577000e281d7a348b795e))

### [0.6.2](https://github.com/oleoneto/cartofi/compare/v0.6.1...v0.6.2) (2022-02-27)


### Bug Fixes

* downcase tag name ([f952b12](https://github.com/oleoneto/cartofi/commits/f952b12c543a947a49d9b8e66ffd0cadd6f82e0a))

### [0.6.1](https://github.com/oleoneto/cartofi/compare/v0.6.0...v0.6.1) (2022-02-27)


### Features

* change names for autocomplete routes ([4e53983](https://github.com/oleoneto/cartofi/commits/4e53983ee2a3bc640ce33debcf198300f2a6d72c))


### Bug Fixes

* load engine routes in specs ([54ac1f7](https://github.com/oleoneto/cartofi/commits/54ac1f788cccc7c83d98e344d20b72129a80a0a4))

## [0.6.0](https://github.com/oleoneto/cartofi/compare/v0.5.2...v0.6.0) (2022-02-21)


### Features

* implements user follows ([6c40b2f](https://github.com/oleoneto/cartofi/commits/6c40b2f3517df2ee0c0d922a282833e3f9a47ca4))

### [0.5.2](https://github.com/oleoneto/cartofi/compare/v0.5.1...v0.5.2) (2022-02-21)


### Bug Fixes

* adds class_name to archivable ([eff0854](https://github.com/oleoneto/cartofi/commits/eff08543fbaa6cb1d33f34b74e516e74b9d0d1ae))
* sanitize tag list ([3bd5540](https://github.com/oleoneto/cartofi/commits/3bd5540d25cc34464aab534d9d3a60c6d6ec567b))

### [0.5.1](https://github.com/oleoneto/cartofi/compare/v0.5.0...v0.5.1) (2022-02-15)


### Bug Fixes

* adds class_name to Tags association ([80b228c](https://github.com/oleoneto/cartofi/commits/80b228ccdfed53c83a0fb147404048c9154f6d50))

## [0.5.0](https://github.com/oleoneto/cartofi/compare/v0.4.0...v0.5.0) (2022-02-15)


### Features

* generators ([b2c86b9](https://github.com/oleoneto/cartofi/commits/b2c86b9632d6387fddad0508f231e9c184ee4085))

## [0.4.0](https://github.com/oleoneto/cartofi/compare/v0.3.2...v0.4.0) (2022-02-09)


### Bug Fixes

* adds :unconfirmed_email to User ([e38459e](https://github.com/oleoneto/cartofi/commits/e38459e7c1ba44ebecb277301036e2faa7e6bfd9))

### [0.3.2](https://github.com/oleoneto/cartofi/compare/v0.3.1...v0.3.2) (2022-02-09)


### Bug Fixes

* remove router_name in devise config ([967bc7a](https://github.com/oleoneto/cartofi/commits/967bc7ac0f7a62a9abffb72773821a25d6c1ab0b))

### [0.3.1](https://github.com/oleoneto/cartofi/compare/v0.3.0...v0.3.1) (2022-02-09)


### Bug Fixes

* move devise config to dummy app ([690134d](https://github.com/oleoneto/cartofi/commits/690134d0c8f601149a195c358f791de096fd8453))

## 0.3.0 (2022-02-08)


### Features

* add GitHub actions workflow ([d738f57](https://github.com/oleoneto/cartofi/commits/d738f577983e775ad2012c1828b41f81b8f7beba))
* **api:** add active model serializers ([b804fac](https://github.com/oleoneto/cartofi/commits/b804facfd96ebeb3050e65eb147fe00e7990761f))
* archives ([d2d4038](https://github.com/oleoneto/cartofi/commits/d2d40384e593543d1bca07f3bef02d08329abba4))
* **autocomplete:** tags, and users ([55371f8](https://github.com/oleoneto/cartofi/commits/55371f8f7d552010332f54657673a8bdad8b591b))
* comments, reactions, trash ([4a74721](https://github.com/oleoneto/cartofi/commits/4a74721b0f7813be706aaa89d42bf0ae32c23e83))
* **controllers:** ping route ([01c1978](https://github.com/oleoneto/cartofi/commits/01c1978d6d21379d49a23fb040e55f2e2226c6de))
* **generator:** add install generator ([d37bfce](https://github.com/oleoneto/cartofi/commits/d37bfced12d56c53e79a7a42405980d7154f8a08))
* **helpers:** add tests for GravatarHelper ([967fc58](https://github.com/oleoneto/cartofi/commits/967fc58cb628ec7a7c1baebadbd9845e1d718a99))
* **helpers:** color and enum ([a737187](https://github.com/oleoneto/cartofi/commits/a737187e3b3a05ac68fb7c720374397096e1d465))
* **I18n:** extract user locale from request ([57e63f9](https://github.com/oleoneto/cartofi/commits/57e63f95440084c80cc97dfa78d4cef3dee9f7bd))
* initial commit ([563fba1](https://github.com/oleoneto/cartofi/commits/563fba173b6481c28331d51d885f0d06c314c0b6))
* multiple updates ([bcfdb3a](https://github.com/oleoneto/cartofi/commits/bcfdb3adbef340d6c033c1923340e4e017abd2ea))
* **rails:** add rails generators ([fa25455](https://github.com/oleoneto/cartofi/commits/fa25455ebcb719029c00f95cbe31671d4b824ce9))
* **reactable:** make sortable, add index, update seed ([83c9734](https://github.com/oleoneto/cartofi/commits/83c9734c9dec795a33302a1b6829e5143f5d9dc1))
* **tags:** add tags ([a7b82d2](https://github.com/oleoneto/cartofi/commits/a7b82d23d762076bf57ae4c5f002865e9af8267e))
* **users:** photo and scopes ([948fb80](https://github.com/oleoneto/cartofi/commits/948fb803390d87870642d8c8a4842a028bdbe146))


### Bug Fixes

* **spec:** update user spec ([617c4fc](https://github.com/oleoneto/cartofi/commits/617c4fc621d091616d31b6e959fc49040feb4c78))
* sql constraints ([b3b6263](https://github.com/oleoneto/cartofi/commits/b3b62634a6d0d01a61fb863c1416ff0fea0c53d5))
* test migrations ([87f5c13](https://github.com/oleoneto/cartofi/commits/87f5c1317a5acffb2bad5661cfa4b7afc95104f4))
* update publish workflow ([7226166](https://github.com/oleoneto/cartofi/commits/722616661eb73d638c4362b6cad68af0f507380d))

### 0.2.1 (2022-02-07)


### Features

* add GitHub actions workflow ([d738f57](https://github.com/oleoneto/cartofi/commits/d738f577983e775ad2012c1828b41f81b8f7beba))
* **api:** add active model serializers ([b804fac](https://github.com/oleoneto/cartofi/commits/b804facfd96ebeb3050e65eb147fe00e7990761f))
* archives ([d2d4038](https://github.com/oleoneto/cartofi/commits/d2d40384e593543d1bca07f3bef02d08329abba4))
* **autocomplete:** tags, and users ([55371f8](https://github.com/oleoneto/cartofi/commits/55371f8f7d552010332f54657673a8bdad8b591b))
* comments, reactions, trash ([4a74721](https://github.com/oleoneto/cartofi/commits/4a74721b0f7813be706aaa89d42bf0ae32c23e83))
* **controllers:** ping route ([01c1978](https://github.com/oleoneto/cartofi/commits/01c1978d6d21379d49a23fb040e55f2e2226c6de))
* **generator:** add install generator ([d37bfce](https://github.com/oleoneto/cartofi/commits/d37bfced12d56c53e79a7a42405980d7154f8a08))
* **helpers:** add tests for GravatarHelper ([967fc58](https://github.com/oleoneto/cartofi/commits/967fc58cb628ec7a7c1baebadbd9845e1d718a99))
* **helpers:** color and enum ([a737187](https://github.com/oleoneto/cartofi/commits/a737187e3b3a05ac68fb7c720374397096e1d465))
* **I18n:** extract user locale from request ([57e63f9](https://github.com/oleoneto/cartofi/commits/57e63f95440084c80cc97dfa78d4cef3dee9f7bd))
* initial commit ([563fba1](https://github.com/oleoneto/cartofi/commits/563fba173b6481c28331d51d885f0d06c314c0b6))
* **rails:** add rails generators ([fa25455](https://github.com/oleoneto/cartofi/commits/fa25455ebcb719029c00f95cbe31671d4b824ce9))
* **reactable:** make sortable, add index, update seed ([83c9734](https://github.com/oleoneto/cartofi/commits/83c9734c9dec795a33302a1b6829e5143f5d9dc1))
* **tags:** add tags ([a7b82d2](https://github.com/oleoneto/cartofi/commits/a7b82d23d762076bf57ae4c5f002865e9af8267e))
* **users:** photo and scopes ([948fb80](https://github.com/oleoneto/cartofi/commits/948fb803390d87870642d8c8a4842a028bdbe146))


### Bug Fixes

* **spec:** update user spec ([617c4fc](https://github.com/oleoneto/cartofi/commits/617c4fc621d091616d31b6e959fc49040feb4c78))
* sql constraints ([b3b6263](https://github.com/oleoneto/cartofi/commits/b3b62634a6d0d01a61fb863c1416ff0fea0c53d5))
* test migrations ([87f5c13](https://github.com/oleoneto/cartofi/commits/87f5c1317a5acffb2bad5661cfa4b7afc95104f4))
* update publish workflow ([7226166](https://github.com/oleoneto/cartofi/commits/722616661eb73d638c4362b6cad68af0f507380d))

## 0.2.0 (2022-02-07)


### Features

* add GitHub actions workflow ([d738f57](https://github.com/oleoneto/cartofi/commits/d738f577983e775ad2012c1828b41f81b8f7beba))
* **api:** add active model serializers ([b804fac](https://github.com/oleoneto/cartofi/commits/b804facfd96ebeb3050e65eb147fe00e7990761f))
* archives ([d2d4038](https://github.com/oleoneto/cartofi/commits/d2d40384e593543d1bca07f3bef02d08329abba4))
* **autocomplete:** tags, and users ([55371f8](https://github.com/oleoneto/cartofi/commits/55371f8f7d552010332f54657673a8bdad8b591b))
* comments, reactions, trash ([4a74721](https://github.com/oleoneto/cartofi/commits/4a74721b0f7813be706aaa89d42bf0ae32c23e83))
* **controllers:** ping route ([01c1978](https://github.com/oleoneto/cartofi/commits/01c1978d6d21379d49a23fb040e55f2e2226c6de))
* **generator:** add install generator ([d37bfce](https://github.com/oleoneto/cartofi/commits/d37bfced12d56c53e79a7a42405980d7154f8a08))
* **helpers:** add tests for GravatarHelper ([967fc58](https://github.com/oleoneto/cartofi/commits/967fc58cb628ec7a7c1baebadbd9845e1d718a99))
* **helpers:** color and enum ([a737187](https://github.com/oleoneto/cartofi/commits/a737187e3b3a05ac68fb7c720374397096e1d465))
* **I18n:** extract user locale from request ([57e63f9](https://github.com/oleoneto/cartofi/commits/57e63f95440084c80cc97dfa78d4cef3dee9f7bd))
* initial commit ([563fba1](https://github.com/oleoneto/cartofi/commits/563fba173b6481c28331d51d885f0d06c314c0b6))
* **rails:** add rails generators ([fa25455](https://github.com/oleoneto/cartofi/commits/fa25455ebcb719029c00f95cbe31671d4b824ce9))
* **reactable:** make sortable, add index, update seed ([83c9734](https://github.com/oleoneto/cartofi/commits/83c9734c9dec795a33302a1b6829e5143f5d9dc1))
* **tags:** add tags ([a7b82d2](https://github.com/oleoneto/cartofi/commits/a7b82d23d762076bf57ae4c5f002865e9af8267e))
* **users:** photo and scopes ([948fb80](https://github.com/oleoneto/cartofi/commits/948fb803390d87870642d8c8a4842a028bdbe146))


### Bug Fixes

* **spec:** update user spec ([617c4fc](https://github.com/oleoneto/cartofi/commits/617c4fc621d091616d31b6e959fc49040feb4c78))
* sql constraints ([b3b6263](https://github.com/oleoneto/cartofi/commits/b3b62634a6d0d01a61fb863c1416ff0fea0c53d5))
* test migrations ([87f5c13](https://github.com/oleoneto/cartofi/commits/87f5c1317a5acffb2bad5661cfa4b7afc95104f4))

## 1.0.0 (2022-02-07)


### Features

* add GitHub actions workflow ([d738f57](https://github.com/oleoneto/cartofi/commits/d738f577983e775ad2012c1828b41f81b8f7beba))
* **api:** add active model serializers ([b804fac](https://github.com/oleoneto/cartofi/commits/b804facfd96ebeb3050e65eb147fe00e7990761f))
* archives ([d2d4038](https://github.com/oleoneto/cartofi/commits/d2d40384e593543d1bca07f3bef02d08329abba4))
* **autocomplete:** tags, and users ([55371f8](https://github.com/oleoneto/cartofi/commits/55371f8f7d552010332f54657673a8bdad8b591b))
* comments, reactions, trash ([4a74721](https://github.com/oleoneto/cartofi/commits/4a74721b0f7813be706aaa89d42bf0ae32c23e83))
* **controllers:** ping route ([01c1978](https://github.com/oleoneto/cartofi/commits/01c1978d6d21379d49a23fb040e55f2e2226c6de))
* **generator:** add install generator ([d37bfce](https://github.com/oleoneto/cartofi/commits/d37bfced12d56c53e79a7a42405980d7154f8a08))
* **helpers:** add tests for GravatarHelper ([967fc58](https://github.com/oleoneto/cartofi/commits/967fc58cb628ec7a7c1baebadbd9845e1d718a99))
* **helpers:** color and enum ([a737187](https://github.com/oleoneto/cartofi/commits/a737187e3b3a05ac68fb7c720374397096e1d465))
* **I18n:** extract user locale from request ([57e63f9](https://github.com/oleoneto/cartofi/commits/57e63f95440084c80cc97dfa78d4cef3dee9f7bd))
* initial commit ([563fba1](https://github.com/oleoneto/cartofi/commits/563fba173b6481c28331d51d885f0d06c314c0b6))
* **rails:** add rails generators ([fa25455](https://github.com/oleoneto/cartofi/commits/fa25455ebcb719029c00f95cbe31671d4b824ce9))
* **reactable:** make sortable, add index, update seed ([83c9734](https://github.com/oleoneto/cartofi/commits/83c9734c9dec795a33302a1b6829e5143f5d9dc1))
* **tags:** add tags ([a7b82d2](https://github.com/oleoneto/cartofi/commits/a7b82d23d762076bf57ae4c5f002865e9af8267e))
* **users:** photo and scopes ([948fb80](https://github.com/oleoneto/cartofi/commits/948fb803390d87870642d8c8a4842a028bdbe146))


### Bug Fixes

* **spec:** update user spec ([617c4fc](https://github.com/oleoneto/cartofi/commits/617c4fc621d091616d31b6e959fc49040feb4c78))
* sql constraints ([b3b6263](https://github.com/oleoneto/cartofi/commits/b3b62634a6d0d01a61fb863c1416ff0fea0c53d5))
* test migrations ([87f5c13](https://github.com/oleoneto/cartofi/commits/87f5c1317a5acffb2bad5661cfa4b7afc95104f4))

### 0.1.1 (2022-01-25)


### Features

* add GitHub actions workflow ([d738f57](https://github.com/oleoneto/cartofi/commits/d738f577983e775ad2012c1828b41f81b8f7beba))
* initial commit ([563fba1](https://github.com/oleoneto/cartofi/commits/563fba173b6481c28331d51d885f0d06c314c0b6))
