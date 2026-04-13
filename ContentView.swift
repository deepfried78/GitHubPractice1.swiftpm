import SwiftUI

struct ContentView: View {
    @State var amount = 0
    @State var upgradeCount = 1
    var body: some View {
        Text("\(amount)")
        Button {
            amount += upgradeCount
        } label: {
            Circle()
                .frame(width: 100, height: 100)
        }
        Button {
            upgradeCount += 1
            amount -= 10
        } label: {
            Text("Upgrade")
            Rectangle()
                .frame(width: 200, height: 100)
        }
        Button("reset"){
            amount = 0
        }
        Button {
            upgradeCount += 1
            amount -= 1000
        } label: {
            Text("Upgrade")
            Capsule()
                .frame(width: 200, height: 100)
        }
    }
}
