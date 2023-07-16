import SwiftUI
import Alamofire


struct LoggedInView: View {
    var body: some View {
        Text("Logged In!")
            .font(.largeTitle)
            .fontWeight(.semibold)
    }
}

let posts: [String] = ["pants1", "pants2", "pants3", "pants4"]
let nextPosts: [String] = ["hat1", "hat2"]
let lastPosts: [String] = ["sweater1", "sweater2", "sweater3"]
let post1 = Post(title: "Carhartt Poppers", images: posts, price: "$150.00")
let post2 = Post(title: "Looney Tunes Hat", images: nextPosts, price: "$50.00")
let post3 = Post(title: "Russell Sweatshirt", images: lastPosts, price: "$60.00")


struct MainView: View {
    
    let allPosts: [Post] = [post1, post2, post3]
    var body: some View {
        
        
            ZStack {
                    RoundedRectangle(cornerRadius: 30)
                    .ignoresSafeArea()
                    .foregroundColor(/*@START_MENU_TOKEN@*/Color(hue: 0.169, saturation: 0.0, brightness: 0.144)/*@END_MENU_TOKEN@*/)
                        
                    TabView {
                        ForEach(allPosts, id: \.self) {post in
                            ZStack{
                                PostView(post: post)
                            }
                        }
                    }
                    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                    
                    .ignoresSafeArea()
                    
                    VStack {
                        TopMenuView()
                        Spacer()
                    }
            }
            
        
            
        
        
        
    }
}
struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
        
    }
}
