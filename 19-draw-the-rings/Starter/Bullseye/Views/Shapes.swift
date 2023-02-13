import SwiftUI

struct Shapes: View {
  var body: some View {
    VStack {
      Circle()
        .strokeBorder(Color.blue, lineWidth: 20)
        .frame(width: 200, height: 100)
        .background(Color.green)
      RoundedRectangle(cornerRadius: 20)
        .fill(Color.blue)
        .frame(width: 200, height: 100)
      Capsule()
        .fill(Color.blue)
        .frame(width: 200, height: 100)
      Ellipse()
        .fill(Color.blue)
        .frame(width: 200, height: 100)
    }
  }
}

struct Shapes_Previews: PreviewProvider {
  static var previews: some View {
    Shapes()
  }
}
