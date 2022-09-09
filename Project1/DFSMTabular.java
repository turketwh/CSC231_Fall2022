import java.util.ArrayList;

public class DFSMTabular {

    int numberOfStates;
    int numberOfAlphabetSymbols;
    ArrayList<Boolean> acceptingStates;
    int[][] table;

    // '0', '1', and '2' have the values 48-50 in ASCII
    // This function will turn those ASCII values into the integers 0, 1, 2
    private int symbolToInt(char symbolArg) {
        int symbolAsciiValue = (int) symbolArg;
        int transformedValue = symbolAsciiValue - 48;
        return transformedValue;
    }

    // This function, given the current state the machine is in and the next input symbol,
    // returns the next state the machine should be in by looking in the table you
    // will set up in the constructor
    private int nextState(int currentStateArg, char symbolArg) {
        int intSymbol = symbolToInt(symbolArg);

        // The "if" part of this if/else handles symbols not in the alphabet
        if ((intSymbol < 0) || (intSymbol >= numberOfAlphabetSymbols)) {
            return -1;
        }
        // The "else" does the table lookup based on the current state and input symbol
        else {
            return table[currentStateArg][intSymbol];
        }
    }

    // This function returns true if the word passed in to the function is accepted
    // by the machine and returns false if the word uses inappropriate symbols not
    // in the alphabet or if the word is rejected by the machine
    // It also generates a trace of states visited by the machine.
    // The trace is not printed currently, but can be by uncommenting the line
    // that says "//System.out.println("Trace: " + trace);"
    public boolean checkWord(String wordArg) {

        // This variable keeps track of which symbol in the word is being read
        int index;

        // This variable is the length of the word (used to determine the end of the word)
        int lengthOfWord = wordArg.length();

        // This string variable is the trace (the record of which states are visited)
        // The trace is initially empty and will have items added to it when
        // states are visited.
        String trace = "";

        // This variable represents the state the machine is in.
        // The initial state is 0
        int state = 0;

        // This loop determines each state the machine is to enter
        // by looping, updating the state and the symbol from the word
        // being read
        index = 0;
        while ((index < lengthOfWord) && (state != -1)) {
            trace = trace + " s" + state;
            state = nextState(state, wordArg.charAt(index));
            index = index + 1;
        }

        // The last state is added to the trace and the trace is printed
        trace = trace + " s" + state;
        trace = trace.trim();
        //System.out.println("Trace: " + trace);

        // Return false (the word is rejected) if -1 is the state
        // Otherwise, return whether or not the state is listed as
        // accepting or rejecting
        if (state == -1) {
            return false;
        } else {
            return acceptingStates.get(state);
        }
    }

    // THIS FUNCTION IS WHERE YOU SHOULD MAKE CHANGES
    // This function is the constructor for the machine.  It defines
    // the number of states, the alphabet, the rules, and the accepting states.
    public DFSMTabular() {

        // This variable is used for loops
        int index;

        // TODO: UPDATE THIS VARIABLE TO REPRESENT THE NUMBER OF STATES IN YOUR MACHINE
        // This variable represents how many states are in the machine
        numberOfStates = ??????;

        // This variable represents the size of the alphabet
        numberOfAlphabetSymbols = 3;

        // This array list contains for each state whether or not it is accepting (true/false)
        acceptingStates = new ArrayList<Boolean>();
        // Initially mark all states as not accepting
        for (index = 0; index < numberOfStates; index++) {
            acceptingStates.add(false);
        }

        // TODO: UPDATE THE acceptingStates ARRAYLIST TO INDICATE THE FINAL STATES
        // USING acceptStates.set(???, true); REPLACING ??? WITH THE INTEGER ID OF ANY ACCEPTING STATE
        // Record which states are accepting


        // This 2-d array encodes the transitions/rules of the finite state machine
        table = new int[numberOfStates][numberOfAlphabetSymbols];

        // TODO: UPDATE THIS SECTION, WRITING CODE SIMILAR TO WHAT IS COMMENTED TO REPRESENT THE
        // ASSOCIATION OF AN INTEGER RESULT STATE WITH A MOVE FROM THE CURRENT STATE
        // ON THE CURRENT INPUT
        // DO THIS FOR ALL STATE, INPUT PAIRS
        // table[0][0] = ?;

    }
}

