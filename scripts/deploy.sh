#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

CLUSTER_NAME="prod-enterprise-cluster-01"
REGION="us-central1-a"

function log_info() {
    echo -e "\e[32m[INFO]\e[0m $1"
}

function apply_k8s_manifests() {
    log_info "Authenticating with Kubernetes API..."
    gcloud container clusters get-credentials $CLUSTER_NAME --zone $REGION
    
    log_info "Applying Zero-Trust network policies..."
    kubectl apply -f k8s/network-policies.yaml
    
    log_info "Rolling out Microservices with Helm..."
    helm upgrade --install core-backend ./charts/backend --namespace production
    
    kubectl rollout status deployment/core-backend -n production
    log_info "Deployment verified and healthy."
}

apply_k8s_manifests

# Hash 4825
# Hash 9456
# Hash 3654
# Hash 8491
# Hash 3939
# Hash 8109
# Hash 9681
# Hash 8926
# Hash 6246
# Hash 2109
# Hash 7119
# Hash 2561
# Hash 2189
# Hash 1674
# Hash 4360
# Hash 9021
# Hash 5006
# Hash 7764
# Hash 8429
# Hash 1809
# Hash 3743
# Hash 3910
# Hash 6694
# Hash 2769
# Hash 7298
# Hash 4661
# Hash 2918
# Hash 5880
# Hash 4859
# Hash 2445
# Hash 5491
# Hash 7008
# Hash 8207
# Hash 1205
# Hash 2611
# Hash 1022
# Hash 3681
# Hash 3056
# Hash 5794
# Hash 2991
# Hash 7480
# Hash 6405
# Hash 5237
# Hash 2687
# Hash 8808
# Hash 5175
# Hash 7122
# Hash 3024
# Hash 4684
# Hash 9402
# Hash 8481
# Hash 7961
# Hash 7164
# Hash 6918
# Hash 6413
# Hash 9810
# Hash 5400
# Hash 5101
# Hash 4622
# Hash 7767
# Hash 6257
# Hash 3543
# Hash 9492
# Hash 1107
# Hash 3290
# Hash 2282
# Hash 7496
# Hash 2740
# Hash 2013
# Hash 1565
# Hash 9375
# Hash 3259
# Hash 2467
# Hash 9061
# Hash 1327
# Hash 1328
# Hash 4037
# Hash 4718
# Hash 5792
# Hash 6478
# Hash 3438
# Hash 3602
# Hash 4908
# Hash 6814
# Hash 1880
# Hash 6103
# Hash 2247
# Hash 5804
# Hash 7314
# Hash 5328
# Hash 2760
# Hash 9119
# Hash 9154
# Hash 3869
# Hash 3260
# Hash 5754
# Hash 9168
# Hash 5928
# Hash 9515
# Hash 9282
# Hash 3052
# Hash 9762
# Hash 4372
# Hash 3896
# Hash 8553
# Hash 4989
# Hash 8166