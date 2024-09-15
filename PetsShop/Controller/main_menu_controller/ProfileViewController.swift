
import UIKit

class ProfileViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    
    @IBOutlet weak var user_name: UILabel!
    @IBOutlet weak var email: UILabel!
    @IBOutlet weak var user_phone: UILabel!
    @IBOutlet weak var user_address: UILabel!
    
    @IBOutlet weak var myImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if not_data == true && user.have_not_acc == true {
            
            user_name.text = "..."
            user_phone.text = "..."
            user_address.text = "..."
            email.text = "..."
        }
        else {
            user_name.text = list_info[0].name
            user_phone.text = list_info[0].phone_number
            user_address.text = list_info[0].address
            email.text = user.email
        }
    }
    
    
    @IBAction func shooseImage(_ sender: Any) {
        let imagePickerController = UIImagePickerController()
        imagePickerController.delegate = self
        present(imagePickerController, animated: true, completion: nil)
    }
    
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let pickedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            myImageView.image = pickedImage
        }
        dismiss(animated: true, completion: nil)
    }

   
}
