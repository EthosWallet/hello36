module github.com/testcompany/shared-utils

go 1.19

require (
    // Standard libraries (should NOT be flagged)
    github.com/sirupsen/logrus v1.9.0
    github.com/spf13/viper v1.15.0
    
    // SHARED UTILS DEPENDENCY CONFUSION - should be flagged
    github.com/testcompany/crypto-utils v1.2.0
    github.com/mycompany-shared/database-helpers v3.1.0
    github.com/acme-corp/validation-lib v0.8.1
    
    // More internal shared utilities
    github.com/company-utils/string-helpers v1.0.5
    github.com/internal-shared/math-utils v2.0.0
    
    // Domain-specific internal packages
    shared-internal.company.com/types v1.3.0
)

// No replace directives - this is a leaf module
