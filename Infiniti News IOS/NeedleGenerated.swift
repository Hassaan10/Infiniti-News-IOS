

import Foundation
import NeedleFoundation

// swiftlint:disable unused_declaration
private let needleDependenciesHash : String? = nil

// MARK: - Traversal Helpers

private func parent1(_ component: NeedleFoundation.Scope) -> NeedleFoundation.Scope {
    return component.parent
}

// MARK: - Providers

#if !NEEDLE_DYNAMIC

private class NewsDependency4ff359c6544de9edcfd8Provider: NewsDependency {
    var newsApi: NewsApi {
        return mainComponent.newsApi
    }
    var newsRepository: NewsRepository {
        return mainComponent.newsRepository
    }
    var allNewsUseCase: AllNewsUseCase {
        return mainComponent.allNewsUseCase
    }
    var headlinesUseCase: HeadlinesUseCase {
        return mainComponent.headlinesUseCase
    }
    var newsViewModel: ViewModel {
        return mainComponent.newsViewModel
    }
    private let mainComponent: MainComponent
    init(mainComponent: MainComponent) {
        self.mainComponent = mainComponent
    }
}
/// ^->MainComponent->NewsComponent
private func factory5e0c8fadf0fbc92f29760ae93e637f014511a119(_ component: NeedleFoundation.Scope) -> AnyObject {
    return NewsDependency4ff359c6544de9edcfd8Provider(mainComponent: parent1(component) as! MainComponent)
}

#else
extension MainComponent: NeedleFoundation.Registration {
    public func registerItems() {

        localTable["newsApi-NewsApi"] = { [unowned self] in self.newsApi as Any }
        localTable["newsRepository-NewsRepository"] = { [unowned self] in self.newsRepository as Any }
        localTable["allNewsUseCase-AllNewsUseCase"] = { [unowned self] in self.allNewsUseCase as Any }
        localTable["headlinesUseCase-HeadlinesUseCase"] = { [unowned self] in self.headlinesUseCase as Any }
        localTable["newsViewModel-ViewModel"] = { [unowned self] in self.newsViewModel as Any }
        localTable["newsView-MainScreen"] = { [unowned self] in self.newsView as Any }
        localTable["newsComponent-NewsComponent"] = { [unowned self] in self.newsComponent as Any }
    }
}
extension NewsComponent: NeedleFoundation.Registration {
    public func registerItems() {
        keyPathToName[\NewsDependency.newsApi] = "newsApi-NewsApi"
        keyPathToName[\NewsDependency.newsRepository] = "newsRepository-NewsRepository"
        keyPathToName[\NewsDependency.allNewsUseCase] = "allNewsUseCase-AllNewsUseCase"
        keyPathToName[\NewsDependency.headlinesUseCase] = "headlinesUseCase-HeadlinesUseCase"
        keyPathToName[\NewsDependency.newsViewModel] = "newsViewModel-ViewModel"
    }
}


#endif

private func factoryEmptyDependencyProvider(_ component: NeedleFoundation.Scope) -> AnyObject {
    return EmptyDependencyProvider(component: component)
}

// MARK: - Registration
private func registerProviderFactory(_ componentPath: String, _ factory: @escaping (NeedleFoundation.Scope) -> AnyObject) {
    __DependencyProviderRegistry.instance.registerDependencyProviderFactory(for: componentPath, factory)
}

#if !NEEDLE_DYNAMIC

@inline(never) private func register1() {
    registerProviderFactory("^->MainComponent", factoryEmptyDependencyProvider)
    registerProviderFactory("^->MainComponent->NewsComponent", factory5e0c8fadf0fbc92f29760ae93e637f014511a119)
}
#endif

public func registerProviderFactories() {
#if !NEEDLE_DYNAMIC
    register1()
#endif
}
