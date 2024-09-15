
import UIKit

class DetailCatsViewController: UIViewController {
    var pets : Pets!
    
    @IBOutlet weak var name_pet: UILabel!
    @IBOutlet weak var img_pet: UIImageView!
    @IBOutlet weak var description_pet: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        name_pet.text = pets.pet_name
        img_pet.image = UIImage(named: pets.pet_photo)
        description_pet.text = pets.pet_description
        
        img_pet.layer.cornerRadius = 50
    }
    
    
    @IBAction func add_func(_ sender: Any) {
        let alert = UIAlertController(title: "Message for you", message: "Are you sure you want to add to cart ????", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "No", style: .cancel))
        alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: {action in
            basket_list.append(self.pets)
                }))
        self.present(alert, animated: false,completion: nil)
        
        
        
    }
    
    
    
    
    
}
