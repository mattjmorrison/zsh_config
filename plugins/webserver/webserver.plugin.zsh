#-------------------------------------------------------------------------------
#  cd into a directory you want to share and then
#  type webshare. You will be able to connect to that directory
#  with other machines on the local net work with IP:8000
#  the function will display the current machines ip address
#-------------------------------------------------------------------------------
function webshare() {
    local_ip=`hostname -I | cut -d " " -f 1`
    echo "connect to $local_ip:8000"
        python -m SimpleHTTPServer > /dev/null 2>&1
}
