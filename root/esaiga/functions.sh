WORKSPACE=$HOME/workspace/


hf() {
    readonly labels=$1
    readonly command=$2
    if [ -z "$labels" ]; then
        echo "Missing chart labels key=value"
        return
    fi
    if [ -z "$command" ]; then
        echo "missing command diff|sync"
        return
    fi

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

hfd(){
    hf $@ diff
}

hfs(){
    hf $@ sync
}

hfe(){
    hf $@ destroy
}
