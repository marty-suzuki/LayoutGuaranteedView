# LayoutGuaranteedView

[![CI Status](http://img.shields.io/travis/marty-suzuki/LayoutGuaranteedView.svg?style=flat)](https://travis-ci.org/marty-suzuki/LayoutGuaranteedView)
[![Version](https://img.shields.io/cocoapods/v/LayoutGuaranteedView.svg?style=flat)](http://cocoapods.org/pods/LayoutGuaranteedView)
[![License](https://img.shields.io/cocoapods/l/LayoutGuaranteedView.svg?style=flat)](http://cocoapods.org/pods/LayoutGuaranteedView)
[![Platform](https://img.shields.io/cocoapods/p/LayoutGuaranteedView.svg?style=flat)](http://cocoapods.org/pods/LayoutGuaranteedView)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)

LayoutGuaranteedView is a Phantom Type view holder. It guaranteed that a view had laid out after execute `guaranteeLayout` function.

## Example

```swift
class ViewController: UIViewController {
    let viewHolder = ViewHolder<UITableView>(frame: .zero, style: .plain)

    override func viewDidLoad() {
        super.viewDidLoad()

        let guaranteedViewHolder = viewHolder.guaranteeLayout(addingTo: view,
                                                   layoutHandler: { tableView -> [NSLayoutConstraint] in
            return [
                tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
                tableView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
                tableView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor),
                tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
            ]
        })

        // guaranteedViewHolder.view returns `UITableView` instance
        guaranteedViewHolder.view.delegate = self
        guaranteedViewHolder.view.dataSource = self
    }
}
```

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

- Xcode 9 or greater
- iOS 9 or greater
- Swift 4

## Installation

### CocoaPods

LayoutGuaranteedView is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'LayoutGuaranteedView'
```

### Carthage

If you’re using [Carthage](https://github.com/Carthage/Carthage), simply add
SABlurImageView to your `Cartfile`:

```
github "marty-suzuki/LayoutGuaranteedView"
```

Make sure to add `LayoutGuaranteedView.framework` to "Linked Frameworks and Libraries" and "copy-frameworks" Build Phases.

## Implementation

ViewHolder is a typealias of `LayoutGuaranteedView_<LayouNotApplied, T>`.
After executing `guaranteeLayout` function, `LayoutGuaranteedView_<LayouNotApplied, T>` returns a `LayoutGuaranteedView_<LayoutApplied, T>` instance.

## Author

marty-suzuki, s1180183@gmail.com

## License

LayoutGuaranteedView is available under the MIT license. See the LICENSE file for more info.
