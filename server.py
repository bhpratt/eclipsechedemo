import socket

 

serverSocket = socket.socket(socket.AF_INET, socket.SOCK_STREAM);

 

serverSocket.bind(("127.0.0.1",9090));

serverSocket.listen();


# Accept connections

while(True):

    (clientConnected, clientAddress) = serverSocket.accept();

    print("Accepted a connection request from %s:%s"%(clientAddress[0], clientAddress[1]));

   

    dataFromClient = clientConnected.recv(1024)

    #print(dataFromClient.decode());

 

    # Send some data back to the client

    # clientConnected.send("Hello Client!".encode());

    clientsocket.send("test")