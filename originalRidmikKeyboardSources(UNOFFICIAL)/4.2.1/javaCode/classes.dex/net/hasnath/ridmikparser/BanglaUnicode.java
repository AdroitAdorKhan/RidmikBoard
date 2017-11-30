package net.hasnath.ridmikparser;

import java.util.HashMap;
import java.util.Map;
import net.hasnath.android.ridmik.voice.LoggingEvents;

public class BanglaUnicode {
    private Map<String, String> djkt = new HashMap();
    private Map<String, String> djktt = new HashMap();
    private Map<String, String> jkt = new HashMap();
    private Map<String, String> kars = new HashMap();
    private Map<String, String> map = new HashMap();

    public BanglaUnicode() {
        this.map.put("o", "অ");
        this.map.put("O", "ও");
        this.map.put("a", "আ");
        this.map.put("A", "আ");
        this.map.put("S", "শ");
        this.map.put("sh", "শ");
        this.map.put("s", "স");
        this.map.put("Sh", "ষ");
        this.map.put("h", "হ");
        this.map.put("H", "হ");
        this.map.put("r", "র");
        this.map.put("R", "ড়");
        this.map.put("Rh", "ঢ়");
        this.map.put("k", "ক");
        this.map.put("K", "ক");
        this.map.put("q", "ক");
        this.map.put("qq", "ঁ");
        this.map.put("kh", "খ");
        this.map.put("g", "গ");
        this.map.put("G", "গ");
        this.map.put("gh", "ঘ");
        this.map.put("Ng", "ঙ");
        this.map.put("c", "চ");
        this.map.put("C", "চ");
        this.map.put("ch", "ছ");
        this.map.put("j", "জ");
        this.map.put("jh", "ঝ");
        this.map.put("J", "জ");
        this.map.put("NG", "ঞ");
        this.map.put("T", "ট");
        this.map.put("Th", "ঠ");
        this.map.put("TH", "ৎ");
        this.map.put("f", "ফ");
        this.map.put("F", "ফ");
        this.map.put("ph", "ফ");
        this.map.put("i", "ই");
        this.map.put("I", "ঈ");
        this.map.put("e", "এ");
        this.map.put("E", "এ");
        this.map.put("u", "উ");
        this.map.put("U", "ঊ");
        this.map.put("b", "ব");
        this.map.put("B", "ব");
        this.map.put("w", "ব");
        this.map.put("bh", "ভ");
        this.map.put("V", "ভ");
        this.map.put("v", "ভ");
        this.map.put("t", "ত");
        this.map.put("th", "থ");
        this.map.put("d", "দ");
        this.map.put("dh", "ধ");
        this.map.put("D", "ড");
        this.map.put("Dh", "ঢ");
        this.map.put("n", "ন");
        this.map.put("N", "ণ");
        this.map.put("z", "য");
        this.map.put("Z", "য");
        this.map.put("y", "য়");
        this.map.put("l", "ল");
        this.map.put("L", "ল");
        this.map.put("m", "ম");
        this.map.put("M", "ম");
        this.map.put("P", "প");
        this.map.put("p", "প");
        this.map.put("ng", "ং");
        this.map.put("cb", "ঁ");
        this.map.put("x", "ক্স");
        this.map.put("OU", "ঔ");
        this.map.put("OI", "ঐ");
        this.map.put("hs", "্");
        this.map.put("nj", "ঞ্জ");
        this.map.put("nc", "ঞ্চ");
        this.map.put("gg", "জ্ঞ");
        this.kars.put("o", LoggingEvents.EXTRA_CALLING_APP_NAME);
        this.kars.put("a", "া");
        this.kars.put("A", "া");
        this.kars.put("e", "ে");
        this.kars.put("E", "ে");
        this.kars.put("O", "ো");
        this.kars.put("OI", "ৈ");
        this.kars.put("OU", "ৌ");
        this.kars.put("i", "ি");
        this.kars.put("I", "ী");
        this.kars.put("u", "ু");
        this.kars.put("U", "ূ");
        this.kars.put("oo", "ু");
        this.jkt.put("k", "kTtnNslw");
        this.jkt.put("g", "gnNmlw");
        this.jkt.put("ch", "w");
        this.jkt.put("Ng", "gkm");
        this.jkt.put("NG", "cj");
        this.jkt.put("g", "gnNmlw");
        this.jkt.put("G", "gnNmlw");
        this.jkt.put("th", "w");
        this.jkt.put("gh", "Nn");
        this.jkt.put("c", "c");
        this.jkt.put("j", "jw");
        this.jkt.put("T", "T");
        this.jkt.put("D", "D");
        this.jkt.put("R", "g");
        this.jkt.put("N", "DNmwT");
        this.jkt.put("t", "tnmwN");
        this.jkt.put("d", "wdmv");
        this.jkt.put("dh", "wn");
        this.jkt.put("n", "ndwmtsDT");
        this.jkt.put("p", "plTtns");
        this.jkt.put("f", "l");
        this.jkt.put("ph", "l");
        this.jkt.put("b", "jdbwl");
        this.jkt.put("v", "l");
        this.jkt.put("bh", "l");
        this.jkt.put("m", "npfwvmlb");
        this.jkt.put("l", "lwmpkgTDf");
        this.jkt.put("Sh", "kTNpmf");
        this.jkt.put("S", "clwnm");
        this.jkt.put("sh", "clwnm");
        this.jkt.put("s", "kTtnpfmlw");
        this.jkt.put("h", "Nnmlw");
        this.jkt.put("cb", LoggingEvents.EXTRA_CALLING_APP_NAME);
        this.jkt.put("jh", LoggingEvents.EXTRA_CALLING_APP_NAME);
        this.jkt.put("TH", LoggingEvents.EXTRA_CALLING_APP_NAME);
        this.jkt.put("qq", LoggingEvents.EXTRA_CALLING_APP_NAME);
        this.jkt.put("ng", LoggingEvents.EXTRA_CALLING_APP_NAME);
        this.jkt.put("kh", LoggingEvents.EXTRA_CALLING_APP_NAME);
        this.jkt.put("gg", LoggingEvents.EXTRA_CALLING_APP_NAME);
        this.jkt.put("dh", LoggingEvents.EXTRA_CALLING_APP_NAME);
        this.jkt.put("Th", LoggingEvents.EXTRA_CALLING_APP_NAME);
        this.djkt.put("kh", "s");
        this.djkt.put("ch", "c");
        this.djkt.put("Dh", "N");
        this.djkt.put("ph", "mls");
        this.djkt.put("dh", "gdnbl");
        this.djkt.put("bh", "dm");
        this.djkt.put("Sh", "k");
        this.djkt.put("th", "tns");
        this.djkt.put("Th", "Nn");
        this.djkt.put("jh", "j");
        this.djkt.put("NG", "cj");
        this.djktt.put("ch", "NG");
        this.djktt.put("gh", "Ng");
        this.djktt.put("Th", "Sh");
        this.djktt.put("jh", "NG");
        this.djktt.put("sh", "ch");
    }

    public String getDual(char x, char carry) {
        return (String) this.map.get(Character.toString(carry) + Character.toString(x));
    }

    public String get(char x) {
        return (String) this.map.get(Character.toString(x));
    }

    public String getKar(char x) {
        return (String) this.kars.get(Character.toString(x));
    }

    public String getDualKar(char x, char carry) {
        return (String) this.kars.get(Character.toString(carry) + Character.toString(x));
    }

    public String getJkt(char carry) {
        return (String) this.jkt.get(Character.toString(carry));
    }

    public String getDualJkt(char secondCarry, char carry) {
        return (String) this.jkt.get(Character.toString(secondCarry) + Character.toString(carry));
    }

    public String getDjkt(char secondCarry, char carry) {
        return (String) this.djkt.get(Character.toString(secondCarry) + Character.toString(carry));
    }

    public String getDjktt(char secondCarry, char carry) {
        return (String) this.djktt.get(Character.toString(secondCarry) + Character.toString(carry));
    }

    public static void main(String[] a) {
        RidmikParser.main(new String[0]);
    }
}
