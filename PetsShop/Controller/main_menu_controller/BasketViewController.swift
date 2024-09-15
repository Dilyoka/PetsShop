
import UIKit

class BasketViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var pets : Pets!
    var index : Int!

    @IBOutlet weak var table: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
             // table.register(UITableViewCell.self, forCellReuseIdentifier: "table_cell")
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return basket_list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let list = basket_list[indexPath.row]
        
        let tableViewCell = tableView.dequeueReusableCell(withIdentifier: "table_cell") as! BasketTableViewCell
        
        tableViewCell.name.text = list.pet_name
        
       tableViewCell.imag.image = UIImage(named: list.pet_photo)
        
        tableViewCell.imag.layer.cornerRadius = 20
        
        
        return tableViewCell
    }
    
    @IBAction func buy(_ sender: Any) {
        
       
       
    
    }
    
    
    @IBAction func remove(_ sender: UIButton) {
        
     
    
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let alert = UIAlertController(title: "Message", message: "delete?", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Buy", style: .cancel, handler: {_ in
            if user.have_not_acc == true{
                let alert = UIAlertController(title: "Message", message: "In order to buy the product must be registered!!!", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "Ok", style: .default))
                self.present(alert, animated: false,completion: nil)
            }
            else {
                let alert = UIAlertController(title: "Message", message: "Are you sure you want to buy ???", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "No", style: .cancel))
                alert.addAction(UIAlertAction(title: "Yes", style: .default))
                self.present(alert, animated: false,completion: nil)
            }
        }))
        alert.addAction(UIAlertAction(title: "Delete", style: .default, handler: {action in
            basket_list.remove(at: indexPath.row)
                self.table.reloadData()
            }))
        self.present(alert, animated: false,completion: nil)
    }

    
}
