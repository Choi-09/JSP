package common;

import java.util.Arrays;

public class NumberOfCases {
	static int [] arr = new int[] {1,2,3,4,5,6,7,8,9,10};
	static int[] result = new int[3];

	public static void main(String[] args) {
	cases(0,0,0);
	
	
//	int g1 = 2;
//	int g2 = 3;
//	int g3 = 5;
//	
//	for(int i = 1; & i<=10; i++) {
//		for(int j =1; j <=10; j++) {
//			for(int k = 1; k<=10; k++) {
//			if((i*g1 + j*g2 + k*g3))
//			}
//		}
//	}
	}

	private static void cases(int cnt1, int cnt2, int cnt3) {
		int sum = 10;
		for(int i = 0; i < arr.length; i++) {
			for (int j = 0; j < arr.length; j++) {
				for (int k = 0; k < arr.length; k++) {
					if((i*cnt1 + j*cnt2 + k*cnt3) == sum) {
						result[sum] =arr[i];
						
					}
				}
			}
		}
		System.out.println(Arrays.toString(result));
		
	}

}
