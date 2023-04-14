
import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView{
            VStack(spacing: 32) {
                VStack(spacing: 8){
                    Text("Solde total :")
                    Text("\(String(format: "%.2F", previewAccount.map {$0.amount}.reduce(0, +))) €")
                        .font(.system(size: 32, weight: .bold))
                }
                VStack (alignment: .leading){
                    Text("Mes comptes")
                        .font(.title2)
                        .bold()
                    if !previewAccount.isEmpty {
                        VStack(spacing: 15){
                            ForEach(previewAccount) { account in
                                AccountCell(account: account)
                            }
                        }
                    } else {
                        Text("Ajoutez un compte")
                            .padding(32)
                            .frame(maxWidth: .infinity)
                        
                    }
                }
            }
            .padding(24)
        }
        .background(Color.backgroundColor)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}


