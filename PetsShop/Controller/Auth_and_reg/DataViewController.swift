
import UIKit

class DataViewController: UIViewController {

    @IBOutlet weak var name: UITextField!
    
    @IBOutlet weak var phone: UITextField!
    
    @IBOutlet weak var address: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    @IBAction func click(_ sender: Any) {
        let n = name.text!
        let p = phone.text!
        let a = address.text!
        if n.isEmpty || p.isEmpty || a.isEmpty {
            let alert = UIAlertController(title:"Attention",message:"The input field must not be empty",preferredStyle: .alert)
            alert.addAction(UIAlertAction(title:"Ok",style: .default))
            present(alert, animated: false, completion: nil)
        }
        else {
            
            if let newvc = self.storyboard?.instantiateViewController(withIdentifier: "menu") as? MenuViewController{
                
                newvc.modalPresentationStyle = .fullScreen
                self.present(newvc,animated: false, completion: nil)
                
                var user_info = Info(name: "\(n)",phone_number: "\(p)", address:"\(a)")
                
                list_info.append(user_info)
            }
        }
    }
}
