package Test;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

class PassCheckTest {

	String result;
    
    @Test
    final void 패스워드개수조건() {
        result = PassCheck.Passcheck("tk1");
        assertTrue(result.contentEquals("false"));
    }
    @Test
    final void 문자의조건() {
        result = PassCheck.Passcheck("tkdgns");
        assertTrue(result.contentEquals("false"));
    }
    @Test
    final void 숫자의조건() {
        result = PassCheck.Passcheck("123456");
        assertTrue(result.contentEquals("false"));
    }
    @Test
    final void 특수문자조건() {
        result = PassCheck.Passcheck("tkdngs1!!!!");
        assertTrue(result.contentEquals("false"));
    }

    @Test
    final void 모두만족() {
        result = PassCheck.Passcheck("tkdngs3736");
        assertTrue(result.contentEquals("true"));
    }
   

}
