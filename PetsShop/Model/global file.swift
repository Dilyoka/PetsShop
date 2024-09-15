
import Foundation

class User {
    
    var email : String
    var password : String
    var have_not_acc : Bool
    
    init(email: String, password : String, have_not_acc : Bool) {
        self.email = email
        self.password = password
        self.have_not_acc = have_not_acc
    }
}

var user = User(email: "", password: "", have_not_acc: true)

var not_data = true

class Info {
    var name : String
    var phone_number : String
    var address : String
   
    init(name: String, phone_number: String, address: String) {
        self.name = name
        self.phone_number = phone_number
        self.address = address
       
    }
}
// var user_info = 
var list_info : [Info] = []

class Pets {
    
    var pet_name : String
    var pet_photo : String!
    var pet_description : String
    
    init(pet_name: String, pet_photo: String, pet_description: String) {
        self.pet_name = pet_name
        self.pet_photo = pet_photo
        self.pet_description = pet_description
    }
}
var dog_1 = Pets(pet_name: "German Shepherd",
                 pet_photo: "dog_1.png",
                 pet_description: "Country of Origin Germany Breed type Service dog Weight of an adult dog 23-33 kg (females), 33-40 kg (males) Height (height at withers) 55-60 cm (females), 60-65 cm (males) \n How long live 9-13 years  Length of hair Long-haired ,Price $800-$4000 , ICF Classification Group: 1. \n Shepherds and Sheepdogs, other than Swiss Sheepdogs, Section: 1. sheepdogs ,Number: 166, Year: 1955, Other classifications CW Group: Pastoral, ACS Group: Herding")
var dog_2 = Pets(pet_name: "Pug",
                 pet_photo: "pug.png",
                 pet_description: "Pugs are an ornamental breed and belong to the group of companion dogs. Dogs with a balanced and calm character are suitable for life in the city, are loyal to their owners and get along well with children. Pugs do not require much care, so they are recommended for owners with no experience in keeping dogs. \n Pug Appearance \n The key characteristics of the Pug's appearance are: stocky, accentuated square, compact shape. Developed musculature is important not to be confused with overweight. \n Admissible height of male dog: 30-35 cm, weight: 6-10 kg, \n Acceptable height of female: 25-30 cm, weight 6-8 kg. \n Pug colors: silver, apricot, beige, black.")
var dog_3 = Pets(pet_name: "Beagle",
                 pet_photo: "beagle.png",
                 pet_description: "Country of origin Great Britain \n The time when the breed appeared Mid-nineteenth century \n Weight of an adult dog - 9-11 kg (females), 10-12 kg (males) \n Height (height at withers) 33-38 cm (females), 36-41 cm (males) \n How long live 12-15 years \n Length of wool Short \n Price $400-$1000")
                 
                 
                // Beagle belongs to the medium sized dog breeds, bred for hunting. According to the FCI classification, the breed belongs to the small size hound group. The dog of this breed is well suited for keeping in an apartment, very sociable and friendly. Beagle likes to run and is always energetic, so it can be a great companion for walks in the fresh air with the owner. инфо про бигля

var dog_4 = Pets(pet_name: "Akita-inu",
                 pet_photo: "akita.png",
                 pet_description: "Name of the breed Akita-inu \n Country of Origin Japan \n Breed origin time 1964 \n Type of breed Companion dog \n Weight of an adult dog : 32-45 kg (females), 40-45 kg (males) \n Height (height at withers) : 58-64 cm (females), 64-70 cm (males) \n How long live: 10-12 years \n Popular nicknames : Aki, Haru, Akira, Hideo, Katsu")
                 
var pets_list : [Pets] = [dog_1, dog_2, dog_3, dog_4]


var cat_1 = Pets(pet_name: "American Shorthair, Domestic Shorthair",
                 pet_photo: "cat_1.png",
                 pet_description: "Breed Info \n Country of origin USA \n Lifespan 15-17 years \n Size medium-large \n Weight Cats: 5-7 kg, Cats: 2.5-5.5 kg \n Hair type short-haired \n Color any colors and patterns \n Outdoor / indoor lifestyle \n Popular group, shorthair, for children \n Price $600-$1200")

var cat_2 = Pets(pet_name: "British Shorthair, Highlander, Highland Straight, Britannica",
                 pet_photo: "cat_2.png",
                 pet_description: "Breed Info \n Country of origin Great Britain \n Lifespan 12-17 years \n Size medium-large \n Weight Cats: 6-9 kg, Cats: 4-6 kg \n Hair type short-haired \n Color any colors \n Lifestyle: outdoors / indoors \n Popular group, shorthair, for children \n Price $1,500-$2,000")

var cat_3 = Pets(pet_name: "European Shorthair, Celtic Shorthair",
                 pet_photo: "cat_3.png",
                 pet_description: "Breed Info \n Country of Origin : Sweden \n Longevity : 15-20 years \n Size: medium-large \n Body weight Cats: 6-8 kg, Cats: 4-6 kg \n Hair type : short-haired \n Color: any colors and patterns \n Lifestyle : outside / indoors \n Group : short-haired, for children \n Price : 600 - 1200 $")
var cat_4 = Pets(pet_name: "Scottish Fold, Scot Fold",
                 pet_photo: "cat_4.png",
                 pet_description: "Breed Info \n Country of Origin : Scotland \n Longevity : 11-14 years \n Size : medium \n Weight Cats: 5-6 kg, Cats: 3-5 kg \n Hair Type : short-haired \n Color : any colors and patterns \n Lifestyle : outdoor / indoor \n Group : popular, shorthair, for children \n Price : 1000 - 1500 $")

var cats_list : [Pets] = [cat_1, cat_2, cat_3, cat_4]

var basket_list : [Pets] = []
