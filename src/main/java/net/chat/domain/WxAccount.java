/**
 * 
 */
package net.chat.domain;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotEmpty;

/**
 * @author bo
 * 
 */
@Entity
@Table(name = "wx_account")
public class WxAccount implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -2717101184825337756L;

	@Id
	@Column(name = "id")
	@GeneratedValue
	private Long id;
	@NotEmpty(message = "公众帐号名必须输入")
	@Column(name = "name")
	private String name;

	@Column(name = "url")
	private String url;

	@Column(name = "seq")
	private String seq;

	@Column(name = "dtime")
	private Date dtime;

	@Column(name = "customerid")
	private Long customerId;

	@Column(name = "programid")
	private String programId;

	@Column(name = "note")
	private String note;

	@Column(name = "istatus")
	private int istatus;

	@Column(name = "appId")
	private String appId;

	@Column(name = "appSecret")
	private String appSecret;

	/**
	 * @return the id
	 */
	public Long getId() {
		return id;
	}

	/**
	 * @param id
	 *            the id to set
	 */
	public void setId(Long id) {
		this.id = id;
	}

	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}

	/**
	 * @param name
	 *            the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}

	/**
	 * @return the url
	 */
	public String getUrl() {
		return url;
	}

	/**
	 * @param url
	 *            the url to set
	 */
	public void setUrl(String url) {
		this.url = url;
	}

	/**
	 * @return the seq
	 */
	public String getSeq() {
		return seq;
	}

	/**
	 * @param seq
	 *            the seq to set
	 */
	public void setSeq(String seq) {
		this.seq = seq;
	}

	/**
	 * @return the dtime
	 */
	public Date getDtime() {
		return dtime;
	}

	/**
	 * @param dtime
	 *            the dtime to set
	 */
	public void setDtime(Date dtime) {
		this.dtime = dtime;
	}

	/**
	 * @return the customerId
	 */
	public Long getCustomerId() {
		return customerId;
	}

	/**
	 * @param customerId
	 *            the customerId to set
	 */
	public void setCustomerId(Long customerId) {
		this.customerId = customerId;
	}

	/**
	 * @return the programId
	 */
	public String getProgramId() {
		return programId;
	}

	/**
	 * @param programId
	 *            the programId to set
	 */
	public void setProgramId(String programId) {
		this.programId = programId;
	}

	/**
	 * @return the note
	 */
	public String getNote() {
		return note;
	}

	/**
	 * @param note
	 *            the note to set
	 */
	public void setNote(String note) {
		this.note = note;
	}

	/**
	 * @return the istatus
	 */
	public int getIstatus() {
		return istatus;
	}

	/**
	 * @param istatus
	 *            the istatus to set
	 */
	public void setIstatus(int istatus) {
		this.istatus = istatus;
	}

	public String getAppId() {
		return appId;
	}

	public void setAppId(String appId) {
		this.appId = appId;
	}

	public String getAppSecret() {
		return appSecret;
	}

	public void setAppSecret(String appSecret) {
		this.appSecret = appSecret;
	}

}
