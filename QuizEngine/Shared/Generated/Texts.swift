// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable superfluous_disable_command file_length implicit_return

// MARK: - Strings

// swiftlint:disable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:disable nesting type_body_length type_name vertical_whitespace_opening_braces
internal enum Text {

  internal enum Alert {
    /// Отмена
    internal static let cancel = Text.tr("Localizable", "Alert.Cancel")
    /// Ошибка
    internal static let error = Text.tr("Localizable", "Alert.Error")
  }

  internal enum Common {
    /// Отмена
    internal static let cancel = Text.tr("Localizable", "Common.Cancel")
    /// Готово
    internal static let done = Text.tr("Localizable", "Common.Done")
    /// Заполните поля
    internal static let fillInTheFields = Text.tr("Localizable", "Common.FillInTheFields")
    /// Скрыть
    internal static let hide = Text.tr("Localizable", "Common.Hide")
    /// Далее
    internal static let next = Text.tr("Localizable", "Common.Next")
    /// Сохранить
    internal static let save = Text.tr("Localizable", "Common.Save")
  }

  internal enum Date {
    /// час назад
    internal static let hourAgo = Text.tr("Localizable", "Date.HourAgo")
    /// %d часа назад
    internal static func hoursAgo2to5(_ p1: Int) -> String {
      return Text.tr("Localizable", "Date.HoursAgo2to5", p1)
    }
    /// %d часов назад
    internal static func hoursAgoFrom5(_ p1: Int) -> String {
      return Text.tr("Localizable", "Date.HoursAgoFrom5", p1)
    }
    /// %d минут назад
    internal static func nMinutesAgo(_ p1: Int) -> String {
      return Text.tr("Localizable", "Date.NMinutesAgo", p1)
    }
    /// сейчас
    internal static let now = Text.tr("Localizable", "Date.Now")
    /// недавно
    internal static let recently = Text.tr("Localizable", "Date.Recently")
    /// завтра
    internal static let tomorrow = Text.tr("Localizable", "Date.Tomorrow")
    /// вчера
    internal static let yesterday = Text.tr("Localizable", "Date.Yesterday")
  }

  internal enum EditQuestion {
    /// Добавить вариант
    internal static let addOption = Text.tr("Localizable", "EditQuestion.AddOption")
    /// Варианты ответов
    internal static let optionsTitle = Text.tr("Localizable", "EditQuestion.OptionsTitle")
    /// Вопрос
    internal static let textPlaceholder = Text.tr("Localizable", "EditQuestion.TextPlaceholder")
    /// Вопрос
    internal static let title = Text.tr("Localizable", "EditQuestion.Title")
  }

  internal enum EditQuestionOption {
    /// Верный ответ
    internal static let isCorrect = Text.tr("Localizable", "EditQuestionOption.IsCorrect")
    /// Teкст
    internal static let textPlaceholder = Text.tr("Localizable", "EditQuestionOption.TextPlaceholder")
    /// Вариант ответа
    internal static let title = Text.tr("Localizable", "EditQuestionOption.Title")
  }

  internal enum EditQuiz {
    /// Добавить вопрос
    internal static let addQuestion = Text.tr("Localizable", "EditQuiz.AddQuestion")
    /// Новый тест
    internal static let createTitle = Text.tr("Localizable", "EditQuiz.CreateTitle")
    /// Описание
    internal static let descriptionPlaceholder = Text.tr("Localizable", "EditQuiz.DescriptionPlaceholder")
    /// Редактирование
    internal static let editTitle = Text.tr("Localizable", "EditQuiz.EditTitle")
    /// Публичный тест
    internal static let isPublic = Text.tr("Localizable", "EditQuiz.IsPublic")
    /// Название теста
    internal static let namePlaceholder = Text.tr("Localizable", "EditQuiz.NamePlaceholder")
    /// Вопросы
    internal static let questionsHeader = Text.tr("Localizable", "EditQuiz.QuestionsHeader")
    /// Создать
    internal static let tabBarTitle = Text.tr("Localizable", "EditQuiz.TabBarTitle")
  }

  internal enum EntitySearch {
    /// Текст
    internal static let queryTextFieldPlaceholder = Text.tr("Localizable", "EntitySearch.QueryTextFieldPlaceholder")
    /// Поиск
    internal static let search = Text.tr("Localizable", "EntitySearch.Search")
    /// Запроос
    internal static let title = Text.tr("Localizable", "EntitySearch.Title")
  }

  internal enum Errors {
    /// Доступ запрещен
    internal static let authError = Text.tr("Localizable", "Errors.AuthError")
    /// Заполните поле
    internal static let fillInTheField = Text.tr("Localizable", "Errors.FillInTheField")
    /// Ошибка сети
    internal static let networkError = Text.tr("Localizable", "Errors.NetworkError")
    /// Открыть настройки
    internal static let openSettingsAction = Text.tr("Localizable", "Errors.OpenSettingsAction")
    /// Ошибка сервера
    internal static let remoteError = Text.tr("Localizable", "Errors.RemoteError")
    /// Ошибка запроса
    internal static let requestError = Text.tr("Localizable", "Errors.RequestError")
    /// Перезагрузить
    internal static let tryAgain = Text.tr("Localizable", "Errors.TryAgain")
    /// Неизвестная ошибка
    internal static let unknownError = Text.tr("Localizable", "Errors.UnknownError")
    /// Разрешите доступ к Вашей геопозиции в настройках устройства
    internal static let userLocationDenied = Text.tr("Localizable", "Errors.UserLocationDenied")
  }

  internal enum History {
    /// Результат: %d%%
    internal static func itemResult(_ p1: Int) -> String {
      return Text.tr("Localizable", "History.ItemResult", p1)
    }
    /// Ни одного теста еще не пройдено
    internal static let noContent = Text.tr("Localizable", "History.NoContent")
    /// История
    internal static let title = Text.tr("Localizable", "History.Title")
  }

  internal enum Main {
    /// Нет доступних публичных тестов
    internal static let noContent = Text.tr("Localizable", "Main.NoContent")
    /// Главная
    internal static let title = Text.tr("Localizable", "Main.Title")
  }

  internal enum Methods {
    /// Поиск в графе знаний по карте
    internal static let byMap = Text.tr("Localizable", "Methods.byMap")
    /// По случайному ресурсу
    internal static let byRandomEntity = Text.tr("Localizable", "Methods.byRandomEntity")
    /// Поиск в графе знаний по тексту
    internal static let bySearch = Text.tr("Localizable", "Methods.bySearch")
    /// Вручную
    internal static let manually = Text.tr("Localizable", "Methods.Manually")
  }

  internal enum Onboarding {
    /// Продолжить с Email
    internal static let continueWithEmail = Text.tr("Localizable", "Onboarding.ContinueWithEmail")
    /// Создание и прохождения тестов или викторин.
    internal static let description = Text.tr("Localizable", "Onboarding.Description")
    /// Регистрация
    internal static let registration = Text.tr("Localizable", "Onboarding.Registration")
  }

  internal enum ParticipantResults {
    /// Верных ответов: %@
    internal static func correctAnswersCount(_ p1: Any) -> String {
      return Text.tr("Localizable", "ParticipantResults.CorrectAnswersCount", String(describing: p1))
    }
    /// Прохождения теста
    internal static let passingsHeader = Text.tr("Localizable", "ParticipantResults.PassingsHeader")
    /// Коэффициент корреляции Пирсона: %.2f
    internal static func pirsonValue(_ p1: Float) -> String {
      return Text.tr("Localizable", "ParticipantResults.PirsonValue", p1)
    }
    /// Надежность теста по Спирмену Брауну: %.2f
    internal static func spirmenBrownValue(_ p1: Float) -> String {
      return Text.tr("Localizable", "ParticipantResults.SpirmenBrownValue", p1)
    }
    /// Участник
    internal static let title = Text.tr("Localizable", "ParticipantResults.Title")
  }

  internal enum Profile {
    /// Редактировать
    internal static let edit = Text.tr("Localizable", "Profile.Edit")
    /// Выйти
    internal static let logOut = Text.tr("Localizable", "Profile.LogOut")
    /// Создано тестов
    internal static let quizCount = Text.tr("Localizable", "Profile.QuizCount")
    /// Пройдено тестов
    internal static let quizPassed = Text.tr("Localizable", "Profile.QuizPassed")
    /// Дата регистрации
    internal static let registrationDate = Text.tr("Localizable", "Profile.RegistrationDate")
    /// Профиль
    internal static let title = Text.tr("Localizable", "Profile.Title")
  }

  internal enum Question {
    /// Кол-во вариантов: %d
    internal static func optionsCount(_ p1: Int) -> String {
      return Text.tr("Localizable", "Question.OptionsCount", p1)
    }
    /// Пропустить
    internal static let skip = Text.tr("Localizable", "Question.Skip")
    /// Вопрос
    internal static let title = Text.tr("Localizable", "Question.Title")
  }

  internal enum QuestionOption {
    /// Верный ответ
    internal static let correct = Text.tr("Localizable", "QuestionOption.Correct")
    /// Не верный ответ
    internal static let notCorrect = Text.tr("Localizable", "QuestionOption.NotCorrect")
  }

  internal enum Quiz {
    /// Автор
    internal static let author = Text.tr("Localizable", "Quiz.Author")
    /// Редактировать
    internal static let edit = Text.tr("Localizable", "Quiz.Edit")
    /// Редактирование недоступно т. к. имеются участники
    internal static let editingNotAvaliable = Text.tr("Localizable", "Quiz.EditingNotAvaliable")
    /// Нет участников
    internal static let noParticipants = Text.tr("Localizable", "Quiz.NoParticipants")
    /// %@, кол-во попыток: %d
    internal static func participantDescription(_ p1: Any, _ p2: Int) -> String {
      return Text.tr("Localizable", "Quiz.ParticipantDescription", String(describing: p1), p2)
    }
    /// Участники
    internal static let participants = Text.tr("Localizable", "Quiz.Participants")
    /// Кол-во вопросов: %d
    internal static func questionsCount(_ p1: Int) -> String {
      return Text.tr("Localizable", "Quiz.QuestionsCount", p1)
    }
    /// Начать
    internal static let start = Text.tr("Localizable", "Quiz.Start")
    /// Тест
    internal static let title = Text.tr("Localizable", "Quiz.Title")
  }

  internal enum QuizList {
    /// Ни одного теста не создано
    internal static let noContent = Text.tr("Localizable", "QuizList.NoContent")
    /// Мои тесты
    internal static let title = Text.tr("Localizable", "QuizList.Title")
  }

  internal enum QuizPassing {
    /// Отвечено: %d
    internal static func answeredCount(_ p1: Int) -> String {
      return Text.tr("Localizable", "QuizPassing.AnsweredCount", p1)
    }
    /// Завершить
    internal static let finish = Text.tr("Localizable", "QuizPassing.Finish")
    /// Ответ дан
    internal static let hasAnswer = Text.tr("Localizable", "QuizPassing.HasAnswer")
    /// Ответ не дан
    internal static let hasNoAnswer = Text.tr("Localizable", "QuizPassing.HasNoAnswer")
    /// Вопросы
    internal static let questions = Text.tr("Localizable", "QuizPassing.Questions")
    /// Выполнение
    internal static let title = Text.tr("Localizable", "QuizPassing.Title")
  }

  internal enum QuizResult {
    /// Верно
    internal static let answerCorrect = Text.tr("Localizable", "QuizResult.AnswerCorrect")
    /// Верный ответ: %@
    internal static func answerIncorrect(_ p1: Any) -> String {
      return Text.tr("Localizable", "QuizResult.AnswerIncorrect", String(describing: p1))
    }
    /// Ответ не дан
    internal static let answerIsNotGiven = Text.tr("Localizable", "QuizResult.AnswerIsNotGiven")
    /// Данные ответы
    internal static let answersHeader = Text.tr("Localizable", "QuizResult.AnswersHeader")
    /// Верных ответов
    internal static let correctCount = Text.tr("Localizable", "QuizResult.CorrectCount")
    /// Дата прохождения
    internal static let date = Text.tr("Localizable", "QuizResult.Date")
    /// Процент
    internal static let percent = Text.tr("Localizable", "QuizResult.Percent")
    /// Всего вопросов
    internal static let questionsCount = Text.tr("Localizable", "QuizResult.QuestionsCount")
    /// Результат
    internal static let title = Text.tr("Localizable", "QuizResult.Title")
  }

  internal enum SelectEntity {
    /// Ничего не найдено
    internal static let noContent = Text.tr("Localizable", "SelectEntity.NoContent")
    /// Выбор ресурса
    internal static let title = Text.tr("Localizable", "SelectEntity.Title")
  }

  internal enum SelectMethod {
    /// Выберите способ
    internal static let title = Text.tr("Localizable", "SelectMethod.Title")
  }

  internal enum SelectQuestion {
    /// Ничего не найдено
    internal static let noContent = Text.tr("Localizable", "SelectQuestion.NoContent")
    /// Укажите %@ %@
    internal static func questionText(_ p1: Any, _ p2: Any) -> String {
      return Text.tr("Localizable", "SelectQuestion.QuestionText", String(describing: p1), String(describing: p2))
    }
    /// Выбор вопроса
    internal static let title = Text.tr("Localizable", "SelectQuestion.Title")
  }

  internal enum SelectRegion {
    /// Поиск
    internal static let search = Text.tr("Localizable", "SelectRegion.Search")
    /// Выбор региона
    internal static let title = Text.tr("Localizable", "SelectRegion.Title")
  }

  internal enum SignIn {
    /// Email
    internal static let email = Text.tr("Localizable", "SignIn.Email")
    /// Пароль
    internal static let password = Text.tr("Localizable", "SignIn.Password")
    /// Восстановление пароля
    internal static let passwordRecovery = Text.tr("Localizable", "SignIn.PasswordRecovery")
    /// Регистрация
    internal static let registration = Text.tr("Localizable", "SignIn.Registration")
    /// Войти
    internal static let submit = Text.tr("Localizable", "SignIn.Submit")
    /// Вход
    internal static let title = Text.tr("Localizable", "SignIn.Title")
  }

  internal enum SignUp {
    /// Подтверждение пароля
    internal static let confirmPassword = Text.tr("Localizable", "SignUp.ConfirmPassword")
    /// Email
    internal static let email = Text.tr("Localizable", "SignUp.Email")
    /// ФИО
    internal static let fullName = Text.tr("Localizable", "SignUp.FullName")
    /// Пароль
    internal static let password = Text.tr("Localizable", "SignUp.Password")
    /// Пароли не совпадают
    internal static let passwordsNotMatch = Text.tr("Localizable", "SignUp.PasswordsNotMatch")
    /// Зарегистрироваться
    internal static let submit = Text.tr("Localizable", "SignUp.Submit")
    /// Регистрация
    internal static let title = Text.tr("Localizable", "SignUp.Title")
  }
}
// swiftlint:enable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:enable nesting type_body_length type_name vertical_whitespace_opening_braces

// MARK: - Implementation Details

extension Text {
  private static func tr(_ table: String, _ key: String, _ args: CVarArg...) -> String {
    let format = resourcesBundle.localizedString(forKey: key, value: nil, table: table)
    return String(format: format, locale: Locale.current, arguments: args)
  }
}
