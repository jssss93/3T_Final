package com.kh.iclass.common.util;

import java.util.UUID;

/*
위에서 DB를 생성할 때 서버에 저장될 파일명은 32글자로 한다고 이야기를 했었다.
getRandomString() 메서드는 32글자의 랜덤한 문자열(숫자포함)을 만들어서 반환해주는 기능을 한다. 
지금은 파일이름의 랜덤생성에만 사용되기 때문에 굳이 CommonUtils 클래스를 따로 만들어줄 필요는 없지만
추후에도 사용이 되고, 앞으로 여러가지 다른 기능도 추가하기 위해서 먼저 CommonUtils 클래스로 분리하였다.
*/

public class CommonUtils {
	public static String getRandomString() {
		return UUID.randomUUID().toString().replaceAll("-", "");
	}

}
