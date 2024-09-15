
import UIKit

class DetailBirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func add_to_basket(_ sender: Any) {
        let alert = UIAlertController(title: "Message for you", message: "Are you sure you want to add to cart ????", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "No", style: .cancel))
        alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: {action in
            let bird = Pets(pet_name: "Wavy Parrots", pet_photo: "BIRD_1.png", pet_description: "...")
            basket_list.append(bird)
                }))
        self.present(alert, animated: false,completion: nil)
        
    }
    
    @IBAction func add_to_fav(_ sender: Any) {
        
        let alert = UIAlertController(title: "Message for you", message: "Soon with a new update ))) \n Please wait for Pets Shop 2.0", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default))
        self.present(alert, animated: false,completion: nil)
    }
    

}
