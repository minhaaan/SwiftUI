import SwiftUI

struct BlogPost {
    
    let title: String
    let author: String
    let article: String
    
    static func getDummy() -> BlogPost{
        return BlogPost(title: "오늘도 빡코딩!🔥👨‍💻", author: "쩡대리", article: "지혜는 소리다.이것은 같으며, 때까지 평화스러운 자신과 별과 행복스럽고 교향악이다. 주는 듣기만 찾아 부패를 눈에 몸이 새 것이다. 동산에는 용감하고 타오르고 풀이 청춘 커다란 봄바람을 그들에게 아름다우냐? 물방아 어디 예가 얼음 설레는 사랑의 꾸며 인간에 역사를 사막이다. 이 그들의 내는 청춘이 청춘의 수 하는 희망의 약동하다. 그들은 발휘하기 품었기 오직 그들의 붙잡아 듣기만 새가 쓸쓸하랴? 피어나는 행복스럽고 영락과 스며들어 피부가 청춘은 대한 끓는 쓸쓸하랴? 피어나기 무엇이 장식하는 길을 청춘의 뿐이다. 풀이 않는 천지는 것이다. 위하여서 없으면, 그들의 새 이상이 그림자는 싸인 대고, 투명하되 황금시대다.")
    }
}

struct ContentView: View {
    
    @State var post: BlogPost?
    
    @State var isLoading: Bool = false
    
    @State var opacity: Double = 1.0
    
    var body: some View {
        
            VStack(alignment: .leading, spacing: 10) {
                
                Image(systemName: "flame.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .clipShape(Circle())
                    .clipped()
                    .frame(width: 60, height: 60)
                    .padding(.bottom, 15)
                    .withSkeletonView(shouldShow: post == nil, opacity: opacity)
                    
                
                Text(post?.title ?? "포스트 타이틀이 없습니다.")
                    .font(.headline)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom, 8)
                    .withSkeletonView(shouldShow: post == nil, opacity: opacity)
                
                
                Text(post?.author ?? "포스트 작가입니다.")
                    .font(.subheadline)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom, 30)
                    .withSkeletonView(shouldShow: post == nil, opacity: opacity)
                    
                
                Text(post?.article ?? "별과 때에, 투명하되 곧 동산에는 창공에 보라. 커다란 만천하의 실로 열락의 보이는 대중을 되는 안고, 뭇 때문이다. 이것은 발휘하기 것은 설산에서 소리다.이것은 그와 인도하겠다는 행복스럽고 듣기만 피다. 타오르고 맺어, 인생을 그것은 따뜻한 고행을 것이다. 그들의 그들은 사는가 같지 듣는다. 위하여, 작고 눈에 칼이다. 옷을 새 새가 길지 것이다. 이상, 황금시대의 생명을 놀이 우리 영원히 갑 고동을 피어나는 그리하였는가? 풍부하게 갑 장식하는 남는 보라.")
                    .font(.body)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .withSkeletonView(shouldShow: post == nil, opacity: opacity)
                
                Spacer()
                
                Button(action: reloadData, label: {
                    Image(systemName: "repeat")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .padding()
                        .background(.blue)
                })
                .unredacted()
                
                Spacer()
            }
            .padding(.horizontal, 20)
//            .redacted(reason: post == nil ? .placeholder : [])
            .onAppear(perform: {
                self.post = BlogPost.getDummy()
                withAnimation(.linear(duration: 1.5).repeatForever(autoreverses: true)) {
                    opacity = opacity == 0.4 ? 0.8 : 0.4
                }
            })
    }
    
    
}

extension ContentView {
    fileprivate var loadingView: some View {
        Color.black.opacity(0.8).edgesIgnoringSafeArea(.all)
            .overlay(ProgressView().tint(.white))
    }
}

//MARK: - Helper
extension ContentView {
    
    // 데이터 갱신
    fileprivate func reloadData(){
        self.post = nil
        withAnimation { self.isLoading = true }
        DispatchQueue.main.asyncAfter(deadline: .now() + 2, execute: {
            withAnimation {
                self.post = BlogPost.getDummy()
            }
//            withAnimation { self.isLoading = false }
        })
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
