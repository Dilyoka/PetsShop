
import UIKit

class CatsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    @IBOutlet weak var table: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cats_list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let list = cats_list[indexPath.row]
        
        let tableViewCell = tableView.dequeueReusableCell(withIdentifier: "table_cell") as! CatsTableViewCell
        
        tableViewCell.cats_name.text = list.pet_name
        
       tableViewCell.cats_img.image = UIImage(named: list.pet_photo)
        
        tableViewCell.cats_img.layer.cornerRadius = 20
        
        return tableViewCell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        
        self.performSegue(withIdentifier: "segue", sender: self)
    }
    
    override func prepare (for segue: UIStoryboardSegue, sender: Any? ){
        
        if(segue.identifier == "segue") {
            let indexPath = self.table.indexPathForSelectedRow!
            
            let tableViewDeteil = segue.destination as! DetailCatsViewController
            
            tableViewDeteil.pets = cats_list[indexPath.row]
            
            self.table.deselectRow(at: indexPath, animated: false )
            
        }
        
    }
}
    
    

