package sort;

import ascending.*;
import descending.*;
import java.util.*;
public class T_Sort extends A_Sort implements D_Sort{
        @Override
        public int[] d_sort(int[] a){
                int n = a.length;
                int temp = 0;
                for(int i=0; i<n; i++){
                        for(int j=1; j<(n-i); j++){
                                if(a[j-1] < a[j]){
                                        temp = a[j-1];
                                        a[j-1] = a[j];
                                        a[j] = temp;
                                }
                        }
                }
                return a;
        }
        public static void main(String[] args){
                System.out.println("Enter number of elements");
                Scanner sc = new Scanner(System.in);
                int n = sc.nextInt();
                int[] a = new int[n];
                for(int i=0;i<n;i++)
                        a[i]=sc.nextInt();
                T_Sort m = new T_Sort();
                System.out.println("Ascending array: "+Arrays.toString(A_Sort.a_sort(a)));
                System.out.println("Descending array: "+Arrays.toString(m.d_sort(a)));
        }
}