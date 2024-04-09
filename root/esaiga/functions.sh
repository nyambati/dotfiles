WORKSPACE=$HOME/workspace/

hf() {
    readonly labels=$1
    readonly command=$2
    [ -z "$labels" ] && echo "Missing chart labels key=value"; return
    [ -z "$command" ] && echo "missing command diff|sync"; return
    helmfile --file $WORKSPACE/hero/logistics-kubernetes/helmfiles/observability/helmfile.yaml --skip-deps -l $labels $command
}


ste() {
    readonly secret_id=$1
    SECRETS=$(aws secretsmanager get-secret-value --secret-id $secret_id | jq -r ".SecretString|fromjson|to_entries|map(\"\(.key|ascii_upcase)=\(.value|tostring|@json)\")|.[]")
    for secret in ${SECRETS[@]}; do
        export $secret
    done
}

sso() {
    open $SUDO_AWS_URL
}
