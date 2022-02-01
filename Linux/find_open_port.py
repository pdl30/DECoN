import socket

max_port = 63350
port = 63300


def next_free_port( port=port, max_port=max_port ):
    sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    while port <= max_port:
        try:
            sock.bind(('', port))
            sock.close()
            return port
        except:
            port += 1
    raise IOError('no free ports')

myport = next_free_port() 

print(myport)
