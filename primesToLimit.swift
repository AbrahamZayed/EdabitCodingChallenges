

func Sieve_of_Eratosthenes(_ n: Int) -> [Int] {
    var isPrime = Array(repeating: true, count: n+1)
    var primes: [Int] = []
    
    for p in 2...n {
        if isPrime[p] {
            primes.append(p)
            var multiple = p * p
            while multiple <= n {
                isPrime[multiple] = false
                multiple += p
            }
        }
    }
    
    return primes
}
