import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.HashSet;

class Part2 {

    public static int similar(String s1, String s2, String s3) {
        HashSet<Character> c1 = new HashSet<>();
        HashSet<Character> c2 = new HashSet<>();
        for (char c : s1.toCharArray()) {
            c1.add(c);
        }

        for (char c : s2.toCharArray()) {
            if (c1.contains(c)) {
                c2.add(c);
            }
        }

        for (char c : s3.toCharArray()) {
            if (c2.contains(c)) {
                if (Character.isUpperCase(c)) {
                    return (int) (c - 'A') + 27;
                }
                else {
                    return (int) (c - 'a') + 1;
                }
            }
        }
        return 0;
    }

    public static void main(String[] args) throws IOException, FileNotFoundException {
        int ans = 0;
        BufferedReader br = new BufferedReader(new FileReader(args[0]));
        try {
            String l1 = br.readLine();

            while (l1 != null) {
                String l2 = br.readLine();
                String l3 = br.readLine();
                ans += similar(l1, l2, l3);
                l1 = br.readLine();
            }
        } finally {
            br.close();
        }
        System.out.println(ans);
    }

}