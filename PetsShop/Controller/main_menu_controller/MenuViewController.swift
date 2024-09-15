
import UIKit

class MenuViewController: UIViewController {
    
    @IBOutlet weak var lbl: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func btn(_ sender: Any) {
        
        let i = URL(string: "https://catfact.ninja/fact")
        
        guard let url = i else { return }
        let d = URLSession.shared.dataTask(with: url) {(data, response, error) in
            if error == nil {
                if let data = data {
                    DispatchQueue.main.async {
                        do {
                            
                            //let o = String(data: data, encoding: .ascii)
                            
                            if let jsonResult = try JSONSerialization.jsonObject(with: data, options: []) as? NSDictionary{
                                
                                self.lbl.text! = jsonResult["fact"] as! String
                            }} catch let error as NSError {
                            print(error.localizedDescription)
                        }}}}}
        d.resume()
    }
    
    @IBAction func fav_button(_ sender: Any) {
        
        let alert = UIAlertController(title: "Message", message: "\n\n\n\n\n\n\n\n\n\n Soon with a new update ))) \n Please wait for Pets Shop 2.0", preferredStyle: .alert)
        var imageView = UIImageView(frame: CGRect(x: 67, y: 50, width: 140, height: 140))
        
        imageView.image = UIImage(named: "image_1")
        
    
        imageView.layer.cornerRadius = 20
        
        alert.view.addSubview(imageView)
        alert.addAction(UIAlertAction(title: "Ok", style: .default))
        self.present(alert, animated: true, completion: nil)
    
    }
    
    @IBAction func store_button(_ sender: Any) {
        let alert = UIAlertController(title: "Message", message: "\n\n\n\n\n\n\n\n\n\n Soon with a new update ))) \n Please wait for Pets Shop 2.0", preferredStyle: .alert)
        var imageView = UIImageView(frame: CGRect(x: 67, y: 50, width: 140, height: 140))
        
        imageView.image = UIImage(named: "image_2")
        
        imageView.layer.cornerRadius = 20
        
        alert.view.addSubview(imageView)
        alert.addAction(UIAlertAction(title: "Ok", style: .default))
        self.present(alert, animated: true, completion: nil)
    
    }
    
    @IBAction func rodents_button(_ sender: Any) {
        let alert = UIAlertController(title: "Message for you", message: "this product is not available yet (((", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default))
        self.present(alert, animated: false,completion: nil)
        
    }
    
    @IBAction func amphibians_button(_ sender: Any) {
        let alert = UIAlertController(title: "Message for you", message: "this product is not available yet (((", preferredStyle: .alert)

        alert.addAction(UIAlertAction(title: "Ok", style: .default))
        self.present(alert, animated: false,completion: nil)
    }
    
}
