http_code(){
    HTTP_RESPONSE=$(curl -s -o /dev/null -w "%{http_code}" ${SERVER_ADDRESS}:${SERVER_PORT}/${ENDPOINT})
    echo "${HTTP_RESPONSE}"
}
