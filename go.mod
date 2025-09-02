module github.com/testcompany/myapp

go 1.19

require (
    // Standard packages that exist (should NOT be flagged)
    github.com/gorilla/mux v1.8.0
    github.com/gin-gonic/gin v1.9.1
    
    // Company-specific packages that likely don't exist (SHOULD be flagged for dependency confusion)
    github.com/testcompany/internal-auth v1.2.3
    github.com/testcompany/secret-config v2.1.0
    github.com/mycompany-internal/payment-gateway v0.5.2
    github.com/acme-corp/private-utils v1.0.0
    
    // Suspicious internal-looking packages (SHOULD be flagged)
    internal.company.com/core v1.1.1
    private-registry.acme.com/lib v2.0.0
    
    // More realistic internal package names
    github.com/stripe-internal/fraud-detection v1.5.0
    github.com/uber-internal/service-mesh v0.8.1
)

// Replace directives for local development (workspace detection should catch these)
replace (
    github.com/testcompany/internal-auth => ../internal-auth
    github.com/mycompany-internal/payment-gateway => ./libs/payment
    
    // This creates another path that scanner should follow
    github.com/testcompany/api-gateway => ./services/api
)
