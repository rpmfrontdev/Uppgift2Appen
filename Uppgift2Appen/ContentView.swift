//
//  ContentView.swift
//  Uppgift2Appen
//
//  Created by Rene Mbanguka on 2023-11-15.
//
import SwiftUI

struct ContentView: View {
    
    @State var addText = ""
    
    @State var textTable = [String]()
    
    var body: some View {
        
        
        VStack {
            
            HStack{
                
                TextField("Striv text", text: $addText)
                    .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                
                Button(action:{
                    if(addText != "") {
                        textTable.append(addText)
                        addText = ""
                    }
                    
                }) {
                    Text("Lägg till")
                        .font(.title2)
                }
                
            }
            
            List (textTable, id: \.self) { rowItem in
                Text(rowItem)
                    .font(.body)
                
            }
            
            Button(action:{
                
                textTable = []
                
            }) {
                Text("Nollställ")
                    .font(.title2)
                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.orange/*@END_MENU_TOKEN@*/)
                
            }
            
            .disabled(textTable.isEmpty)
            
        }
        
        .padding()
        .navigationTitle("Välkommen")
        
    }
    
}

#Preview {
    ContentView()
}
