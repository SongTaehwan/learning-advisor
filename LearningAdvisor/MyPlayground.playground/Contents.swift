//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white

        let cardView = UIView()
        // UIView frame 을 수정해 위치 크기 조절 가능
        cardView.frame = CGRect(x: 20, y: 20, width: 300, height: 250)
        cardView.backgroundColor = .blue
        cardView.layer.cornerRadius = 30
        cardView.layer.cornerCurve = .continuous
        
        cardView.layer.shadowColor = UIColor.blue.cgColor
        cardView.layer.shadowOpacity = 0.25
        cardView.layer.shadowOffset = CGSize(width: 0, height: 10)
        cardView.layer.shadowRadius = 20
        
        view.addSubview(cardView)
        
        self.view = view
    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
