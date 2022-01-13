//
//  ViewController.swift
//  OwnProject
//
//  Created by 김시훈 on 2022/01/10.
//

import UIKit

class ViewController: UIViewController,UIScrollViewDelegate {
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var pageControl: UIPageControl!
    var images = [#imageLiteral(resourceName: "우왁굳"), #imageLiteral(resourceName: "수탉")] //이미지 어레이
    var imageViews = [UIImageView]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.delegate = self
        addContentScrollView()
        setPageControl()
        // Do any additional setup after loading the view.
        
    }
    func addContentScrollView() {
        for i in 0..<images.count {
            let imageView = UIImageView()
            let xPos = self.view.frame.width * CGFloat(i)
            imageView.frame = CGRect(x: xPos, y: 0, width: scrollView.bounds.width, height: scrollView.bounds.height)
            imageView.image = images[i]
            scrollView.addSubview(imageView)
            scrollView.contentSize.width = imageView.frame.width * CGFloat(i+1)
        }
    }
    func setPageControl() {
        pageControl.numberOfPages = images.count //페이지수 = 이미지수
    }
   
    
    func setPageControlSelectedPage(currentPage: Int) {
        pageControl.currentPage = currentPage
    }
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let value = scrollView.contentOffset.x/scrollView.frame.size.width
        setPageControlSelectedPage(currentPage: Int(round(value)))
    }
    @IBAction func scondButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goToSecondView", sender: self)
    }
    
    @IBAction func thirdButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goToThirdView", sender: self)
    }
}


