// 
// Text(QtQuick): Item
//      property:
//          text: string
//          color: color
//          lineCount: int
//          maximumLineCount: int
//          style: enumeration
//              Text.Normal
//              Text.Outline
//              Text.Raised
//              Text.Sunken
//          styleColor: color
//          baseUrl: url
//          hoveredLink: string
//          antialiasing: bool
//          linkColor: color
//          clip: bool
//          truncated: bool
// 
//          elide: enumeration
//              Text.ElideNone
//              Text.ElideLeft
//              Text.ElideMiddle
//              Text.ElideRight
// 
//          wrapMode: enumeration
//              Text.NoWrap
//              Text.WordWrap
//              Text.WrapAnywhere
//              Text.Wrap
// 
//          textFormat: enumeration
//              Text.AutoText
//              Text.PlainText
//              Text.StyledText
//              Text.RichText
//              Text.MarkdownText
// 
//          padding: real
//          leftPadding: real
//          rightPadding: real
//          topPadding: real
//          bottomPadding: real
//          horizontalAlignment: enumeration
//              Text.AlignLeft
//              Text.AlignRight
//              Text.AlignHCenter
//              Text.AlignJustify
//          verticalAlignment: enumeration
//              Text.AlignTop
//              Text.AlignBottom
//              Text.AlignVCenter
// 
//          font:
//              font.bold: bool
//              font.capitalization: enumeration
//                  Font.MixedCase
//                  Font.AllUppercase
//                  Font.AllLowercase
//                  Font.SmallCaps
//                  Font.Capitalize
//              font.family: string
//              font.features: object
//              font.hintingPreference: enumeration
//                  Font.PreferDefaultHinting
//                  Font.PreferNoHinting
//                  Font.PreferVerticalHinting
//                  Font.PreferFullHinting
//              font.italic: bool
//              font.kerning: bool
//              font.letterSpacing: real
//              font.pixelSize: int
//              font.pointSize: real
//              font.preferShaping: bool
//              font.strikeout: bool
//              font.styleName: string
//              font.underline: bool
//              font.weight: int
//              font.wordSpacing: real
//              fontInfo.bold: bool
//              fontInfo.family: string
//              fontInfo.italic: bool
//              fontInfo.pixelSize: string
//              fontInfo.pointSize: real
//              fontInfo.styleName: string
//              fontInfo.weight: int
//              fontSizeMode: enumeration
// 
//          advance: size
//          contentWidth: real
//          contentHeight: real
//          lineHeight: real
//          lineHeightMode: enumeration
//               Text.ProportionalHeight
//               Text.FixedHeight
//          minimumPixelSize: int
//          minimumPointSize: int
//          renderType: enumeration
//              Text.QtRendering
//              Text.NativeRendering
//              Text.CurveRendering
//          renderTypeQuality: int
//      signal:
//          lineLaidOut(object line)
//          linkActivated(string link)
//          linkHovered(string link)
//      method:
//          forceLayout()
//          linkAt(real x, real y)
//  Label(QtQuick.Controls): Text 标签
//      property:
//          background: Item
//          leftInset: real
//          rightInset: real
//          topInset: real
//          bottomInset: real
//          implicitBackgroundWidth: real
//          implicitBackgroundHeight: real