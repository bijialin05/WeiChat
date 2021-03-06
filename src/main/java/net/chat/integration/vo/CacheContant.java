package net.chat.integration.vo;

import net.chat.utils.Cache;

public class CacheContant {

	public final static Cache<String, Object> publicAccountCache = new Cache<String, Object>(
			5 * 60 * 1000, 100, 10);

	public final static Cache<String, Object> sourceCache = new Cache<String, Object>(
			5 * 60 * 1000, 100, 10);

	public final static Cache<String, Object> accountCache = new Cache<String, Object>(
			5 * 60 * 1000, 100, 10);
	public final static Cache<String, Object> gameCache = new Cache<String, Object>(
			5 * 60 * 1000, 100, 10);

	public final static Cache<String, Object> urlseqsCache = new Cache<String, Object>(
			5 * 60 * 1000, 100, 10);

	public final static Cache<String, Object> autoReplayAndCmdCache = new Cache<String, Object>(
			5 * 60 * 1000, 100, 10);

}
