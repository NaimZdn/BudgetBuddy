
import SwiftUI

struct HomeView: View {
    
    @State private var isPresentedNewAccountScreen = false
    @StateObject private var accountsList = AccountList()
    
    var body: some View {
        ScrollView{
            VStack(spacing: 32) {
                VStack(spacing: 8){
                    Text("Solde total :")
                    Text("\(String(format: "%.2F", accountsList.accounts.map {$0.amount}.reduce(0, +))) €")
                        .font(.system(size: 32, weight: .bold))
                }
                
                AccentButton(title: "+ account", color: Color.tertiaryColor) {
                    isPresentedNewAccountScreen = true
                }
                
                VStack (alignment: .leading){
                    Text("Mes comptes")
                        .font(.title2)
                        .bold()
                    if !accountsList.accounts.isEmpty {
                        VStack(spacing: 15){
                            ForEach(accountsList.accounts) { account in
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
        .sheet(isPresented: $isPresentedNewAccountScreen) {
            AccountCreationView { newAccount in
                accountsList.accounts.append(newAccount)
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}


