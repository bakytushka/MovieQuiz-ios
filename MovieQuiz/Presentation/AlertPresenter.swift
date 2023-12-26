import Foundation
import UIKit

struct AlertPresenter {
    public weak var present: UIViewController?
    func showResult(alertModel: AlertModel) {
        let alert = UIAlertController(title: alertModel.title,
                                      message: alertModel.message,
                                      preferredStyle: .alert)
        let action = UIAlertAction(title: alertModel.buttonText,
                                   style: .default) {_ in
            alertModel.completion()
        }
        alert.addAction(action)
        present?.present(alert, animated: true, completion: nil)
    }
}


