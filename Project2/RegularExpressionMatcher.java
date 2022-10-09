import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class RegularExpressionMatcher {

    protected String regularExpressionString;
    protected ArrayList<String> wordsToCompareAgainst;
    protected Pattern pattern;

    public RegularExpressionMatcher() {
        regularExpressionString = "";
        wordsToCompareAgainst = null;
    }

    public void setRegularExpressionString(String regexInput) {
        regularExpressionString = regexInput;
        pattern = Pattern.compile(regularExpressionString);
    }

    public String getRegularExpressionString() {
        return regularExpressionString;
    }

    public void setWordsToCompareAgainst(ArrayList<String> wordsInput) {
        wordsToCompareAgainst = wordsInput;
    }

    public ArrayList<String> findMatches() {

        // TODO: Given the ArrayList wordsToCompareAgainst
        // and the Pattern variable named pattern representing
        // a regular expression, add to the ArrayList matchingList
        // the words that are in the wordsToCompareAgainst list that "match"
        // (could have been generated from) the regular expression
        ArrayList<String> matchingList = new ArrayList<String>();

        // wordsToCompareAgainst has been filled with words via a separate
        // method


        return matchingList;
    }
}
