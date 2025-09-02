module github.com/testcompany/api-gateway

go 1.19

require (
    // Standard dependencies (should NOT be flagged)
    github.com/gorilla/mux v1.8.0
    github.com/prometheus/client_golang v1.14.0
    
    // NESTED PATH DEPENDENCY CONFUSION - these should be flagged
    github.com/testcompany/api-auth v1.5.0
    github.com/mycompany-api/rate-limiter v2.3.1
    github.com/acme-corp/api-security v0.9.2
    
    // More realistic internal API packages that likely don't exist
    github.com/stripe-api/internal-validation v1.1.0
    github.com/uber-api/service-discovery v0.7.3
    
    // Company-specific packages with API context
    api-internal.company.com/middleware v1.0.0
    private-api.acme.com/handlers v2.1.0
)

// Replace directives in nested module
replace (
    github.com/testcompany/shared-utils => ../../shared/utils
    github.com/testcompany/common-types => ../common
)
