import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!


    private var numbers: [NumberModel] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
       

    
        for number in 1...100 {
            let numberModel = NumberModel(number: number)
            numbers.append(numberModel)
        }
        

        
       
    }
    private func setupUI(){
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = .cyan
        let cellNib = UINib(nibName: "NumberTableViewCell", bundle: nil)
        tableView.register(cellNib, forCellReuseIdentifier: "NumberCell")
    }

    // Number of rows in the table view
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numbers.count
    }

    // Configure and return a cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NumberCell", for: indexPath) as! NumberTableViewCell

     cell.configure(with: numbers[indexPath.row])

        return cell
    }
}

