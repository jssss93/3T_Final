package com.kh.iclass.common.util;

import java.text.DecimalFormat;

public class SequenceUtils {

	private final static int SEQ_START = 0;

	private final static int SEQ_END = 999999999;

	private final static DecimalFormat df = new DecimalFormat("000000000");
	protected static int seq = 0;
	protected static Object obj = new Object();

	public static String getSeqNumber() {

		synchronized (obj) {
			if (seq == SEQ_END)
				seq = SEQ_START;

			seq++;
			String seqNumber = df.format(seq);
			return seqNumber;
		}
	}
}