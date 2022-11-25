//
//  ViewController.swift
//  AutoLayoutTableView
//
//  Created by Zeynep Özdemir Açıkgöz on 25.11.2022.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate, UITableViewDataSource{

    @IBOutlet weak var tableView: UITableView!
    
    var countries = [Country]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.delegate = self
        tableView.dataSource = self
        
        //making tableView look good
        
        tableView.separatorStyle = .none
        tableView.showsVerticalScrollIndicator = false
        
        
        countries.append(Country(name: "ABD", image: "Abd", details: "Amerika Birleşik Devletleri, Birleşik Devletler veya resmî olmayan ismiyle Amerika, orta Kuzey Amerika'da, Kanada ve Meksika arasında bulunan, elli eyalet ve bir federal bölgeden oluşan, federal anayasal cumhuriyet ile yönetilen bir ülkedir."))
        countries.append(Country(name: "India", image: "India", details: "Hindistan ya da resmî adıyla Hindistan Cumhuriyeti, Güney Asya'da bulunan bir ülkedir. Dünyanın en büyük yedinci coğrafi alanı ve en büyük ikinci nüfusuna sahip olan ülkenin millî marşı Jana Gana Mana'dır. Ülkede resmi dilleri İngilizce ve Hintçe oluşturur, ancak 22 adet tanınmış bölgesel dil de bulunur."))
        countries.append(Country(name: "Netherlands", image: "Netherlands", details: "Hollanda esas olarak Batı Avrupa'da ve kısmen Karayipler'de bulunan bir ülkedir. Hollanda Krallığı'nı meydana getiren dört ülkeden en büyüğüdür."))
        countries.append((Country(name: "Switzerland", image: "Switzerland", details: "İsviçre veya resmî adıyla İsviçre Konfederasyonu; Batı, Orta ve Güney Avrupa'nın kesişme noktasında bulunan bir ülke. Federal otoritelerin merkezi Bern ile birlikte 26 kantondan oluşan bir federal cumhuriyettir. Kuzey sınırında Almanya, batısında Fransa, güneyinde İtalya, doğusunda Avusturya ile Lihtenştayn yer alır.")))
        countries.append(Country(name: "Turkey", image: "Turkey", details: "Türkiye veya resmî adıyla Türkiye Cumhuriyeti, topraklarının büyük bölümü Anadolu'da, küçük bir bölümü ise Balkan Yarımadası'nın güneydoğu uzantısı olan Trakya'da yer alan bir ülkedir."))
        
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        //return 250
        return UITableView.automaticDimension
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countries.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CountryCell") as! TableViewCell
       
        
        let country = countries[indexPath.row]
        
        let character = countries[indexPath.row]
        let name = character.names
        let image = character.images
        let detail = character.details
        
        
        cell.countryLabel.text = name
        cell.countryImage.image = UIImage(named: image)
        cell.detailLabel.text = detail
        
        
        //name.font = name.font.withSize(self.view.frame.height * CGFloat(0.5))
        
        UIFont(name: name , size: self.view.frame.height * CGFloat(0.5))
        //cell.countryLabel.text = country
       // cell.countryImage.image = UIImage(named: country)
        
        //making tableViewCeel look good
        
        
        cell.view.layer.cornerRadius = cell.view.frame.height / 4
        cell.countryImage.layer.cornerRadius = cell.countryImage.frame.height / 2
        cell.countryLabel.layer.cornerRadius = cell.countryLabel.frame.height / 4
        cell.detailLabel.layer.cornerRadius = cell.detailLabel.frame.height / 2


        
        if indexPath.row % 2 == 0 {
            cell.contentView.backgroundColor = UIColor.darkGray.withAlphaComponent(0.5)
        }else{
            cell.contentView.backgroundColor = UIColor.lightGray.withAlphaComponent(0.5)

            
        }
        
        
        
        return cell
     }
}

