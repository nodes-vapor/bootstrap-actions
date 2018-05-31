# Bootstrap 🍃

[![Swift Version](https://img.shields.io/badge/Swift-4.1-brightgreen.svg)](http://swift.org)
[![Vapor Version](https://img.shields.io/badge/Vapor-3-30B6FC.svg)](http://vapor.codes)
[![Circle CI](https://circleci.com/gh/nodes-vapor/bootstrap/tree/master.svg?style=shield)](https://circleci.com/gh/nodes-vapor/bootstrap)
[![codebeat badge](https://codebeat.co/badges/40b8811e-2949-427a-a2a7-437209475f7d)](https://codebeat.co/projects/github-com-nodes-vapor-bootstrap-master)
[![codecov](https://codecov.io/gh/nodes-vapor/bootstrap/branch/master/graph/badge.svg)](https://codecov.io/gh/nodes-vapor/bootstrap)
[![Readme Score](http://readme-score-api.herokuapp.com/score.svg?url=https://github.com/nodes-vapor/bootstrap)](http://clayallsopp.github.io/readme-score?url=https://github.com/nodes-vapor/bootstrap)
[![GitHub license](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/nodes-vapor/bootstrap/master/LICENSE)

A Leaf wrapper for Bootstrap


# Installation

Update your `Package.swift` file.
```swift
.package(url: "https://github.com/nodes-vapor/bootstrap.git", from: "1.0.0-alpha")
```

## Getting started 🚀

First make sure that you've imported Bootstrap everywhere when needed:

```swift
import Bootstrap
```

### Adding the provider

```swift
public func register(_ services: inout Services) throws {
    try services.register(BootstrapProvider())
}
```

### Adding the Leaf tags

```swift 
public func register(_ services: inout Services) throws {
    services.register { _ -> LeafTagConfig in
        var tags = LeafTagConfig.default()
        
        for tag in BootstrapProvider.tags {
            tags.use(tag.value, as: tag.key)
        }
        return tags
    }
}
```

## Supported tags

- [Alert](#alert)
- [Badge](#badge)
- [Button](#button)
- [Button Group](#button-group)
- [Button Toolbar](#button-toolbar)
- [Input](#input)

### Alert

TODO

### Badge

TODO

### Button

TODO

### Button Group

```
#bs:buttonGroup(isVertical, classExtras?, Aria?) { }
```

```
#bs:buttonGroup(false, "btn-group-sm") {
    #bs:button() { First Option }
    #bs:button("danger") { Second Option}
    #bs:button() { Third Option}
}

```

### Button Toolbar

```
#bs:buttonToolbar(classExtras?, Aria?) { }
```

```
#bs:buttonToolbar() {
#bs:button() { First Option }
#bs:button("danger") { Second Option}
#bs:button() { Third Option}
}
```

### Input

TODO

## 🏆 Credits

This package is developed and maintained by the Vapor team at [Nodes](https://www.nodesagency.com). The package owner for this project is [Martin](http://github.com/martinlasek).


## 📄 License

This package is open-sourced software licensed under the [MIT license](http://opensource.org/licenses/MIT)
