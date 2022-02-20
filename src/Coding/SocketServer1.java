package testJava;

import java.io.*;
import java.net.*;
import java.util.*;

public class SocketServer1 {
	
	Map clients;
	
	public SocketServer1() {
		clients = new HashMap<>();
		Collections.synchronizedMap(clients);
	}
	
	public void start() {
		ServerSocket serverSocket = null;
		Socket socket = null;
		
		try {
			serverSocket = new ServerSocket(5555);
			System.out.println("서버 start");
			while(true) {
				socket = serverSocket.accept();
				System.out.println("[" + socket.getInetAddress() + " : " + socket.getPort() + "]" + "에서 접속했습니다.");
				ServerReceiver thread = new ServerReceiver(socket);
				
			}
		
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	void sendToAll(String msg) {
		Iterator it = clients.keySet().iterator();
		
		while(it.hasNext()) {
			try{
				DataOutputStream out = (DataOutputStream) clients.get(it.next());
				out.writeUTF(msg);
			}catch(IOException e) {}
		}
	}
	public static void main(String args[]) {
		new SocketServer1().start();
		
	}

	
	class ServerReceiver extends Thread{
		Socket socket;
		DataInputStream in;
		DataOutputStream out;
			
		ServerReceiver(Socket socket){
			this.socket = socket;
			try {
				in = new DataInputStream(socket.getInputStream());
				out = new DataOutputStream(socket.getOutputStream());
			}catch(IOException e) {}
		}
		
		public void run() {
			String name = "";
			try {
				name = in.readUTF();
				sendToAll("#"+name+"님이 들어오셨습니다.");
				
				clients.put(name,out);
				System.out.println("현재 접속자 수는 "+clients.size() +"입니다.");
				while(in != null) {
					sendToAll(in.readUTF());
				}
			}catch(IOException e) {
				
			}finally {
				sendToAll("#"+name+"님이 나가셨습니다.");
				clients.remove(name);
				System.out.println("[" + socket.getInetAddress() + " : " + socket.getPort() + "]" + "에서 종료했습니다.");
				System.out.println("현재 접속자 수는 "+clients.size() +"입니다.");

			}
		}
	}
}

