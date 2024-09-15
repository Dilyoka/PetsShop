
import UIKit
import FirebaseAuth

class RegViewController: UIViewController {
    
    
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func signUp(_ sender: Any) {
        
        let l = email.text!
        let p = password.text!
        
        Auth.auth().createUser(withEmail: "\(email.text!)", password: "\(password.text!)")
        {
            authResult, error in
            if let error = error {
                
                let alert = UIAlertController(title: "warning" , message: error.localizedDescription , preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK", style: .default))
                self.present(alert,animated: false, completion: nil)
                print ( error.localizedDescription)
                return
            }
            if let authResult = authResult {
                
                user.email = l
                user.password = p
                user.have_not_acc = false
                
                if let newvc = self.storyboard?.instantiateViewController(withIdentifier: "data") as? DataViewController{
                    
                    newvc.modalPresentationStyle = .fullScreen
                    self.present(newvc,animated: false, completion: nil)
                    // print (authResult.user.email!)
                    // print(Auth.auth().currentUser!.uid)
                    return
                }
            }
        }
       
    }
}
    
    
    


