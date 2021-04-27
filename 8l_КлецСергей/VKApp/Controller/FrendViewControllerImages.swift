//
//  FrendViewControllerImages.swift
//  VKApp
//
//  Created by KKK on 26.04.2021.
//

import UIKit

class FrendViewControllerImages: UIViewController {

    @IBOutlet weak var frendImageOld: UIImageView!
    @IBOutlet weak var frendImage: UIImageView!
    
    
    @IBOutlet var someView: UIView!
   
    
    var indFrendCollectionImag: Int = 0
    var indImage: Int = 0
    
    private var propertyAnimator: UIViewPropertyAnimator?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.frendImageOld.image = nil
        self.frendImage.image = frendCollectionImag[indFrendCollectionImag].images[indImage]
        
                
        let leftSwipe = UISwipeGestureRecognizer(target:self, action: #selector(swipedLR(_:)))
        let rightSwipe = UISwipeGestureRecognizer(target:self, action: #selector(swipedLR(_:)))

        leftSwipe.direction = .left
        rightSwipe.direction = .right

        view.addGestureRecognizer(leftSwipe)
        view.addGestureRecognizer(rightSwipe)
        
    }

    
    @objc
    private func swipedLR(_ recognizer: UIGestureRecognizer) {
//        switch recognizer.state {
//            case .ended:
                if let swipe = recognizer as? UISwipeGestureRecognizer {
                    frendImageOld.image = frendImage.image

                    switch swipe.direction {
                        case .right:
                            indImage = indImage - 1 //< 0 ? 0 : indImage - 1
                            if !(indImage < 0) {
                                self.frendImage.image = frendCollectionImag[indFrendCollectionImag].images[indImage]
                                animationImageRight()
                            } else {
                                indImage = 0
                                animationImageRightEnd()
                            }
                        case .left:
                            let indMax = frendCollectionImag[indFrendCollectionImag].images.count - 1
                            indImage = indImage + 1 //> indMax ? indMax: indImage + 1
                            if !(indImage > indMax) {
                                self.frendImage.image = frendCollectionImag[indFrendCollectionImag].images[indImage]
                                animationImageLeft()
                            } else {
                                indImage = indMax
                                animationImageLeftEnd()
                            }
                      default:
                            break
                    }
                }
//            case .cancelled:
//                break
//            @unknown default:
//                break
//        }
    }
    


        
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    //MARK: Animate
    
    func animationImageRight() {
        self.frendImage.transform = CGAffineTransform(translationX: -self.someView.bounds.width, y: 0)
        UIView.animateKeyframes(withDuration: 0.6, delay: 0, options: .calculationModeLinear) {
            UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 0.5) {
                self.frendImage.transform = CGAffineTransform.identity
//                self.frendImageOld.transform = CGAffineTransform(translationX: self.someView.bounds.width, y: 0)
                self.frendImageOld.frame = CGRect(x: self.someView.bounds.width, y: self.someView.bounds.midY, width: 90, height: 90)
            }
        } completion: { _ in
            self.frendImageOld.image = nil
            self.frendImageOld.transform = CGAffineTransform.identity
        }
    }
    
    
    func animationImageLeft() {
        self.frendImage.transform = CGAffineTransform(translationX: self.someView.bounds.width, y: 0)
        UIView.animateKeyframes(withDuration: 0.6, delay: 0, options: .calculationModeLinear) {
            UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 0.5) {
                self.frendImage.transform = CGAffineTransform.identity
//                self.frendImageOld.transform = CGAffineTransform(translationX: -self.someView.bounds.width, y: 0)
                self.frendImageOld.frame = CGRect(x: -self.someView.bounds.width, y: self.someView.bounds.midY, width: 90, height: 90)
            }
        }completion: { _ in
            self.frendImageOld.image = nil
            self.frendImageOld.transform = CGAffineTransform.identity
        }
    }
    
    func animationImageRightEnd() {
        self.frendImageOld.image = nil
        UIView.animateKeyframes(withDuration: 0.3, delay: 0, options: .calculationModeLinear) {
            UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 0.5) {
                self.frendImage.transform = CGAffineTransform(translationX: self.someView.bounds.width / 4, y: 0)
            }
        } completion: { _ in
            UIView.animateKeyframes(withDuration: 0.3, delay: 0, options: .calculationModeLinear) {
               UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 0.5) {
                self.frendImage.transform = CGAffineTransform.identity
               }
            }
        }
    }
    
    func animationImageLeftEnd() {
        self.frendImageOld.image = nil
        UIView.animateKeyframes(withDuration: 0.3, delay: 0, options: .calculationModeLinear) {
            UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 0.5) {
                self.frendImage.transform = CGAffineTransform(translationX: -self.someView.bounds.width / 4, y: 0)
            }
        } completion: { _ in
            UIView.animateKeyframes(withDuration: 0.3, delay: 0, options: .calculationModeLinear) {
               UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 0.5) {
                self.frendImage.transform = CGAffineTransform.identity
               }
            }
        }
    }

    
}
