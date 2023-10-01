package examples;

import java.util.Random;

public class Utils {
    static Random rnd = new Random();
    public static String rndString(int lengthBound) {
        String availableSymbols = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890-";

        int length = rnd.nextInt(lengthBound) + 5;
        char[] text = new char[length];
        for (int i = 0; i < length; i++) {
            text[i] = availableSymbols.charAt(rnd.nextInt(availableSymbols.length()));
        }
        return new String(text);
    }

    public static String replace (String str, String pattern, String value){
        return str.replace(pattern, value);
    }

    public static String test(Object o) {
        int i = 0;
        System.out.println("OBJECT = " + o);
        System.out.println("OBJECT_CLASS = " + o.getClass());
        //Тип класса: com.oracle.truffle.polyglot.PolyglotMap
        return "abc";
    }

}
