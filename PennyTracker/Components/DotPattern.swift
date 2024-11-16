import SwiftUI

struct DotBackground: View {
    let columns: Int
    let rows: Int
    let dotSize: CGFloat
    let dotSpacing: CGFloat
    let dotColor: Color
    
    init(
        columns: Int = 15,
        rows: Int = 30,
        dotSize: CGFloat = 4,
        dotSpacing: CGFloat = 20,
        dotColor: Color = Color.gray.opacity(0.3)
    ) {
        self.columns = columns
        self.rows = rows
        self.dotSize = dotSize
        self.dotSpacing = dotSpacing
        self.dotColor = dotColor
    }
    
    var body: some View {
        GeometryReader { geometry in
            ForEach(0..<rows, id: \.self) { row in
                ForEach(0..<columns, id: \.self) { column in
                    Circle()
                        .fill(dotColor)
                        .frame(width: dotSize, height: dotSize)
                        .position(
                            x: CGFloat(column) * dotSpacing + dotSpacing/2,
                            y: CGFloat(row) * dotSpacing + dotSpacing/2
                        )
                }
            }
        }
        .drawingGroup() // Performans optimizasyonu için
    }
}

