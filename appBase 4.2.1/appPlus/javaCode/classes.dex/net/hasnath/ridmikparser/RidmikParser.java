package net.hasnath.ridmikparser;

import android.content.Context;
import net.hasnath.android.keyboard.AutoCorrect;

public class RidmikParser {
    private AutoCorrect autoCorrect = null;
    private BanglaUnicode unicode = new BanglaUnicode();

    public RidmikParser(Context context) {
        this.autoCorrect = new AutoCorrect(context);
    }

    public static void main(String[] arg) {
    }

    public String toBangla(String engWord) {
        if (engWord.matches("[ঁ-৺]+")) {
            return engWord;
        }
        if (true) {
            String corrected = this.autoCorrect.getCorrection(engWord);
            if (corrected != null) {
                engWord = corrected;
            }
        }
        StringBuilder st = new StringBuilder();
        char carry = '\u0000';
        char secondCarry = '\u0000';
        char thirdCarry = '\u0000';
        boolean jukta = false;
        boolean prevJukta = false;
        boolean prevDual = false;
        for (char now : engWord.toCharArray()) {
            char now2;
            if ((now2 < 'a' || now2 > 'z') && ((now2 < 'A' || now2 > 'Z') && (now2 < '0' || now2 > '9'))) {
                st.append(now2);
                carry = '\u0000';
            } else {
                String dual;
                if (now2 == 'A' || now2 == 'B' || now2 == 'C' || now2 == 'E' || now2 == 'F' || now2 == 'P' || now2 == 'X') {
                    now2 = Character.toLowerCase(now2);
                }
                if (now2 == 'K' || now2 == 'L' || now2 == 'M' || now2 == 'V' || now2 == 'Y' || now2 == 'W' || now2 == 'Q') {
                    now2 = Character.toLowerCase(now2);
                }
                if (now2 == 'H' && carry != 'T') {
                    now2 = 'h';
                }
                if ((carry == '\u0000' || isVowel(carry)) && now == 'w') {
                    now2 = 'O';
                }
                if (isVowel(now2)) {
                    if (carry == 'r' && secondCarry == 'r' && now2 == 'i') {
                        if (thirdCarry == '\u0000') {
                            st.delete(st.length() - 2, st.length());
                            st.append("ঋ");
                        } else {
                            st.delete(st.length() - 3, st.length());
                            st.append("ৃ");
                        }
                        carry = 'i';
                    } else {
                        if (secondCarry != '\u0000') {
                            dual = this.unicode.getDualKar(now2, carry);
                        } else {
                            dual = this.unicode.getDual(now2, carry);
                        }
                        if (dual != null) {
                            if (carry != 'o') {
                                st.delete(st.length() - 1, st.length());
                            }
                            if (isVowel(secondCarry)) {
                                st.append(this.unicode.get(carry)).append(this.unicode.get(now2));
                            } else {
                                st.append(dual);
                            }
                        } else if (now2 != 'o' || carry == '\u0000') {
                            if (!isVowel(carry) && carry != '\u0000') {
                                st.append(this.unicode.getKar(now2));
                            } else if (now2 != 'a' || carry == '\u0000') {
                                st.append(this.unicode.get(now2));
                            } else {
                                st.append(this.unicode.get('y')).append(this.unicode.getKar('a'));
                            }
                        } else if (isVowel(carry)) {
                            st.append(this.unicode.get('O'));
                        } else {
                            thirdCarry = secondCarry;
                            secondCarry = carry;
                            carry = now2;
                        }
                    }
                }
                if (now2 == 'y' || now2 == 'Z' || now2 == 'r') {
                    jukta = false;
                }
                boolean tempNoCarry = jukta && this.unicode.getDual(now2, carry) == null;
                if (isConsonant(now2) && isConsonant(carry) && !tempNoCarry) {
                    if ((now2 == 'y' || now2 == 'Z') && !(now2 == 'y' && carry == 'q' && secondCarry == 'q')) {
                        now2 = 'z';
                    }
                    if (secondCarry == 'k' && carry == 'k' && now2 == 'h') {
                        carry = 'S';
                    }
                    dual = this.unicode.getDual(now2, carry);
                    if (dual == null || prevDual) {
                        prevDual = false;
                        prevJukta = jukta;
                        jukta = false;
                        if (secondCarry != 'r' && carry == 'r' && now2 == 'z') {
                            st.append("‍্");
                        } else if ((carry != 'r' || secondCarry == 'r') && !(carry == 'r' && secondCarry == 'r' && isConsonant(thirdCarry))) {
                            if (carry == 'r' && secondCarry == 'r' && (isVowel(thirdCarry) || thirdCarry == '\u0000')) {
                                st.delete(st.length() - 1, st.length());
                                st.append("্");
                            } else if (!notJukta(thirdCarry, secondCarry, carry, now2)) {
                                st.append("্");
                                jukta = true;
                            }
                        }
                        st.append(this.unicode.get(now2));
                    } else {
                        prevDual = true;
                        if (thirdCarry == 'g' && secondCarry == 'k' && carry == 'S' && now2 == 'h') {
                            jukta = false;
                            prevJukta = false;
                        }
                        boolean firstOrAfterVowelOrJukta = isVowel(secondCarry) || secondCarry == '\u0000' || prevJukta;
                        if (!dualSitsUnder(thirdCarry, secondCarry, carry, now2) || firstOrAfterVowelOrJukta) {
                            if (jukta) {
                                st.delete(st.length() - 2, st.length());
                            } else {
                                st.delete(st.length() - 1, st.length());
                            }
                            st.append(dual);
                            prevJukta = jukta;
                            jukta = false;
                        } else {
                            st.delete(st.length() - 1, st.length());
                            if (secondCarry == 'r' && thirdCarry == 'r') {
                                st.delete(st.length() - 1, st.length());
                            }
                            if (!(jukta || secondCarry == '\u0000' || isVowel(secondCarry))) {
                                st.append("্");
                            }
                            st.append(dual);
                            prevJukta = jukta;
                            jukta = true;
                        }
                    }
                } else if (isConsonant(now2)) {
                    prevDual = false;
                    if (isVowel(carry) && now2 == 'Z') {
                        st.append("্");
                    }
                    if (carry == '\u0000' && now2 == 'x') {
                        st.append(this.unicode.get('e'));
                    }
                    prevJukta = jukta;
                    jukta = false;
                    if (now2 == 'w' && isConsonant(carry) && isConsonant(secondCarry)) {
                        st.append("্");
                        prevJukta = false;
                        jukta = true;
                    }
                    if (thirdCarry == 'k' && secondCarry == 'S' && carry == 'h' && (now2 == 'N' || now2 == 'm')) {
                        st.append("্");
                        prevJukta = false;
                        jukta = true;
                    }
                    st.append(this.unicode.get(now2));
                }
                thirdCarry = secondCarry;
                secondCarry = carry;
                carry = now2;
            }
        }
        return st.toString();
    }

    boolean isVowel(char now) {
        if ("AEIOUaeiou".indexOf(now) == -1) {
            return false;
        }
        return true;
    }

    boolean isConsonant(char now) {
        return !isVowel(now) && Character.isLetter(now);
    }

    boolean isCharInString(char now, String foo) {
        if (foo.indexOf(now) == -1) {
            return false;
        }
        return true;
    }

    boolean dualSitsUnder(char thirdCarry, char secondCarry, char carry, char now) {
        if (secondCarry == 'r' && thirdCarry == 'r') {
            return true;
        }
        if (secondCarry == 'r') {
            return false;
        }
        String djkt = this.unicode.getDjkt(carry, now);
        if (djkt != null && isCharInString(secondCarry, djkt)) {
            return true;
        }
        String djktt = this.unicode.getDjktt(carry, now);
        return djktt != null ? djktt.contains(Character.toString(thirdCarry) + Character.toString(secondCarry)) : false;
    }

    boolean notJukta(char thirdCarry, char secondCarry, char carry, char now) {
        if (secondCarry == 'n' && carry == 'g' && now == 'r') {
            return true;
        }
        if (now == 'r' || now == 'z' || now == 'w') {
            return false;
        }
        String foo = this.unicode.getDualJkt(secondCarry, carry);
        if (foo == null) {
            foo = this.unicode.getJkt(carry);
            if (foo == null) {
                return true;
            }
            if (isCharInString(now, foo)) {
                return false;
            }
            return true;
        } else if (isCharInString(now, foo)) {
            return false;
        } else {
            return true;
        }
    }
}
