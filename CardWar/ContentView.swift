import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "back"
    @State var cpuCard = "back"
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {

        ZStack{
            Image("background").ignoresSafeArea()
            
            VStack(spacing: 0.0){
                Spacer()
                
                Image("logo")

                Spacer()

                HStack(){
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                
                Spacer()
                

                VStack(){
                    
                    Button(action: {
                        let playerRand = Int.random(in: 2...14)
                        let cpuRand = Int.random(in: 2...14)
                        
                        playerCard = "card"+String(playerRand)
                        cpuCard = "card"+String(cpuRand)
                        
                        // Update score
                        if playerRand == cpuRand {
                            playerScore += 1
                            cpuScore += 1
                        }
                        else if playerRand > cpuRand {
                            playerScore += 1
                        }
                        else{
                            cpuScore += 1
                        }
                        
                    },
                           label: {
                            Image("dealbutton")
                    })
                }

                Spacer()
                
                HStack(){
                    Spacer()
                    
                    VStack(spacing: 5.0){
                        Text("USER")
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .foregroundColor(Color.white)
                            .font(.title)
                    }.padding()
                    
                    Spacer()
                    
                    VStack(spacing: 5.0){
                        Text("CPU")
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .foregroundColor(Color.white)
                            .font(.title)
                    }.padding()
                    
                    Spacer()
                }
                
                Spacer()
            }
        }
    }
   
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
