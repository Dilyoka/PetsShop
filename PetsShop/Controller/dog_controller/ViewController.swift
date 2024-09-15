

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var name_pet: UILabel!
    @IBOutlet weak var img_pet: UIImageView!
    @IBOutlet weak var description_pet: UILabel!
    
    var pets : Pets!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        name_pet.text = pets.pet_name
        img_pet.image = UIImage(named: pets.pet_photo)
        description_pet.text = pets.pet_description
        
        img_pet.layer.cornerRadius = 50
    }
    
    
    
    @IBAction func add(_ sender: Any) {
        
        let alert = UIAlertController(title: "Message", message: "\n\n\n\n\n\n\n\n\n\n Are you sure you want to add to cart ???", preferredStyle: .alert)
        var imageView = UIImageView(frame: CGRect(x: 67, y: 50, width: 140, height: 140))
        // https://dog.ceo/api/breeds/image/random API dog
    
        // todo get image data from url
        
        // imageView.image = UIImage(data: pets.pet_photo)
        
        let i = URL(string: "https://dog.ceo/api/breeds/image/random")
        
        guard let url = i else { return }
        let d = URLSession.shared.dataTask(with: url) {(data, response, error) in
            if error == nil {
                if let data = data {
                    DispatchQueue.main.async {
                        do {
                        
                            if let jsonResult = try JSONSerialization.jsonObject(with: data, options: []) as? NSDictionary{
                                
                                let url = URL(string: jsonResult["message"] as! String)
                                let data = try? Data(contentsOf: url!)
                                
                                imageView.image = UIImage(data: data!)
                                
                                
                            }} catch let error as NSError {
                            print(error.localizedDescription)
                        }}}}}
        d.resume()
        
        imageView.layer.cornerRadius = 20
        
        alert.view.addSubview(imageView)
        alert.addAction(UIAlertAction(title: "No", style: .cancel))
        alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: {action in  basket_list.append(self.pets)
             }))
        self.present(alert, animated: true, completion: nil)
    
       
    }
    
}
