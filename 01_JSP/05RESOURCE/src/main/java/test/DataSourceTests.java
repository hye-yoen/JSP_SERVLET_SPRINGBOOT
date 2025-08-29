package test;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

import Servelt.DbUtils;



class DataSourceTests {

	@Test
	void test1() throws Exception {
		DbUtils.conn();
	}

}
