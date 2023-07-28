//
//  ContentView.swift
//  FetchUsers
//
//  Created by luis armendariz on 7/25/23.
//

import SwiftUI
struct  Users: Codable, Identifiable {
    var id: String
    var isActive: Bool
    var name: String
    var age: Int
    var company: String
    var email: String
    var address: String
    var about: String
    var registered: String
    var friends: [Friends]
}

struct Friends: Codable {
    var id: String
    var name: String
}

struct ContentView: View {
    @State private var users = [Users]()
    
    var body: some View {
        NavigationStack{
            List{
                ForEach(users) { user in
                    NavigationLink{
                        DetailView(user: user)
                    }label: {
                        VStack(alignment: .leading){
                            Text(user.name)
                                .font(.headline)
                            Text(user.company)
                        }
                    }
                }
            }
            .task {
                await loadData()
            }
        }
       
    }
    
    func loadData() async{
        guard let url = URL(string: "https://www.hackingwithswift.com/samples/friendface.json")else{
            print("Invalid URL")
            return
        }
        
        do{
            let (data, _) = try await URLSession.shared.data(from: url)
            
            if let decodedResponse = try? JSONDecoder().decode([Users].self,from: data){
                users = decodedResponse
            }
               
        }catch{
           print("Invalid Data")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


