//
//  DetailView.swift
//  FetchUsers
//
//  Created by luis armendariz on 7/27/23.
//

import SwiftUI

struct DetailView: View {
    let user: Users
    var body: some View {
        ScrollView{
            Text(user.name)
            Text(user.about)
        }
    }
}



//struct DetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        DetailView()
//    }
//}
