package net.hasnath.android.keyboard;

import android.content.Context;
import android.os.AsyncTask;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.accessibility.AccessibilityEventCompat;
import java.util.Iterator;
import java.util.LinkedList;
import net.hasnath.android.keyboard.Dictionary.DataType;
import net.hasnath.android.keyboard.Dictionary.WordCallback;

public class ExpandableDictionary extends Dictionary {
    static final char[] BASE_CHARS;
    protected static final int MAX_WORD_LENGTH = 32;
    private static final char QUOTE = '\'';
    private int[][] mCodes;
    private Context mContext;
    private int mDicTypeId;
    private int mInputLength;
    private int mMaxDepth;
    private int[] mNextLettersFrequencies;
    private boolean mRequiresReload;
    private NodeArray mRoots;
    private boolean mUpdatingDictionary;
    private Object mUpdatingLock = new Object();
    private char[] mWordBuilder = new char[32];
    private StringBuilder sb = new StringBuilder(32);

    private class LoadDictionaryTask extends AsyncTask<Void, Void, Void> {
        private LoadDictionaryTask() {
        }

        protected Void doInBackground(Void... v) {
            ExpandableDictionary.this.loadDictionaryAsync();
            synchronized (ExpandableDictionary.this.mUpdatingLock) {
                ExpandableDictionary.this.mUpdatingDictionary = false;
            }
            return null;
        }
    }

    static class NextWord {
        int frequency;
        NextWord nextWord;
        Node word;

        NextWord(Node word, int frequency) {
            this.word = word;
            this.frequency = frequency;
        }
    }

    static class Node {
        NodeArray children;
        char code;
        int frequency;
        LinkedList<NextWord> ngrams;
        Node parent;
        boolean terminal;

        Node() {
        }
    }

    static class NodeArray {
        private static final int INCREMENT = 2;
        Node[] data = new Node[2];
        int length = 0;

        NodeArray() {
        }

        void add(Node n) {
            if (this.length + 1 > this.data.length) {
                Node[] tempData = new Node[(this.length + 2)];
                if (this.length > 0) {
                    System.arraycopy(this.data, 0, tempData, 0, this.length);
                }
                this.data = tempData;
            }
            Node[] nodeArr = this.data;
            int i = this.length;
            this.length = i + 1;
            nodeArr[i] = n;
        }
    }

    ExpandableDictionary(Context context, int dicTypeId) {
        this.mContext = context;
        clearDictionary();
        this.mCodes = new int[32][];
        this.mDicTypeId = dicTypeId;
    }

    public void loadDictionary() {
        synchronized (this.mUpdatingLock) {
            startDictionaryLoadingTaskLocked();
        }
    }

    public void startDictionaryLoadingTaskLocked() {
        if (!this.mUpdatingDictionary) {
            this.mUpdatingDictionary = true;
            this.mRequiresReload = false;
            new LoadDictionaryTask().execute(new Void[0]);
        }
    }

    public void setRequiresReload(boolean reload) {
        synchronized (this.mUpdatingLock) {
            this.mRequiresReload = reload;
        }
    }

    public boolean getRequiresReload() {
        return this.mRequiresReload;
    }

    public void loadDictionaryAsync() {
    }

    Context getContext() {
        return this.mContext;
    }

    int getMaxWordLength() {
        return 32;
    }

    public void addWord(String word, int frequency) {
        addWordRec(this.mRoots, word, 0, frequency, null);
    }

    private void addWordRec(NodeArray children, String word, int depth, int frequency, Node parentNode) {
        int wordLength = word.length();
        char c = word.charAt(depth);
        int childrenLength = children.length;
        Node childNode = null;
        boolean found = false;
        for (int i = 0; i < childrenLength; i++) {
            childNode = children.data[i];
            if (childNode.code == c) {
                found = true;
                break;
            }
        }
        if (!found) {
            childNode = new Node();
            childNode.code = c;
            childNode.parent = parentNode;
            children.add(childNode);
        }
        if (wordLength == depth + 1) {
            childNode.terminal = true;
            childNode.frequency = Math.max(frequency, childNode.frequency);
            if (childNode.frequency > MotionEventCompat.ACTION_MASK) {
                childNode.frequency = MotionEventCompat.ACTION_MASK;
                return;
            }
            return;
        }
        if (childNode.children == null) {
            childNode.children = new NodeArray();
        }
        addWordRec(childNode.children, word, depth + 1, frequency, childNode);
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void getWords(net.hasnath.android.keyboard.WordComposer r11, net.hasnath.android.keyboard.Dictionary.WordCallback r12, int[] r13) {
        /*
        r10 = this;
        r6 = 1;
        r4 = 0;
        r1 = r10.mUpdatingLock;
        monitor-enter(r1);
        r0 = r10.mRequiresReload;	 Catch:{ all -> 0x0054 }
        if (r0 == 0) goto L_0x000c;
    L_0x0009:
        r10.startDictionaryLoadingTaskLocked();	 Catch:{ all -> 0x0054 }
    L_0x000c:
        r0 = r10.mUpdatingDictionary;	 Catch:{ all -> 0x0054 }
        if (r0 == 0) goto L_0x0012;
    L_0x0010:
        monitor-exit(r1);	 Catch:{ all -> 0x0054 }
    L_0x0011:
        return;
    L_0x0012:
        monitor-exit(r1);	 Catch:{ all -> 0x0054 }
        r0 = r11.size();
        r10.mInputLength = r0;
        r10.mNextLettersFrequencies = r13;
        r0 = r10.mCodes;
        r0 = r0.length;
        r1 = r10.mInputLength;
        if (r0 >= r1) goto L_0x0028;
    L_0x0022:
        r0 = r10.mInputLength;
        r0 = new int[r0][];
        r10.mCodes = r0;
    L_0x0028:
        r8 = 0;
    L_0x0029:
        r0 = r10.mInputLength;
        if (r8 < r0) goto L_0x0057;
    L_0x002d:
        r0 = r10.mInputLength;
        r0 = r0 * 3;
        r10.mMaxDepth = r0;
        r1 = r10.mRoots;
        r3 = r10.mWordBuilder;
        r8 = -1;
        r0 = r10;
        r2 = r11;
        r5 = r4;
        r7 = r4;
        r9 = r12;
        r0.getWordsRec(r1, r2, r3, r4, r5, r6, r7, r8, r9);
        r8 = 0;
    L_0x0041:
        r0 = r10.mInputLength;
        if (r8 >= r0) goto L_0x0011;
    L_0x0045:
        r1 = r10.mRoots;
        r3 = r10.mWordBuilder;
        r0 = r10;
        r2 = r11;
        r5 = r4;
        r7 = r4;
        r9 = r12;
        r0.getWordsRec(r1, r2, r3, r4, r5, r6, r7, r8, r9);
        r8 = r8 + 1;
        goto L_0x0041;
    L_0x0054:
        r0 = move-exception;
        monitor-exit(r1);	 Catch:{ all -> 0x0054 }
        throw r0;
    L_0x0057:
        r0 = r10.mCodes;
        r1 = r11.getCodesAt(r8);
        r0[r8] = r1;
        r8 = r8 + 1;
        goto L_0x0029;
        */
        throw new UnsupportedOperationException("Method not decompiled: net.hasnath.android.keyboard.ExpandableDictionary.getWords(net.hasnath.android.keyboard.WordComposer, net.hasnath.android.keyboard.Dictionary$WordCallback, int[]):void");
    }

    public synchronized boolean isValidWord(CharSequence word) {
        boolean z = false;
        synchronized (this) {
            synchronized (this.mUpdatingLock) {
                if (this.mRequiresReload) {
                    startDictionaryLoadingTaskLocked();
                }
                if (this.mUpdatingDictionary) {
                } else {
                    if (getWordFrequency(word) > -1) {
                        z = true;
                    }
                }
            }
        }
        return z;
    }

    public int getWordFrequency(CharSequence word) {
        Node node = searchNode(this.mRoots, word, 0, word.length());
        return node == null ? -1 : node.frequency;
    }

    protected void getWordsRec(NodeArray roots, WordComposer codes, char[] word, int depth, boolean completion, int snr, int inputIndex, int skipPos, WordCallback callback) {
        int count = roots.length;
        int codeSize = this.mInputLength;
        if (depth <= this.mMaxDepth) {
            int[] currentChars = null;
            if (codeSize <= inputIndex) {
                completion = true;
            } else {
                currentChars = this.mCodes[inputIndex];
            }
            for (int i = 0; i < count; i++) {
                Node node = roots.data[i];
                char c = node.code;
                char lowerC = toLowerCase(c);
                boolean terminal = node.terminal;
                NodeArray children = node.children;
                int freq = node.frequency;
                if (completion) {
                    word[depth] = c;
                    if (terminal) {
                        if (!callback.addWord(word, 0, depth + 1, freq * snr, this.mDicTypeId, DataType.UNIGRAM)) {
                            return;
                        }
                        if (this.mNextLettersFrequencies != null && depth >= inputIndex && skipPos < 0 && this.mNextLettersFrequencies.length > word[inputIndex]) {
                            int[] iArr = this.mNextLettersFrequencies;
                            char c2 = word[inputIndex];
                            iArr[c2] = iArr[c2] + 1;
                        }
                    }
                    if (children != null) {
                        getWordsRec(children, codes, word, depth + 1, completion, snr, inputIndex, skipPos, callback);
                    }
                } else if ((c != '\'' || currentChars[0] == 39) && depth != skipPos) {
                    int alternativesSize = skipPos >= 0 ? 1 : currentChars.length;
                    int j = 0;
                    while (j < alternativesSize) {
                        int addedAttenuation = j > 0 ? 1 : 2;
                        char currentChar = currentChars[j];
                        if (currentChar == '￿') {
                            break;
                        }
                        if (currentChar == lowerC || currentChar == c) {
                            word[depth] = c;
                            if (codeSize == inputIndex + 1) {
                                if (terminal) {
                                    if (!same(word, depth + 1, codes.getTypedWord())) {
                                        int finalFreq = (freq * snr) * addedAttenuation;
                                        if (skipPos < 0) {
                                            finalFreq *= 2;
                                        }
                                        callback.addWord(word, 0, depth + 1, finalFreq, this.mDicTypeId, DataType.UNIGRAM);
                                    }
                                }
                                if (children != null) {
                                    getWordsRec(children, codes, word, depth + 1, true, snr * addedAttenuation, inputIndex + 1, skipPos, callback);
                                }
                            } else if (children != null) {
                                getWordsRec(children, codes, word, depth + 1, false, snr * addedAttenuation, inputIndex + 1, skipPos, callback);
                            }
                        }
                        j++;
                    }
                } else {
                    word[depth] = c;
                    if (children != null) {
                        getWordsRec(children, codes, word, depth + 1, completion, snr, inputIndex, skipPos, callback);
                    }
                }
            }
        }
    }

    protected int setBigram(String word1, String word2, int frequency) {
        return addOrSetBigram(word1, word2, frequency, false);
    }

    protected int addBigram(String word1, String word2, int frequency) {
        return addOrSetBigram(word1, word2, frequency, true);
    }

    private int addOrSetBigram(String word1, String word2, int frequency, boolean addFrequency) {
        Node firstWord = searchWord(this.mRoots, word1, 0, null);
        Node secondWord = searchWord(this.mRoots, word2, 0, null);
        LinkedList<NextWord> bigram = firstWord.ngrams;
        if (bigram == null || bigram.size() == 0) {
            firstWord.ngrams = new LinkedList();
            bigram = firstWord.ngrams;
        } else {
            Iterator it = bigram.iterator();
            while (it.hasNext()) {
                NextWord nw = (NextWord) it.next();
                if (nw.word == secondWord) {
                    if (addFrequency) {
                        nw.frequency += frequency;
                    } else {
                        nw.frequency = frequency;
                    }
                    return nw.frequency;
                }
            }
        }
        firstWord.ngrams.add(new NextWord(secondWord, frequency));
        return frequency;
    }

    private Node searchWord(NodeArray children, String word, int depth, Node parentNode) {
        int wordLength = word.length();
        char c = word.charAt(depth);
        int childrenLength = children.length;
        Node childNode = null;
        boolean found = false;
        for (int i = 0; i < childrenLength; i++) {
            childNode = children.data[i];
            if (childNode.code == c) {
                found = true;
                break;
            }
        }
        if (!found) {
            childNode = new Node();
            childNode.code = c;
            childNode.parent = parentNode;
            children.add(childNode);
        }
        if (wordLength == depth + 1) {
            childNode.terminal = true;
            return childNode;
        }
        if (childNode.children == null) {
            childNode.children = new NodeArray();
        }
        return searchWord(childNode.children, word, depth + 1, childNode);
    }

    boolean reloadDictionaryIfRequired() {
        boolean z;
        synchronized (this.mUpdatingLock) {
            if (this.mRequiresReload) {
                startDictionaryLoadingTaskLocked();
            }
            z = this.mUpdatingDictionary;
        }
        return z;
    }

    private void runReverseLookUp(CharSequence previousWord, WordCallback callback) {
        Node prevWord = searchNode(this.mRoots, previousWord, 0, previousWord.length());
        if (prevWord != null && prevWord.ngrams != null) {
            reverseLookUp(prevWord.ngrams, callback);
        }
    }

    public void getBigrams(WordComposer codes, CharSequence previousWord, WordCallback callback, int[] nextLettersFrequencies) {
        if (!reloadDictionaryIfRequired()) {
            runReverseLookUp(previousWord, callback);
        }
    }

    void waitForDictionaryLoading() {
        while (this.mUpdatingDictionary) {
            try {
                Thread.sleep(100);
            } catch (InterruptedException e) {
            }
        }
    }

    private void reverseLookUp(LinkedList<NextWord> terminalNodes, WordCallback callback) {
        Iterator it = terminalNodes.iterator();
        while (it.hasNext()) {
            NextWord nextWord = (NextWord) it.next();
            Node node = nextWord.word;
            int freq = nextWord.frequency;
            if (freq >= 12) {
                this.sb.setLength(0);
                do {
                    this.sb.insert(0, node.code);
                    node = node.parent;
                } while (node != null);
                callback.addWord(this.sb.toString().toCharArray(), 0, this.sb.length(), freq, this.mDicTypeId, DataType.BIGRAM);
            }
        }
    }

    private Node searchNode(NodeArray children, CharSequence word, int offset, int length) {
        int count = children.length;
        char currentChar = word.charAt(offset);
        for (int j = 0; j < count; j++) {
            Node node = children.data[j];
            if (node.code == currentChar) {
                if (offset == length - 1) {
                    if (node.terminal) {
                        return node;
                    }
                } else if (node.children != null) {
                    Node returnNode = searchNode(node.children, word, offset + 1, length);
                    if (returnNode != null) {
                        return returnNode;
                    }
                } else {
                    continue;
                }
            }
        }
        return null;
    }

    protected void clearDictionary() {
        this.mRoots = new NodeArray();
    }

    static char toLowerCase(char c) {
        if (c < BASE_CHARS.length) {
            c = BASE_CHARS[c];
        }
        if (c >= 'A' && c <= 'Z') {
            return (char) (c | 32);
        }
        if (c > '') {
            return Character.toLowerCase(c);
        }
        return c;
    }

    static {
        char[] cArr = new char[1280];
        cArr[1] = '\u0001';
        cArr[2] = '\u0002';
        cArr[3] = '\u0003';
        cArr[4] = '\u0004';
        cArr[5] = '\u0005';
        cArr[6] = '\u0006';
        cArr[7] = '\u0007';
        cArr[8] = '\b';
        cArr[9] = '\t';
        cArr[10] = '\n';
        cArr[11] = '\u000b';
        cArr[12] = '\f';
        cArr[13] = '\r';
        cArr[14] = '\u000e';
        cArr[15] = '\u000f';
        cArr[16] = '\u0010';
        cArr[17] = '\u0011';
        cArr[18] = '\u0012';
        cArr[19] = '\u0013';
        cArr[20] = '\u0014';
        cArr[21] = '\u0015';
        cArr[22] = '\u0016';
        cArr[23] = '\u0017';
        cArr[24] = '\u0018';
        cArr[25] = '\u0019';
        cArr[26] = '\u001a';
        cArr[27] = '\u001b';
        cArr[28] = '\u001c';
        cArr[29] = '\u001d';
        cArr[30] = '\u001e';
        cArr[31] = '\u001f';
        cArr[32] = ' ';
        cArr[33] = '!';
        cArr[34] = '\"';
        cArr[35] = '#';
        cArr[36] = '$';
        cArr[37] = '%';
        cArr[38] = '&';
        cArr[39] = QUOTE;
        cArr[40] = '(';
        cArr[41] = ')';
        cArr[42] = '*';
        cArr[43] = '+';
        cArr[44] = ',';
        cArr[45] = '-';
        cArr[46] = '.';
        cArr[47] = '/';
        cArr[48] = '0';
        cArr[49] = '1';
        cArr[50] = '2';
        cArr[51] = '3';
        cArr[52] = '4';
        cArr[53] = '5';
        cArr[54] = '6';
        cArr[55] = '7';
        cArr[56] = '8';
        cArr[57] = '9';
        cArr[58] = ':';
        cArr[59] = ';';
        cArr[60] = '<';
        cArr[61] = '=';
        cArr[62] = '>';
        cArr[63] = '?';
        cArr[64] = '@';
        cArr[65] = 'A';
        cArr[66] = 'B';
        cArr[67] = 'C';
        cArr[68] = 'D';
        cArr[69] = 'E';
        cArr[70] = 'F';
        cArr[71] = 'G';
        cArr[72] = 'H';
        cArr[73] = 'I';
        cArr[74] = 'J';
        cArr[75] = 'K';
        cArr[76] = 'L';
        cArr[77] = 'M';
        cArr[78] = 'N';
        cArr[79] = 'O';
        cArr[80] = 'P';
        cArr[81] = 'Q';
        cArr[82] = 'R';
        cArr[83] = 'S';
        cArr[84] = 'T';
        cArr[85] = 'U';
        cArr[86] = 'V';
        cArr[87] = 'W';
        cArr[88] = 'X';
        cArr[89] = 'Y';
        cArr[90] = 'Z';
        cArr[91] = '[';
        cArr[92] = '\\';
        cArr[93] = ']';
        cArr[94] = '^';
        cArr[95] = '_';
        cArr[96] = '`';
        cArr[97] = 'a';
        cArr[98] = 'b';
        cArr[99] = 'c';
        cArr[100] = 'd';
        cArr[101] = 'e';
        cArr[102] = 'f';
        cArr[103] = 'g';
        cArr[104] = 'h';
        cArr[105] = 'i';
        cArr[106] = 'j';
        cArr[107] = 'k';
        cArr[108] = 'l';
        cArr[109] = 'm';
        cArr[110] = 'n';
        cArr[111] = 'o';
        cArr[112] = 'p';
        cArr[113] = 'q';
        cArr[114] = 'r';
        cArr[115] = 's';
        cArr[116] = 't';
        cArr[117] = 'u';
        cArr[118] = 'v';
        cArr[119] = 'w';
        cArr[120] = 'x';
        cArr[121] = 'y';
        cArr[122] = 'z';
        cArr[123] = '{';
        cArr[124] = '|';
        cArr[125] = '}';
        cArr[126] = '~';
        cArr[Suggest.MAXIMUM_BIGRAM_FREQUENCY] = '';
        cArr[128] = '';
        cArr[129] = '';
        cArr[130] = '';
        cArr[131] = '';
        cArr[132] = '';
        cArr[133] = '';
        cArr[134] = '';
        cArr[135] = '';
        cArr[136] = '';
        cArr[137] = '';
        cArr[138] = '';
        cArr[139] = '';
        cArr[140] = '';
        cArr[141] = '';
        cArr[142] = '';
        cArr[143] = '';
        cArr[144] = '';
        cArr[145] = '';
        cArr[146] = '';
        cArr[147] = '';
        cArr[148] = '';
        cArr[149] = '';
        cArr[150] = '';
        cArr[151] = '';
        cArr[152] = '';
        cArr[153] = '';
        cArr[154] = '';
        cArr[155] = '';
        cArr[156] = '';
        cArr[157] = '';
        cArr[158] = '';
        cArr[159] = '';
        cArr[160] = ' ';
        cArr[161] = '¡';
        cArr[162] = '¢';
        cArr[163] = '£';
        cArr[164] = '¤';
        cArr[165] = '¥';
        cArr[166] = '¦';
        cArr[167] = '§';
        cArr[168] = ' ';
        cArr[169] = '©';
        cArr[170] = 'a';
        cArr[171] = '«';
        cArr[172] = '¬';
        cArr[173] = '­';
        cArr[174] = '®';
        cArr[175] = ' ';
        cArr[176] = '°';
        cArr[177] = '±';
        cArr[178] = '2';
        cArr[179] = '3';
        cArr[180] = ' ';
        cArr[181] = 'μ';
        cArr[182] = '¶';
        cArr[183] = '·';
        cArr[184] = ' ';
        cArr[185] = '1';
        cArr[186] = 'o';
        cArr[187] = '»';
        cArr[188] = '1';
        cArr[189] = '1';
        cArr[190] = '3';
        cArr[191] = '¿';
        cArr[192] = 'A';
        cArr[193] = 'A';
        cArr[194] = 'A';
        cArr[195] = 'A';
        cArr[196] = 'A';
        cArr[197] = 'A';
        cArr[198] = 'Æ';
        cArr[199] = 'C';
        cArr[200] = 'E';
        cArr[201] = 'E';
        cArr[202] = 'E';
        cArr[203] = 'E';
        cArr[204] = 'I';
        cArr[205] = 'I';
        cArr[206] = 'I';
        cArr[207] = 'I';
        cArr[208] = 'Ð';
        cArr[209] = 'N';
        cArr[210] = 'O';
        cArr[211] = 'O';
        cArr[212] = 'O';
        cArr[213] = 'O';
        cArr[214] = 'O';
        cArr[215] = '×';
        cArr[216] = 'O';
        cArr[217] = 'U';
        cArr[218] = 'U';
        cArr[219] = 'U';
        cArr[220] = 'U';
        cArr[221] = 'Y';
        cArr[222] = 'Þ';
        cArr[223] = 's';
        cArr[224] = 'a';
        cArr[225] = 'a';
        cArr[226] = 'a';
        cArr[227] = 'a';
        cArr[228] = 'a';
        cArr[229] = 'a';
        cArr[230] = 'æ';
        cArr[231] = 'c';
        cArr[232] = 'e';
        cArr[233] = 'e';
        cArr[234] = 'e';
        cArr[235] = 'e';
        cArr[236] = 'i';
        cArr[237] = 'i';
        cArr[238] = 'i';
        cArr[239] = 'i';
        cArr[240] = 'ð';
        cArr[241] = 'n';
        cArr[242] = 'o';
        cArr[243] = 'o';
        cArr[244] = 'o';
        cArr[245] = 'o';
        cArr[246] = 'o';
        cArr[247] = '÷';
        cArr[248] = 'o';
        cArr[249] = 'u';
        cArr[250] = 'u';
        cArr[251] = 'u';
        cArr[252] = 'u';
        cArr[253] = 'y';
        cArr[254] = 'þ';
        cArr[MotionEventCompat.ACTION_MASK] = 'y';
        cArr[AccessibilityEventCompat.TYPE_VIEW_HOVER_EXIT] = 'A';
        cArr[257] = 'a';
        cArr[258] = 'A';
        cArr[259] = 'a';
        cArr[260] = 'A';
        cArr[261] = 'a';
        cArr[262] = 'C';
        cArr[263] = 'c';
        cArr[264] = 'C';
        cArr[265] = 'c';
        cArr[266] = 'C';
        cArr[267] = 'c';
        cArr[268] = 'C';
        cArr[269] = 'c';
        cArr[270] = 'D';
        cArr[271] = 'd';
        cArr[272] = 'Đ';
        cArr[273] = 'đ';
        cArr[274] = 'E';
        cArr[275] = 'e';
        cArr[276] = 'E';
        cArr[277] = 'e';
        cArr[278] = 'E';
        cArr[279] = 'e';
        cArr[280] = 'E';
        cArr[281] = 'e';
        cArr[282] = 'E';
        cArr[283] = 'e';
        cArr[284] = 'G';
        cArr[285] = 'g';
        cArr[286] = 'G';
        cArr[287] = 'g';
        cArr[288] = 'G';
        cArr[289] = 'g';
        cArr[290] = 'G';
        cArr[291] = 'g';
        cArr[292] = 'H';
        cArr[293] = 'h';
        cArr[294] = 'Ħ';
        cArr[295] = 'ħ';
        cArr[296] = 'I';
        cArr[297] = 'i';
        cArr[298] = 'I';
        cArr[299] = 'i';
        cArr[300] = 'I';
        cArr[301] = 'i';
        cArr[302] = 'I';
        cArr[303] = 'i';
        cArr[304] = 'I';
        cArr[305] = 'ı';
        cArr[306] = 'I';
        cArr[307] = 'i';
        cArr[308] = 'J';
        cArr[309] = 'j';
        cArr[310] = 'K';
        cArr[311] = 'k';
        cArr[312] = 'ĸ';
        cArr[313] = 'L';
        cArr[314] = 'l';
        cArr[315] = 'L';
        cArr[316] = 'l';
        cArr[317] = 'L';
        cArr[318] = 'l';
        cArr[319] = 'L';
        cArr[320] = 'l';
        cArr[321] = 'Ł';
        cArr[322] = 'ł';
        cArr[323] = 'N';
        cArr[324] = 'n';
        cArr[325] = 'N';
        cArr[326] = 'n';
        cArr[327] = 'N';
        cArr[328] = 'n';
        cArr[329] = 'ʼ';
        cArr[330] = 'Ŋ';
        cArr[331] = 'ŋ';
        cArr[332] = 'O';
        cArr[333] = 'o';
        cArr[334] = 'O';
        cArr[335] = 'o';
        cArr[336] = 'O';
        cArr[337] = 'o';
        cArr[338] = 'Œ';
        cArr[339] = 'œ';
        cArr[340] = 'R';
        cArr[341] = 'r';
        cArr[342] = 'R';
        cArr[343] = 'r';
        cArr[344] = 'R';
        cArr[345] = 'r';
        cArr[346] = 'S';
        cArr[347] = 's';
        cArr[348] = 'S';
        cArr[349] = 's';
        cArr[350] = 'S';
        cArr[351] = 's';
        cArr[352] = 'S';
        cArr[353] = 's';
        cArr[354] = 'T';
        cArr[355] = 't';
        cArr[356] = 'T';
        cArr[357] = 't';
        cArr[358] = 'Ŧ';
        cArr[359] = 'ŧ';
        cArr[360] = 'U';
        cArr[361] = 'u';
        cArr[362] = 'U';
        cArr[363] = 'u';
        cArr[364] = 'U';
        cArr[365] = 'u';
        cArr[366] = 'U';
        cArr[367] = 'u';
        cArr[368] = 'U';
        cArr[369] = 'u';
        cArr[370] = 'U';
        cArr[371] = 'u';
        cArr[372] = 'W';
        cArr[373] = 'w';
        cArr[374] = 'Y';
        cArr[375] = 'y';
        cArr[376] = 'Y';
        cArr[377] = 'Z';
        cArr[378] = 'z';
        cArr[379] = 'Z';
        cArr[380] = 'z';
        cArr[381] = 'Z';
        cArr[382] = 'z';
        cArr[383] = 's';
        cArr[384] = 'ƀ';
        cArr[385] = 'Ɓ';
        cArr[386] = 'Ƃ';
        cArr[387] = 'ƃ';
        cArr[388] = 'Ƅ';
        cArr[389] = 'ƅ';
        cArr[390] = 'Ɔ';
        cArr[391] = 'Ƈ';
        cArr[392] = 'ƈ';
        cArr[393] = 'Ɖ';
        cArr[394] = 'Ɗ';
        cArr[395] = 'Ƌ';
        cArr[396] = 'ƌ';
        cArr[397] = 'ƍ';
        cArr[398] = 'Ǝ';
        cArr[399] = 'Ə';
        cArr[400] = 'Ɛ';
        cArr[401] = 'Ƒ';
        cArr[402] = 'ƒ';
        cArr[403] = 'Ɠ';
        cArr[404] = 'Ɣ';
        cArr[405] = 'ƕ';
        cArr[406] = 'Ɩ';
        cArr[407] = 'Ɨ';
        cArr[408] = 'Ƙ';
        cArr[409] = 'ƙ';
        cArr[410] = 'ƚ';
        cArr[411] = 'ƛ';
        cArr[412] = 'Ɯ';
        cArr[413] = 'Ɲ';
        cArr[414] = 'ƞ';
        cArr[415] = 'Ɵ';
        cArr[416] = 'O';
        cArr[417] = 'o';
        cArr[418] = 'Ƣ';
        cArr[419] = 'ƣ';
        cArr[420] = 'Ƥ';
        cArr[421] = 'ƥ';
        cArr[422] = 'Ʀ';
        cArr[423] = 'Ƨ';
        cArr[424] = 'ƨ';
        cArr[425] = 'Ʃ';
        cArr[426] = 'ƪ';
        cArr[427] = 'ƫ';
        cArr[428] = 'Ƭ';
        cArr[429] = 'ƭ';
        cArr[430] = 'Ʈ';
        cArr[431] = 'U';
        cArr[432] = 'u';
        cArr[433] = 'Ʊ';
        cArr[434] = 'Ʋ';
        cArr[435] = 'Ƴ';
        cArr[436] = 'ƴ';
        cArr[437] = 'Ƶ';
        cArr[438] = 'ƶ';
        cArr[439] = 'Ʒ';
        cArr[440] = 'Ƹ';
        cArr[441] = 'ƹ';
        cArr[442] = 'ƺ';
        cArr[443] = 'ƻ';
        cArr[444] = 'Ƽ';
        cArr[445] = 'ƽ';
        cArr[446] = 'ƾ';
        cArr[447] = 'ƿ';
        cArr[448] = 'ǀ';
        cArr[449] = 'ǁ';
        cArr[450] = 'ǂ';
        cArr[451] = 'ǃ';
        cArr[452] = 'D';
        cArr[453] = 'D';
        cArr[454] = 'd';
        cArr[455] = 'L';
        cArr[456] = 'L';
        cArr[457] = 'l';
        cArr[458] = 'N';
        cArr[459] = 'N';
        cArr[460] = 'n';
        cArr[461] = 'A';
        cArr[462] = 'a';
        cArr[463] = 'I';
        cArr[464] = 'i';
        cArr[465] = 'O';
        cArr[466] = 'o';
        cArr[467] = 'U';
        cArr[468] = 'u';
        cArr[469] = 'Ü';
        cArr[470] = 'ü';
        cArr[471] = 'Ü';
        cArr[472] = 'ü';
        cArr[473] = 'Ü';
        cArr[474] = 'ü';
        cArr[475] = 'Ü';
        cArr[476] = 'ü';
        cArr[477] = 'ǝ';
        cArr[478] = 'Ä';
        cArr[479] = 'ä';
        cArr[480] = 'Ȧ';
        cArr[481] = 'ȧ';
        cArr[482] = 'Æ';
        cArr[483] = 'æ';
        cArr[484] = 'Ǥ';
        cArr[485] = 'ǥ';
        cArr[486] = 'G';
        cArr[487] = 'g';
        cArr[488] = 'K';
        cArr[489] = 'k';
        cArr[490] = 'O';
        cArr[491] = 'o';
        cArr[492] = 'Ǫ';
        cArr[493] = 'ǫ';
        cArr[494] = 'Ʒ';
        cArr[495] = 'ʒ';
        cArr[496] = 'j';
        cArr[497] = 'D';
        cArr[498] = 'D';
        cArr[499] = 'd';
        cArr[500] = 'G';
        cArr[501] = 'g';
        cArr[502] = 'Ƕ';
        cArr[503] = 'Ƿ';
        cArr[504] = 'N';
        cArr[505] = 'n';
        cArr[506] = 'Å';
        cArr[507] = 'å';
        cArr[508] = 'Æ';
        cArr[509] = 'æ';
        cArr[510] = 'Ø';
        cArr[511] = 'ø';
        cArr[512] = 'A';
        cArr[513] = 'a';
        cArr[514] = 'A';
        cArr[515] = 'a';
        cArr[516] = 'E';
        cArr[517] = 'e';
        cArr[518] = 'E';
        cArr[519] = 'e';
        cArr[520] = 'I';
        cArr[521] = 'i';
        cArr[522] = 'I';
        cArr[523] = 'i';
        cArr[524] = 'O';
        cArr[525] = 'o';
        cArr[526] = 'O';
        cArr[527] = 'o';
        cArr[528] = 'R';
        cArr[529] = 'r';
        cArr[530] = 'R';
        cArr[531] = 'r';
        cArr[532] = 'U';
        cArr[533] = 'u';
        cArr[534] = 'U';
        cArr[535] = 'u';
        cArr[536] = 'S';
        cArr[537] = 's';
        cArr[538] = 'T';
        cArr[539] = 't';
        cArr[540] = 'Ȝ';
        cArr[541] = 'ȝ';
        cArr[542] = 'H';
        cArr[543] = 'h';
        cArr[544] = 'Ƞ';
        cArr[545] = 'ȡ';
        cArr[546] = 'Ȣ';
        cArr[547] = 'ȣ';
        cArr[548] = 'Ȥ';
        cArr[549] = 'ȥ';
        cArr[550] = 'A';
        cArr[551] = 'a';
        cArr[552] = 'E';
        cArr[553] = 'e';
        cArr[554] = 'Ö';
        cArr[555] = 'ö';
        cArr[556] = 'Õ';
        cArr[557] = 'õ';
        cArr[558] = 'O';
        cArr[559] = 'o';
        cArr[560] = 'Ȯ';
        cArr[561] = 'ȯ';
        cArr[562] = 'Y';
        cArr[563] = 'y';
        cArr[564] = 'ȴ';
        cArr[565] = 'ȵ';
        cArr[566] = 'ȶ';
        cArr[567] = 'ȷ';
        cArr[568] = 'ȸ';
        cArr[569] = 'ȹ';
        cArr[570] = 'Ⱥ';
        cArr[571] = 'Ȼ';
        cArr[572] = 'ȼ';
        cArr[573] = 'Ƚ';
        cArr[574] = 'Ⱦ';
        cArr[575] = 'ȿ';
        cArr[576] = 'ɀ';
        cArr[577] = 'Ɂ';
        cArr[578] = 'ɂ';
        cArr[579] = 'Ƀ';
        cArr[580] = 'Ʉ';
        cArr[581] = 'Ʌ';
        cArr[582] = 'Ɇ';
        cArr[583] = 'ɇ';
        cArr[584] = 'Ɉ';
        cArr[585] = 'ɉ';
        cArr[586] = 'Ɋ';
        cArr[587] = 'ɋ';
        cArr[588] = 'Ɍ';
        cArr[589] = 'ɍ';
        cArr[590] = 'Ɏ';
        cArr[591] = 'ɏ';
        cArr[592] = 'ɐ';
        cArr[593] = 'ɑ';
        cArr[594] = 'ɒ';
        cArr[595] = 'ɓ';
        cArr[596] = 'ɔ';
        cArr[597] = 'ɕ';
        cArr[598] = 'ɖ';
        cArr[599] = 'ɗ';
        cArr[600] = 'ɘ';
        cArr[601] = 'ə';
        cArr[602] = 'ɚ';
        cArr[603] = 'ɛ';
        cArr[604] = 'ɜ';
        cArr[605] = 'ɝ';
        cArr[606] = 'ɞ';
        cArr[607] = 'ɟ';
        cArr[608] = 'ɠ';
        cArr[609] = 'ɡ';
        cArr[610] = 'ɢ';
        cArr[611] = 'ɣ';
        cArr[612] = 'ɤ';
        cArr[613] = 'ɥ';
        cArr[614] = 'ɦ';
        cArr[615] = 'ɧ';
        cArr[616] = 'ɨ';
        cArr[617] = 'ɩ';
        cArr[618] = 'ɪ';
        cArr[619] = 'ɫ';
        cArr[620] = 'ɬ';
        cArr[621] = 'ɭ';
        cArr[622] = 'ɮ';
        cArr[623] = 'ɯ';
        cArr[624] = 'ɰ';
        cArr[625] = 'ɱ';
        cArr[626] = 'ɲ';
        cArr[627] = 'ɳ';
        cArr[628] = 'ɴ';
        cArr[629] = 'ɵ';
        cArr[630] = 'ɶ';
        cArr[631] = 'ɷ';
        cArr[632] = 'ɸ';
        cArr[633] = 'ɹ';
        cArr[634] = 'ɺ';
        cArr[635] = 'ɻ';
        cArr[636] = 'ɼ';
        cArr[637] = 'ɽ';
        cArr[638] = 'ɾ';
        cArr[639] = 'ɿ';
        cArr[640] = 'ʀ';
        cArr[641] = 'ʁ';
        cArr[642] = 'ʂ';
        cArr[643] = 'ʃ';
        cArr[644] = 'ʄ';
        cArr[645] = 'ʅ';
        cArr[646] = 'ʆ';
        cArr[647] = 'ʇ';
        cArr[648] = 'ʈ';
        cArr[649] = 'ʉ';
        cArr[650] = 'ʊ';
        cArr[651] = 'ʋ';
        cArr[652] = 'ʌ';
        cArr[653] = 'ʍ';
        cArr[654] = 'ʎ';
        cArr[655] = 'ʏ';
        cArr[656] = 'ʐ';
        cArr[657] = 'ʑ';
        cArr[658] = 'ʒ';
        cArr[659] = 'ʓ';
        cArr[660] = 'ʔ';
        cArr[661] = 'ʕ';
        cArr[662] = 'ʖ';
        cArr[663] = 'ʗ';
        cArr[664] = 'ʘ';
        cArr[665] = 'ʙ';
        cArr[666] = 'ʚ';
        cArr[667] = 'ʛ';
        cArr[668] = 'ʜ';
        cArr[669] = 'ʝ';
        cArr[670] = 'ʞ';
        cArr[671] = 'ʟ';
        cArr[672] = 'ʠ';
        cArr[673] = 'ʡ';
        cArr[674] = 'ʢ';
        cArr[675] = 'ʣ';
        cArr[676] = 'ʤ';
        cArr[677] = 'ʥ';
        cArr[678] = 'ʦ';
        cArr[679] = 'ʧ';
        cArr[680] = 'ʨ';
        cArr[681] = 'ʩ';
        cArr[682] = 'ʪ';
        cArr[683] = 'ʫ';
        cArr[684] = 'ʬ';
        cArr[685] = 'ʭ';
        cArr[686] = 'ʮ';
        cArr[687] = 'ʯ';
        cArr[688] = 'h';
        cArr[689] = 'ɦ';
        cArr[690] = 'j';
        cArr[691] = 'r';
        cArr[692] = 'ɹ';
        cArr[693] = 'ɻ';
        cArr[694] = 'ʁ';
        cArr[695] = 'w';
        cArr[696] = 'y';
        cArr[697] = 'ʹ';
        cArr[698] = 'ʺ';
        cArr[699] = 'ʻ';
        cArr[700] = 'ʼ';
        cArr[701] = 'ʽ';
        cArr[702] = 'ʾ';
        cArr[703] = 'ʿ';
        cArr[704] = 'ˀ';
        cArr[705] = 'ˁ';
        cArr[706] = '˂';
        cArr[707] = '˃';
        cArr[708] = '˄';
        cArr[709] = '˅';
        cArr[710] = 'ˆ';
        cArr[711] = 'ˇ';
        cArr[712] = 'ˈ';
        cArr[713] = 'ˉ';
        cArr[714] = 'ˊ';
        cArr[715] = 'ˋ';
        cArr[716] = 'ˌ';
        cArr[717] = 'ˍ';
        cArr[718] = 'ˎ';
        cArr[719] = 'ˏ';
        cArr[720] = 'ː';
        cArr[721] = 'ˑ';
        cArr[722] = '˒';
        cArr[723] = '˓';
        cArr[724] = '˔';
        cArr[725] = '˕';
        cArr[726] = '˖';
        cArr[727] = '˗';
        cArr[728] = ' ';
        cArr[729] = ' ';
        cArr[730] = ' ';
        cArr[731] = ' ';
        cArr[732] = ' ';
        cArr[733] = ' ';
        cArr[734] = '˞';
        cArr[735] = '˟';
        cArr[736] = 'ɣ';
        cArr[737] = 'l';
        cArr[738] = 's';
        cArr[739] = 'x';
        cArr[740] = 'ʕ';
        cArr[741] = '˥';
        cArr[742] = '˦';
        cArr[743] = '˧';
        cArr[744] = '˨';
        cArr[745] = '˩';
        cArr[746] = '˪';
        cArr[747] = '˫';
        cArr[748] = 'ˬ';
        cArr[749] = '˭';
        cArr[750] = 'ˮ';
        cArr[751] = '˯';
        cArr[752] = '˰';
        cArr[753] = '˱';
        cArr[754] = '˲';
        cArr[755] = '˳';
        cArr[756] = '˴';
        cArr[757] = '˵';
        cArr[758] = '˶';
        cArr[759] = '˷';
        cArr[760] = '˸';
        cArr[761] = '˹';
        cArr[762] = '˺';
        cArr[763] = '˻';
        cArr[764] = '˼';
        cArr[765] = '˽';
        cArr[766] = '˾';
        cArr[767] = '˿';
        cArr[768] = '̀';
        cArr[769] = '́';
        cArr[770] = '̂';
        cArr[771] = '̃';
        cArr[772] = '̄';
        cArr[773] = '̅';
        cArr[774] = '̆';
        cArr[775] = '̇';
        cArr[776] = '̈';
        cArr[777] = '̉';
        cArr[778] = '̊';
        cArr[779] = '̋';
        cArr[780] = '̌';
        cArr[781] = '̍';
        cArr[782] = '̎';
        cArr[783] = '̏';
        cArr[784] = '̐';
        cArr[785] = '̑';
        cArr[786] = '̒';
        cArr[787] = '̓';
        cArr[788] = '̔';
        cArr[789] = '̕';
        cArr[790] = '̖';
        cArr[791] = '̗';
        cArr[792] = '̘';
        cArr[793] = '̙';
        cArr[794] = '̚';
        cArr[795] = '̛';
        cArr[796] = '̜';
        cArr[797] = '̝';
        cArr[798] = '̞';
        cArr[799] = '̟';
        cArr[800] = '̠';
        cArr[801] = '̡';
        cArr[802] = '̢';
        cArr[803] = '̣';
        cArr[804] = '̤';
        cArr[805] = '̥';
        cArr[806] = '̦';
        cArr[807] = '̧';
        cArr[808] = '̨';
        cArr[809] = '̩';
        cArr[810] = '̪';
        cArr[811] = '̫';
        cArr[812] = '̬';
        cArr[813] = '̭';
        cArr[814] = '̮';
        cArr[815] = '̯';
        cArr[816] = '̰';
        cArr[817] = '̱';
        cArr[818] = '̲';
        cArr[819] = '̳';
        cArr[820] = '̴';
        cArr[821] = '̵';
        cArr[822] = '̶';
        cArr[823] = '̷';
        cArr[824] = '̸';
        cArr[825] = '̹';
        cArr[826] = '̺';
        cArr[827] = '̻';
        cArr[828] = '̼';
        cArr[829] = '̽';
        cArr[830] = '̾';
        cArr[831] = '̿';
        cArr[832] = '̀';
        cArr[833] = '́';
        cArr[834] = '͂';
        cArr[835] = '̓';
        cArr[836] = '̈';
        cArr[837] = 'ͅ';
        cArr[838] = '͆';
        cArr[839] = '͇';
        cArr[840] = '͈';
        cArr[841] = '͉';
        cArr[842] = '͊';
        cArr[843] = '͋';
        cArr[844] = '͌';
        cArr[845] = '͍';
        cArr[846] = '͎';
        cArr[847] = '͏';
        cArr[848] = '͐';
        cArr[849] = '͑';
        cArr[850] = '͒';
        cArr[851] = '͓';
        cArr[852] = '͔';
        cArr[853] = '͕';
        cArr[854] = '͖';
        cArr[855] = '͗';
        cArr[856] = '͘';
        cArr[857] = '͙';
        cArr[858] = '͚';
        cArr[859] = '͛';
        cArr[860] = '͜';
        cArr[861] = '͝';
        cArr[862] = '͞';
        cArr[863] = '͟';
        cArr[864] = '͠';
        cArr[865] = '͡';
        cArr[866] = '͢';
        cArr[867] = 'ͣ';
        cArr[868] = 'ͤ';
        cArr[869] = 'ͥ';
        cArr[870] = 'ͦ';
        cArr[871] = 'ͧ';
        cArr[872] = 'ͨ';
        cArr[873] = 'ͩ';
        cArr[874] = 'ͪ';
        cArr[875] = 'ͫ';
        cArr[876] = 'ͬ';
        cArr[877] = 'ͭ';
        cArr[878] = 'ͮ';
        cArr[879] = 'ͯ';
        cArr[880] = 'Ͱ';
        cArr[881] = 'ͱ';
        cArr[882] = 'Ͳ';
        cArr[883] = 'ͳ';
        cArr[884] = 'ʹ';
        cArr[885] = '͵';
        cArr[886] = 'Ͷ';
        cArr[887] = 'ͷ';
        cArr[888] = '͸';
        cArr[889] = '͹';
        cArr[890] = ' ';
        cArr[891] = 'ͻ';
        cArr[892] = 'ͼ';
        cArr[893] = 'ͽ';
        cArr[894] = ';';
        cArr[895] = 'Ϳ';
        cArr[896] = '΀';
        cArr[897] = '΁';
        cArr[898] = '΂';
        cArr[899] = '΃';
        cArr[900] = ' ';
        cArr[901] = '¨';
        cArr[902] = 'Α';
        cArr[903] = '·';
        cArr[904] = 'Ε';
        cArr[905] = 'Η';
        cArr[906] = 'Ι';
        cArr[907] = '΋';
        cArr[908] = 'Ο';
        cArr[909] = '΍';
        cArr[910] = 'Υ';
        cArr[911] = 'Ω';
        cArr[912] = 'ϊ';
        cArr[913] = 'Α';
        cArr[914] = 'Β';
        cArr[915] = 'Γ';
        cArr[916] = 'Δ';
        cArr[917] = 'Ε';
        cArr[918] = 'Ζ';
        cArr[919] = 'Η';
        cArr[920] = 'Θ';
        cArr[921] = 'Ι';
        cArr[922] = 'Κ';
        cArr[923] = 'Λ';
        cArr[924] = 'Μ';
        cArr[925] = 'Ν';
        cArr[926] = 'Ξ';
        cArr[927] = 'Ο';
        cArr[928] = 'Π';
        cArr[929] = 'Ρ';
        cArr[930] = '΢';
        cArr[931] = 'Σ';
        cArr[932] = 'Τ';
        cArr[933] = 'Υ';
        cArr[934] = 'Φ';
        cArr[935] = 'Χ';
        cArr[936] = 'Ψ';
        cArr[937] = 'Ω';
        cArr[938] = 'Ι';
        cArr[939] = 'Υ';
        cArr[940] = 'α';
        cArr[941] = 'ε';
        cArr[942] = 'η';
        cArr[943] = 'ι';
        cArr[944] = 'ϋ';
        cArr[945] = 'α';
        cArr[946] = 'β';
        cArr[947] = 'γ';
        cArr[948] = 'δ';
        cArr[949] = 'ε';
        cArr[950] = 'ζ';
        cArr[951] = 'η';
        cArr[952] = 'θ';
        cArr[953] = 'ι';
        cArr[954] = 'κ';
        cArr[955] = 'λ';
        cArr[956] = 'μ';
        cArr[957] = 'ν';
        cArr[958] = 'ξ';
        cArr[959] = 'ο';
        cArr[960] = 'π';
        cArr[961] = 'ρ';
        cArr[962] = 'ς';
        cArr[963] = 'σ';
        cArr[964] = 'τ';
        cArr[965] = 'υ';
        cArr[966] = 'φ';
        cArr[967] = 'χ';
        cArr[968] = 'ψ';
        cArr[969] = 'ω';
        cArr[970] = 'ι';
        cArr[971] = 'υ';
        cArr[972] = 'ο';
        cArr[973] = 'υ';
        cArr[974] = 'ω';
        cArr[975] = 'Ϗ';
        cArr[976] = 'β';
        cArr[977] = 'θ';
        cArr[978] = 'Υ';
        cArr[979] = 'ϒ';
        cArr[980] = 'ϒ';
        cArr[981] = 'φ';
        cArr[982] = 'π';
        cArr[983] = 'ϗ';
        cArr[984] = 'Ϙ';
        cArr[985] = 'ϙ';
        cArr[986] = 'Ϛ';
        cArr[987] = 'ϛ';
        cArr[988] = 'Ϝ';
        cArr[989] = 'ϝ';
        cArr[990] = 'Ϟ';
        cArr[991] = 'ϟ';
        cArr[992] = 'Ϡ';
        cArr[993] = 'ϡ';
        cArr[994] = 'Ϣ';
        cArr[995] = 'ϣ';
        cArr[996] = 'Ϥ';
        cArr[997] = 'ϥ';
        cArr[998] = 'Ϧ';
        cArr[999] = 'ϧ';
        cArr[1000] = 'Ϩ';
        cArr[1001] = 'ϩ';
        cArr[1002] = 'Ϫ';
        cArr[1003] = 'ϫ';
        cArr[1004] = 'Ϭ';
        cArr[1005] = 'ϭ';
        cArr[1006] = 'Ϯ';
        cArr[1007] = 'ϯ';
        cArr[1008] = 'κ';
        cArr[1009] = 'ρ';
        cArr[1010] = 'ς';
        cArr[1011] = 'ϳ';
        cArr[1012] = 'Θ';
        cArr[1013] = 'ε';
        cArr[1014] = '϶';
        cArr[1015] = 'Ϸ';
        cArr[1016] = 'ϸ';
        cArr[1017] = 'Σ';
        cArr[1018] = 'Ϻ';
        cArr[1019] = 'ϻ';
        cArr[1020] = 'ϼ';
        cArr[1021] = 'Ͻ';
        cArr[1022] = 'Ͼ';
        cArr[1023] = 'Ͽ';
        cArr[AccessibilityEventCompat.TYPE_TOUCH_EXPLORATION_GESTURE_END] = 'Е';
        cArr[1025] = 'Е';
        cArr[1026] = 'Ђ';
        cArr[1027] = 'Г';
        cArr[1028] = 'Є';
        cArr[1029] = 'Ѕ';
        cArr[1030] = 'І';
        cArr[1031] = 'І';
        cArr[1032] = 'Ј';
        cArr[1033] = 'Љ';
        cArr[1034] = 'Њ';
        cArr[1035] = 'Ћ';
        cArr[1036] = 'К';
        cArr[1037] = 'И';
        cArr[1038] = 'У';
        cArr[1039] = 'Џ';
        cArr[1040] = 'А';
        cArr[1041] = 'Б';
        cArr[1042] = 'В';
        cArr[1043] = 'Г';
        cArr[1044] = 'Д';
        cArr[1045] = 'Е';
        cArr[1046] = 'Ж';
        cArr[1047] = 'З';
        cArr[1048] = 'И';
        cArr[1049] = 'И';
        cArr[1050] = 'К';
        cArr[1051] = 'Л';
        cArr[1052] = 'М';
        cArr[1053] = 'Н';
        cArr[1054] = 'О';
        cArr[1055] = 'П';
        cArr[1056] = 'Р';
        cArr[1057] = 'С';
        cArr[1058] = 'Т';
        cArr[1059] = 'У';
        cArr[1060] = 'Ф';
        cArr[1061] = 'Х';
        cArr[1062] = 'Ц';
        cArr[1063] = 'Ч';
        cArr[1064] = 'Ш';
        cArr[1065] = 'Щ';
        cArr[1066] = 'Ъ';
        cArr[1067] = 'Ы';
        cArr[1068] = 'Ь';
        cArr[1069] = 'Э';
        cArr[1070] = 'Ю';
        cArr[1071] = 'Я';
        cArr[1072] = 'а';
        cArr[1073] = 'б';
        cArr[1074] = 'в';
        cArr[1075] = 'г';
        cArr[1076] = 'д';
        cArr[1077] = 'е';
        cArr[1078] = 'ж';
        cArr[1079] = 'з';
        cArr[1080] = 'и';
        cArr[1081] = 'и';
        cArr[1082] = 'к';
        cArr[1083] = 'л';
        cArr[1084] = 'м';
        cArr[1085] = 'н';
        cArr[1086] = 'о';
        cArr[1087] = 'п';
        cArr[1088] = 'р';
        cArr[1089] = 'с';
        cArr[1090] = 'т';
        cArr[1091] = 'у';
        cArr[1092] = 'ф';
        cArr[1093] = 'х';
        cArr[1094] = 'ц';
        cArr[1095] = 'ч';
        cArr[1096] = 'ш';
        cArr[1097] = 'щ';
        cArr[1098] = 'ъ';
        cArr[1099] = 'ы';
        cArr[1100] = 'ь';
        cArr[1101] = 'э';
        cArr[1102] = 'ю';
        cArr[1103] = 'я';
        cArr[1104] = 'е';
        cArr[1105] = 'е';
        cArr[1106] = 'ђ';
        cArr[1107] = 'г';
        cArr[1108] = 'є';
        cArr[1109] = 'ѕ';
        cArr[1110] = 'і';
        cArr[1111] = 'і';
        cArr[1112] = 'ј';
        cArr[1113] = 'љ';
        cArr[1114] = 'њ';
        cArr[1115] = 'ћ';
        cArr[1116] = 'к';
        cArr[1117] = 'и';
        cArr[1118] = 'у';
        cArr[1119] = 'џ';
        cArr[1120] = 'Ѡ';
        cArr[1121] = 'ѡ';
        cArr[1122] = 'Ѣ';
        cArr[1123] = 'ѣ';
        cArr[1124] = 'Ѥ';
        cArr[1125] = 'ѥ';
        cArr[1126] = 'Ѧ';
        cArr[1127] = 'ѧ';
        cArr[1128] = 'Ѩ';
        cArr[1129] = 'ѩ';
        cArr[1130] = 'Ѫ';
        cArr[1131] = 'ѫ';
        cArr[1132] = 'Ѭ';
        cArr[1133] = 'ѭ';
        cArr[1134] = 'Ѯ';
        cArr[1135] = 'ѯ';
        cArr[1136] = 'Ѱ';
        cArr[1137] = 'ѱ';
        cArr[1138] = 'Ѳ';
        cArr[1139] = 'ѳ';
        cArr[1140] = 'Ѵ';
        cArr[1141] = 'ѵ';
        cArr[1142] = 'Ѵ';
        cArr[1143] = 'ѵ';
        cArr[1144] = 'Ѹ';
        cArr[1145] = 'ѹ';
        cArr[1146] = 'Ѻ';
        cArr[1147] = 'ѻ';
        cArr[1148] = 'Ѽ';
        cArr[1149] = 'ѽ';
        cArr[1150] = 'Ѿ';
        cArr[1151] = 'ѿ';
        cArr[1152] = 'Ҁ';
        cArr[1153] = 'ҁ';
        cArr[1154] = '҂';
        cArr[1155] = '҃';
        cArr[1156] = '҄';
        cArr[1157] = '҅';
        cArr[1158] = '҆';
        cArr[1159] = '҇';
        cArr[1160] = '҈';
        cArr[1161] = '҉';
        cArr[1162] = 'Ҋ';
        cArr[1163] = 'ҋ';
        cArr[1164] = 'Ҍ';
        cArr[1165] = 'ҍ';
        cArr[1166] = 'Ҏ';
        cArr[1167] = 'ҏ';
        cArr[1168] = 'Ґ';
        cArr[1169] = 'ґ';
        cArr[1170] = 'Ғ';
        cArr[1171] = 'ғ';
        cArr[1172] = 'Ҕ';
        cArr[1173] = 'ҕ';
        cArr[1174] = 'Җ';
        cArr[1175] = 'җ';
        cArr[1176] = 'Ҙ';
        cArr[1177] = 'ҙ';
        cArr[1178] = 'Қ';
        cArr[1179] = 'қ';
        cArr[1180] = 'Ҝ';
        cArr[1181] = 'ҝ';
        cArr[1182] = 'Ҟ';
        cArr[1183] = 'ҟ';
        cArr[1184] = 'Ҡ';
        cArr[1185] = 'ҡ';
        cArr[1186] = 'Ң';
        cArr[1187] = 'ң';
        cArr[1188] = 'Ҥ';
        cArr[1189] = 'ҥ';
        cArr[1190] = 'Ҧ';
        cArr[1191] = 'ҧ';
        cArr[1192] = 'Ҩ';
        cArr[1193] = 'ҩ';
        cArr[1194] = 'Ҫ';
        cArr[1195] = 'ҫ';
        cArr[1196] = 'Ҭ';
        cArr[1197] = 'ҭ';
        cArr[1198] = 'Ү';
        cArr[1199] = 'ү';
        cArr[1200] = 'Ұ';
        cArr[1201] = 'ұ';
        cArr[1202] = 'Ҳ';
        cArr[1203] = 'ҳ';
        cArr[1204] = 'Ҵ';
        cArr[1205] = 'ҵ';
        cArr[1206] = 'Ҷ';
        cArr[1207] = 'ҷ';
        cArr[1208] = 'Ҹ';
        cArr[1209] = 'ҹ';
        cArr[1210] = 'Һ';
        cArr[1211] = 'һ';
        cArr[1212] = 'Ҽ';
        cArr[1213] = 'ҽ';
        cArr[1214] = 'Ҿ';
        cArr[1215] = 'ҿ';
        cArr[1216] = 'Ӏ';
        cArr[1217] = 'Ж';
        cArr[1218] = 'ж';
        cArr[1219] = 'Ӄ';
        cArr[1220] = 'ӄ';
        cArr[1221] = 'Ӆ';
        cArr[1222] = 'ӆ';
        cArr[1223] = 'Ӈ';
        cArr[1224] = 'ӈ';
        cArr[1225] = 'Ӊ';
        cArr[1226] = 'ӊ';
        cArr[1227] = 'Ӌ';
        cArr[1228] = 'ӌ';
        cArr[1229] = 'Ӎ';
        cArr[1230] = 'ӎ';
        cArr[1231] = 'ӏ';
        cArr[1232] = 'А';
        cArr[1233] = 'а';
        cArr[1234] = 'А';
        cArr[1235] = 'а';
        cArr[1236] = 'Ӕ';
        cArr[1237] = 'ӕ';
        cArr[1238] = 'Е';
        cArr[1239] = 'е';
        cArr[1240] = 'Ә';
        cArr[1241] = 'ә';
        cArr[1242] = 'Ә';
        cArr[1243] = 'ә';
        cArr[1244] = 'Ж';
        cArr[1245] = 'ж';
        cArr[1246] = 'З';
        cArr[1247] = 'з';
        cArr[1248] = 'Ӡ';
        cArr[1249] = 'ӡ';
        cArr[1250] = 'И';
        cArr[1251] = 'и';
        cArr[1252] = 'И';
        cArr[1253] = 'и';
        cArr[1254] = 'О';
        cArr[1255] = 'о';
        cArr[1256] = 'Ө';
        cArr[1257] = 'ө';
        cArr[1258] = 'Ө';
        cArr[1259] = 'ө';
        cArr[1260] = 'Э';
        cArr[1261] = 'э';
        cArr[1262] = 'У';
        cArr[1263] = 'у';
        cArr[1264] = 'У';
        cArr[1265] = 'у';
        cArr[1266] = 'У';
        cArr[1267] = 'у';
        cArr[1268] = 'Ч';
        cArr[1269] = 'ч';
        cArr[1270] = 'Ӷ';
        cArr[1271] = 'ӷ';
        cArr[1272] = 'Ы';
        cArr[1273] = 'ы';
        cArr[1274] = 'Ӻ';
        cArr[1275] = 'ӻ';
        cArr[1276] = 'Ӽ';
        cArr[1277] = 'ӽ';
        cArr[1278] = 'Ӿ';
        cArr[1279] = 'ӿ';
        BASE_CHARS = cArr;
    }
}
