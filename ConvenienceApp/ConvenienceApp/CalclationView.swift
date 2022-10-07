import SwiftUI

struct CalclationView: View {
    @State var inputPrice = ""
    @State var inputMoney = ""
    @State var change: Int = 0
    
    
    var body: some View {
        VStack(spacing: 40) {
            TextField("商品の代金を入力", text: $inputPrice)
                .multilineTextAlignment(.center)
                .keyboardType(.numberPad)
            
            TextField("お客さんが払った金額を入力", text: $inputMoney)
                .multilineTextAlignment(.center)
                .keyboardType(.numberPad)
            
            Button("計算") {
                change = Int(inputMoney)! - Int(inputPrice)!
            }
            Text("おつり：\(change)円")
        }
    }
}

struct calclation_Previews: PreviewProvider {
    static var previews: some View {
        CalclationView()
    }
}
