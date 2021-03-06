import CoreGraphics
import Foundation

public class MosaicLayoutAttributes: LayoutAttributes {
  var childAttributes = [LayoutAttributes]()
  var pattern: MosaicPattern!
  var remaining: Int = 0

  convenience init(_ indexPath: IndexPath, pattern: MosaicPattern) {
    self.init(forCellWith: indexPath)
    self.pattern = pattern
    self.remaining = pattern.amount
  }
}
