import SwiftUI

struct ContentView: View {
    @State var amount = 0
    @State var upgradeCount = 0
    var body: some View {
        Text("\(amount)")
        Button {
            if (upgradeCount == 0)
            {
                amount += 1
                return
            }
            amount += 1 * upgradeCount
        } label: {
            Circle()
                .frame(width: 100, height: 100)
                .foregroundStyle(.red)
        }
        Button {
            if (amount - 10 < 0)
            {
                return
            }
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
            if (amount - 1000 < 0)
            {
                return
            }
            
            upgradeCount += 100
            amount -= 1000
        } label: {
            Text("Upgrade")
            Capsule()
                .frame(width: 200, height: 100)
        }
    }
}
