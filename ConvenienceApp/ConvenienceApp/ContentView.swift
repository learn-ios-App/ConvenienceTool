import SwiftUI

struct ContentView: View {
    let tool = ["おつり計算", "カウント"]
    
    
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: CalclationView()) {
                    Text(tool[0])
                }

                NavigationLink(destination: CountUpView()) {
                    Text(tool[1])
                }
            } .navigationTitle("ツール")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
