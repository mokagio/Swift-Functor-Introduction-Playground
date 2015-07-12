public typealias ErrorDescripion = String

public enum Result<T> {
    case Success(T)
    case Failure(ErrorDescripion)

    public func map<U>(f: T -> U) -> Result<U> {
        switch self {
        case .Success(let x): return .Success(f(x))
        case .Failure(let description): return .Failure(description)
        }
    }

    public static func flatten<T>(result: Result<Result<T>>) -> Result<T> {
        switch result {
        case .Success(let x): return x
        case .Failure(let description): return .Failure(description)
        }
    }

    public func flatMap<U>(f: T -> Result<U>) -> Result<U> {
        return Result.flatten(self.map(f))
    }
}

