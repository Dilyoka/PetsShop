

import UIKit

class TableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var table: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pets_list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let list = pets_list[indexPath.row]
        
        let tableViewCell = tableView.dequeueReusableCell(withIdentifier: "table_cell") as! TableViewCell
        
        tableViewCell.petName.text = list.pet_name
    
        tableViewCell.petImage.image = UIImage(named: list.pet_photo)
        
         tableViewCell.petImage.layer.cornerRadius = 20
        
        
        
        return tableViewCell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        
        self.performSegue(withIdentifier: "segue", sender: self)
    }
    
    override func prepare (for segue: UIStoryboardSegue, sender: Any? ){
        
        if(segue.identifier == "segue") {
             let indexPath = self.table.indexPathForSelectedRow!
            
             let tableViewDeteil = segue.destination as! ViewController
            
             tableViewDeteil.pets = pets_list[indexPath.row]
            
            // print(123)
            // print(listCateg[indexPath.row].name)
            self.table.deselectRow(at: indexPath, animated: false )
            
        }
    }
    

}
