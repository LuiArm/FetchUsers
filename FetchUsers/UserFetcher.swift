//
//  UserFetcher.swift
//  FetchUsers
//
//  Created by luis armendariz on 7/27/23.
//

import Foundation


//class UserFetcher: ObservableObject {
//    @Published var users = [Users]()
//    @Published var isLoading: Bool = false
//    
//    init(){
//        loadData()
//    }
//    
//    func loadData() {
//        guard let url = URL(string: "https://www.hackingwithswift.com/samples/friendface.json")else{
//            print("Invalid URL")
//            return
//        }
//        
//        let task = URLSession.shared.dataTask(with: url) {[unowned self] data, response, error in
//            DispatchQueue.main.async {
//                self.isLoading = false
//            }
//            
//            let decoder = JSONDecoder()
//            if let data = data {
//                do{
//                    let user = try decoder.decode(Users.self,from: data)
//                    DispatchQueue.main.async {
//                        self.users = [user]
//                        self.loadData()
//                    }
//                    print(user)
//                       
//                }catch{
//                   print("Invalid Data")
//                }
//            }
//        }
//        task.resume()
//    }
//}
