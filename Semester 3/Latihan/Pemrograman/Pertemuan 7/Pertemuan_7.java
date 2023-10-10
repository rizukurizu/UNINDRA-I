import java.io.*;

public class Pertemuan_7 {
    public static void main(String[] args) {
        System.out.println("Tugas 5: Stream");
        System.out.println("Nama : Tobi Saputra");
        System.out.println("NPM : 202243502612");
        System.out.println();
        
        // Variable Nilai
        String nilai;
        int tugas, uts, uas, no;
        double akhir, jumlah, rata2;

        // Inisialisasi Nilai Awal
        jumlah = 0;
        no = 1;
        
        try {
            // Membaca File
            FileInputStream fs = new FileInputStream("tugasP3.txt");
            DataInputStream di = new DataInputStream(fs);

            System.out.println("No\tTugas\t\tUTS\t\tUAS\t\tNilai Akhir");
            System.out.println("------------------------------------------------------------");

            // Menuliskan Di Tabel
            while (di.available() != 0) {
                nilai = di.readLine();
                tugas = Integer.parseInt(nilai.substring(1,3));
                uts = Integer.parseInt(nilai.substring(6,8));
                uas = Integer.parseInt(nilai.substring(9,11));
                akhir = (tugas * 0.2) + (uts * 0.3) + (uas * 0.5);
                System.out.println(no + "\t" + tugas + "\t\t\t" + uts + "\t\t" + uas + "\t\t\t" + "%.2f".formatted(akhir));
                jumlah = jumlah + akhir;
                no++;
            }
            di.close();

            // Hitung Rata - Rata
            rata2 = jumlah / (no - 1);
            System.out.println("------------------------------------------------------------");
            System.out.println("Rata-Rata : " + rata2);
        } catch (Exception e) {
            System.out.println("Error: " + e.getMessage());
        }
    }
}
