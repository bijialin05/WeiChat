package net.chat.formbean;

import java.util.List;

import net.chat.domain.WxMsgType;

public class ReplyMsgForm extends AccountForm {

	private List<WxMsgType> msgTypes;

	public List<WxMsgType> getMsgTypes() {
		return msgTypes;
	}

	public void setMsgTypes(List<WxMsgType> msgTypes) {
		this.msgTypes = msgTypes;
	}

}
