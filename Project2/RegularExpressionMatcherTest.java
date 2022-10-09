import org.junit.Before;
import org.junit.Test;

import java.util.ArrayList;

import static org.junit.Assert.*;

public class RegularExpressionMatcherTest {

    ArrayList<String> wordsToTest;
    ArrayList<String> expectedResults;

    @Before
    public void setUp() throws Exception {
        wordsToTest = new ArrayList<String>();
        expectedResults = new ArrayList<String>();
    }

    @Test
    public void test_language1() {
        expectedResults.clear();
        expectedResults.add("0101");
        expectedResults.add("01110001");
        expectedResults.add("10010");
        expectedResults.add("101111110");
        expectedResults.add("01012");
        expectedResults.add("011100012");
        expectedResults.add("100102");
        expectedResults.add("1011111102");
        expectedResults.add("011001");
        expectedResults.add("100110");
        expectedResults.add("011111111111111100000000000000000001");
        expectedResults.add("0111111111111111000000000000000000012");

        wordsToTest.clear();
        wordsToTest.addAll(expectedResults);
        wordsToTest.add("2");
        wordsToTest.add("1012");
        wordsToTest.add("0110");
        wordsToTest.add("01201");
        wordsToTest.add("");
        wordsToTest.add("1");
        wordsToTest.add("101");
        wordsToTest.add("011111111111111100000000000000000002");

        Language1Matcher l1m = new Language1Matcher();
        l1m.setWordsToCompareAgainst(wordsToTest);
        assertEquals("Language 1", expectedResults, l1m.findMatches());
    }

    @Test
    public void test_language2() {
        expectedResults.clear();
        expectedResults.add("(336) 758-4427");
        expectedResults.add("336-758-4427");
        expectedResults.add("(336) 716-9253");
        expectedResults.add("336-716-9253");
        expectedResults.add("(336) 758-0000");
        expectedResults.add("(336) 716-0000");
        expectedResults.add("336-758-0000");
        expectedResults.add("336-716-0000");

        wordsToTest.clear();
        wordsToTest.addAll(expectedResults);
        wordsToTest.add("(803) 758-4427");
        wordsToTest.add("336) 758-4427");
        wordsToTest.add("(336 758-4427");
        wordsToTest.add("(336)758-4427");
        wordsToTest.add("(336) 7584427");
        wordsToTest.add("(336) 723-4427");
        wordsToTest.add("336 758-4427");
        wordsToTest.add("336 758 4427");
        wordsToTest.add("(336) 758-44279");
        wordsToTest.add("(336) 7584-4427");
        wordsToTest.add("(336) 716-442");
        wordsToTest.add("(336) 75-4427");

        Language2Matcher l2m = new Language2Matcher();
        l2m.setWordsToCompareAgainst(wordsToTest);
        assertEquals("Language 2", expectedResults, l2m.findMatches());
    }

    @Test
    public void test_language3() {
        expectedResults.clear();
        expectedResults.add("$1.00");
        expectedResults.add("$22.75");
        expectedResults.add("$100.50");
        expectedResults.add("$1467.98");
        expectedResults.add("-$1.59");
        expectedResults.add("-$12.38");
        expectedResults.add("-$395.42");
        expectedResults.add("$0.00");
        expectedResults.add("-$0.00");
        expectedResults.add("$0.37");
        expectedResults.add("$00.37");

        wordsToTest.clear();
        wordsToTest.addAll(expectedResults);
        wordsToTest.add("1.00");
        wordsToTest.add("$.00");
        wordsToTest.add("$100");
        wordsToTest.add("$1.");
        wordsToTest.add("$1.0");
        wordsToTest.add("$1.005");
        wordsToTest.add("$123.005");
        wordsToTest.add("1$23.05");
        wordsToTest.add("$-23.05");

        Language3Matcher l3m = new Language3Matcher();
        l3m.setWordsToCompareAgainst(wordsToTest);
        assertEquals("Language 3", expectedResults, l3m.findMatches());
    }
}
