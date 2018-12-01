# SNCollectionViewLayout

[![CI Status](https://img.shields.io/travis/ahmedAlmasri/SNCollectionViewLayout.svg?style=flat)](https://travis-ci.org/ahmedAlmasri/SNCollectionViewLayout)
[![Version](https://img.shields.io/cocoapods/v/SNCollectionViewLayout.svg?style=flat)](https://cocoapods.org/pods/SNCollectionViewLayout)
[![License](https://img.shields.io/cocoapods/l/SNCollectionViewLayout.svg?style=flat)](https://cocoapods.org/pods/SNCollectionViewLayout)
[![Platform](https://img.shields.io/cocoapods/p/SNCollectionViewLayout.svg?style=flat)](https://cocoapods.org/pods/SNCollectionViewLayout)


<b>ScreenShots</b>

<img src="https://github.com/ahmedAlmasri/SNCollectionViewLayout/blob/master/screenshot/img1.png"  width="450">


## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.
## Using 

1- Create instance

```swift
  let snCollectionViewLayout = SNCollectionViewLayout()
       snCollectionViewLayout.fixedDivisionCount = 4 // Columns for .vertical, rows for .horizontal
       snCollectionViewLayout.delegate = self
       myCollectionView.collectionViewLayout = snCollectionViewLayout
```    

2- Delegate 

```swift
  // scale for items based number of columns
  func scaleForItem(inCollectionView collectionView: UICollectionView, withLayout layout: UICollectionViewLayout, atIndexPath indexPath: IndexPath) -> UInt {
        if indexPath.row == 0 || indexPath.row == 3 || indexPath.row == 10 || indexPath.row == 70 {
            
            return 2 
        }
        return 1
    }
    // height for item if set fixedDimension  height equal width
    func itemFlexibleDimension(inCollectionView collectionView: UICollectionView, withLayout layout: UICollectionViewLayout, fixedDimension: CGFloat) -> CGFloat {
        return fixedDimension
    }
    
    // header height
    func headerFlexibleDimension(inCollectionView collectionView: UICollectionView, withLayout layout: UICollectionViewLayout, fixedDimension: CGFloat) -> CGFloat {
        return 0
    }
```

## Requirements

* Swift 4.2+
* Xcode 10.0+
* iOS 11.0+

## Installation

SNCollectionViewLayout is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'SNCollectionViewLayout'
```

## Author

ahmedAlmasri, ahmed.almasri@ymail.com

## License

SNCollectionViewLayout is available under the MIT license. See the LICENSE file for more info.
