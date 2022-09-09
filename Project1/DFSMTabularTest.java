import org.junit.Before;
import org.junit.Test;

import static org.junit.Assert.*;

public class DFSMTabularTest {
    DFSMTabular dfsm;

    @Before
    public void setUp() throws Exception {
        dfsm = new DFSMTabular();
    }

    @Test
    public void test1() {
        assertEquals(true, dfsm.checkWord("0101"));
    }

    @Test
    public void test2() {
        assertEquals(true, dfsm.checkWord("01110001"));
    }

    @Test
    public void test3() {
        assertEquals(true, dfsm.checkWord("10010"));
    }

    @Test
    public void test4() {
        assertEquals(true, dfsm.checkWord("101111110"));
    }

    @Test
    public void test5() {
        assertEquals(true, dfsm.checkWord("01012"));
    }

    @Test
    public void test6() {
        assertEquals(true, dfsm.checkWord("011100012"));
    }

    @Test
    public void test7() {
        assertEquals(true, dfsm.checkWord("100102"));
    }

    @Test
    public void test8() {
        assertEquals(true, dfsm.checkWord("1011111102"));
    }

    @Test
    public void test9() {
        assertEquals(false, dfsm.checkWord("2"));
    }

    @Test
    public void test10() {
        assertEquals(false, dfsm.checkWord("1012"));
    }

    @Test
    public void test11() {
        assertEquals(false, dfsm.checkWord("0110"));
    }

    @Test
    public void test12() {
        assertEquals(false, dfsm.checkWord("01201"));
    }
}

