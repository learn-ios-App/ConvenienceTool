import SwiftUI

struct CountUpView: View {
    @AppStorage("count_key") var num = 0
    
    
    var body: some View {
        VStack {
            Spacer()
            
            Text("\(num)")
                .font(.largeTitle)
            
            Spacer()
            
//            Button(action: {
//                num = 0
//            }) {
//                Text("0に戻す")
//                    .font(.title2)
//            }
            
            HStack {
                VStack {
                    Button(action: {
                        num -= 12
                    }) {
                        Text("-12")
                            .font(.largeTitle)
                    }
                    Button(action: {
                        num -= 1
                    }) {
                        Image(systemName: "minus.circle")
                            .resizable()
                            .scaledToFit()
                            .padding()
                    }

                }
                VStack {
                    Button(action: {
                        num += 12
                    }) {
                        Text("+12")
                            .font(.largeTitle)                    }
                    Button(action: {
                        num += 1
                    }) {
                        Image(systemName: "plus.circle")
                            .resizable()
                            .scaledToFit()
                            .padding()
                    }

                }            }
        }
    }
    
    struct count_Previews: PreviewProvider {
        static var previews: some View {
            CountUpView()
        }
    }
}
