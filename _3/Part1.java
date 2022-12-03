import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.HashSet;

class Part1 {

    public static int similar(String s1, String s2) {
        HashSet<Character> c1 = new HashSet<>();
        for (char c : s1.toCharArray()) {
            c1.add(c);
        }

        for (char c : s2.toCharArray()) {
            if (c1.contains(c)) {
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
            String line = br.readLine();

            while (line != null) {
                int half = line.length() / 2;
                ans += similar(line.substring(0, half), line.substring(half, line.length()));
                line = br.readLine();
            }
        } finally {
            br.close();
        }
        System.out.println(ans);
    }

}