# GNGradientView

[![CI Status](http://img.shields.io/travis/Jakub Knejzlik/GNGradientView.svg?style=flat)](https://travis-ci.org/Jakub Knejzlik/GNGradientView)
[![Version](https://img.shields.io/cocoapods/v/GNGradientView.svg?style=flat)](http://cocoapods.org/pods/GNGradientView)
[![License](https://img.shields.io/cocoapods/l/GNGradientView.svg?style=flat)](http://cocoapods.org/pods/GNGradientView)
[![Platform](https://img.shields.io/cocoapods/p/GNGradientView.svg?style=flat)](http://cocoapods.org/pods/GNGradientView)

## Installation

GNGradientView is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "GNGradientView"
```

## Usage

You can use gradient view with Interface Builder (IBDesignable/IBInspectable support). Or with UIView extension:

```swift
view.gradientView_setMaskDirection(.vertical)
view.gradientView_setMaskAlphaChannels([1, 0]) // you can specify any transition eg. [0.8, 1, 0.5, 0, 1]
```

## Author

Jakub Knejzlik, jakub.knejzlik@gmail.com

## License

GNGradientView is available under the MIT license. See the LICENSE file for more info.
