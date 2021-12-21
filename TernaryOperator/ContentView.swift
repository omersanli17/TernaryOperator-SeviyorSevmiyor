//
//  ContentView.swift
//  TernaryOperator
//
//  Created by omer sanli on 20.12.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State var seviyor: Bool = true
    @State var yaprakSayisi: Int = 12
    @State var guncelDurum = ""

    var body: some View {
        VStack{
            Text("Seviyor Sevmiyor mu Oyunu")
                .font(.system(size: 27, weight: .bold, design: .rounded))
                .foregroundColor(.blue)
                .padding(.top, 50)
            Text("Kalan Yaprak Sayısı: \(yaprakSayisi)")
                .font(.system(.title3))
                .padding()
  
            Button {
                seviyor.toggle()
                yaprakSayisi = yaprakSayisi - 1
                if yaprakSayisi == 0 {
                    if seviyor == true {
                        guncelDurum = "Seviliyorsunuz"
                    }else{
                        guncelDurum = "Maalesef"
                    }
                }
                
                
            } label: {
                ZStack{

                    RoundedRectangle(cornerSize: .init(width: 25, height: 25))
                        .frame(width: 300, height: 160, alignment: .center)
                        .foregroundColor(seviyor ? .green : .red)
                    
                    Text(seviyor ? "Seviyor" : "Sevmiyor")
                        .font(.system(size: 45, weight: .bold, design: .rounded))
                        .foregroundColor(.white)

                }
                
            }

            Text("Durumuz: \(guncelDurum)")

                .padding(50)
          
            
            
            Spacer()
        }
  
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
