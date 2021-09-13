//
//  ContentView.swift
//  HeeRit
//
//  Created by 김지섭 on 2021/09/13.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    @State private var isOnAutoPaste = false
    
    init() {
        UITextView.appearance().backgroundColor = .clear
    }
    var body: some View {
        NavigationView{
            VStack {
                TextEditor(text: .constant("Hellow World!"))
                    .padding(12)
                    .background(Color.gray)
                    .cornerRadius(24)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity,
                           maxHeight: .infinity,
                           alignment: .center)
                    .font(.system(size: 17, weight: .bold))
                    .padding([.leading, .trailing])
                    
                HStack {
                    Button(action: {}) {
                        Image(systemName: "doc.on.clipboard")
                            .foregroundColor(.white)
                    }
                    .frame(width: 50, height: 50)
                    .background(Color.orange)
                    .cornerRadius(25)
                    
                    Spacer()
                    Toggle(isOn: $isOnAutoPaste) {
                    }.frame(width: .leastNormalMagnitude,
                            alignment: .center)
                    
                    Spacer()
                    
                    Button(action: {}) {
                        Image(systemName: "trash")
                            .foregroundColor(.white)
                    }
                    .frame(width: 50, height: 50)
                    .background(Color.orange)
                    .cornerRadius(25)
                }.padding([.leading, .trailing])
            }.navigationTitle("HEERIT")
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
