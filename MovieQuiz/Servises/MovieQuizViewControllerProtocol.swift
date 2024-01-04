import Foundation

protocol MovieQuizViewControllerProtocol: AnyObject {
    func show(quiz step: QuizStepViewModel)
    
    func highlightImageBorder(isCorrectAnswer: Bool)
    
    func showAlertPresenter()
    
    func showNetworkError(message: String)
    
    func showLoadingIndicator()
    func hideLoadingIndicator()

    func changeButtonsState(isEnabled: Bool)
}
