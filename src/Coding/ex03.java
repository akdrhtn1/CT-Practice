package Coding;



abstract class Job{
	String name;
	abstract public String getName(String val);
	
	public String getName() {
		return "Job name: " + name;
	}
}



class Test extends Job{
	public Test(String val) {
		name = val;
	}
	public String getName(String val) {
		return "Developer name :" + val;
	}
	public String getName(byte val[]) {
		return "Developer name :" + val;
	}
}


public class ex03 {

	public static void main(String[] args) {
		Job obj = new Test("4Depth");
		System.out.println(obj.getName());
	}

}

