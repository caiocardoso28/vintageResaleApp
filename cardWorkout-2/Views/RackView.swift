import SwiftUI
import Alamofire


struct LoggedInView: View {
    var body: some View {
        Text("Logged In!")
            .font(.largeTitle)
            .fontWeight(.semibold)
    }
}



struct RackView: View {
    let allPosts: [Post]
    @Binding var rackViewShowing: Bool
    //init(allPosts: [Post]) {
            //self.allPosts = allPosts
            //Use this if NavigationBarTitle is with Large Font
            //UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.white]

            //Use this if NavigationBarTitle is with displayMode = .inline
            //UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.white]
        //}
    
    var body: some View {
        
            ZStack {
                    RoundedRectangle(cornerRadius: 0)
                    .foregroundColor(/*@START_MENU_TOKEN@*/Color(hue: 0.169, saturation: 0.0, brightness: 0.101)/*@END_MENU_TOKEN@*/)
                   
                
                    TabView {
                        ForEach(allPosts, id: \.self) {post in
                            ZStack{
                                PostView(post: post)
                            }
                        }
                    }
                    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                    //.ignoresSafeArea()
                VStack {
                    TopMenuRackView()
                        .padding(.top, 20)
                    Spacer()
                }
            }
            .ignoresSafeArea()
            
    }
}
struct RackView_Previews: PreviewProvider {
    static var previews: some View {
        
        RackView(allPosts: [post1, post2, post3],
                 rackViewShowing: .constant(true))
        
        
        
    }
}
