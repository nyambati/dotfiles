profiles=(
    pandacare-stg
    pandacare-prod
    contact-center-prd
    contact-center-stg
    log-dwh-prd
    log-dwh-stg
    log-prd
    log-prd-backup
    log-shared
    log-stg
    log-vendor-prd
    log-vendor-prd-backup
    log-vendor-stg
    pickers-prd
)


alias sso='for profile in ${profiles[@]}; do saml2aws --skip-prompt login --force -a $profile; done;'
