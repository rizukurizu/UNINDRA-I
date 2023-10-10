import java.util.Scanner;

public class Pertemuan_3 {
    public static void main (String[] args) {
        System.out.println("Tugas 2: Array 2 Dimensi");
        System.out.println("Nama : Tobi Saputra");
        System.out.println("NPM : 202243502612");
        System.out.println();
        
        Scanner in = new Scanner(System.in);
        String mata_kuliah;
        int jumlah, nilai_teori, nilai_praktikum;
        double rata_rata;
        
        System.out.print("Jumlah Data : ");
        jumlah = in.nextInt();
        
        String data[][] = new String[jumlah][3];
        
        System.out.println("--------------------------------------------");
        
        for (int i = 0; i < jumlah; i++) {
             System.out.print("Mata Kuliah     : ");
            data[i][0] = in.next();
            System.out.print("Nilai Teori     : ");
            data[i][1] = in.next();
            System.out.print("Nilai Praktikum : ");
            data[i][2] = in.next();
            System.out.println();
        }
        
        System.out.println("--------------------------------------------------");
        System.out.printf("Mata Kuliah\tTeori\tPraktikum\tRata-Rata\n");
        System.out.println("--------------------------------------------------");
        
        for (int i = 0; i < jumlah; i++) {
            rata_rata = (Integer.parseInt(data[i][1]) + Integer.parseInt(data[i][2])) / 2;
            System.out.println(data[i][0] + "\t\t" + data[i][1] + "\t" + data[i][2] + "\t\t" + rata_rata);
        }
    }
}
