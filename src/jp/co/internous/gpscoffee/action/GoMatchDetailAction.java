package jp.co.internous.gpscoffee.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import jp.co.internous.gpscoffee.dao.MatchDetailDAO;

/**
 * 購入へ遷移するアクションクラス
 * @author S.KATO
 * @version 1.0
 * @since 1.0
 */

public class GoMatchDetailAction extends ActionSupport implements SessionAware {

	/**
	 * シリアル番号の生成
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * セッション
	 */
	private Map<String,Object> session;

	/**
	 * 会員ID
	 */
	private int id;

	/**
	 * エラーメッセージ
	 */
	private String errorMessage;

	/**
	 * チケットID
	 */
	private int ticketId;

	/**
	 * 購入枚数
	 */
	private int lot;

	/**
	 * 試合名
	 */
	private String matchName;

	/**
	 * ホテル名1
	 */
	private String hotel1;
	
	/**
	 * ホテル名2
	 */
	private String hotel2;
	
	/**
	 * ホテル名3
	 */
	private String hotel3;
	
	/**
	 * 画像1
	 */
	private String img1;
	
	/**
	 * 画像2
	 */
	private String img2;

	/**
	 * 飛行機名
	 */
	private String airport;

	/**
	 * 金額
	 */
	private int price;

	/**
	 * 商品の詳細ページに移動するためのメソッド<br>
	 * 商品のリストを取得します。<br>
	 * </p>
	 * @param  
	 * @return SUCCESS/ERROR クレジットカードトークンが取得できればSUCCESS、できなければERROR
	 */
	public String execute() {
		if(session.containsKey("id_key")){
			id = (int) session.get("id_key");
		}else{
			return ERROR;
		}
		//試合名を取得できたかを確認するメソッド
		if(matchName!= null){
		}else{
			return ERROR;
		}
		if(matchName=="レアルマドリードVSバルセロナ"){
			
			hotel1="Hotel The Serras";
			hotel2="カサ キャンパー";
			hotel3="ホテル1989";
			//データベースに画像を入れれば解決
			img1="img/real6.jpg";
			img2="img/barusa03.jpeg";
			
		}else if(matchName=="バルセロナVSレアルマドリード"){
			hotel1="Hotel The Serras";
			hotel2="カサ キャンパー";
			hotel3="ホテル1989";
			//データベースに画像を入れれば解決
			img1="img/barusa03.jpeg";
			img2="img/real6.jpg";
			
		}else if(matchName=="ドルトムントVSリバプール" || matchName=="ドルトムントVSバイエルン"){
			hotel1="ロッコ フォルテ ザ チャールズ ホテル";
			hotel2="プラッツル ホテル ミュンヘン";
			hotel3="カプリ バイ フレーザー フランクフルト";
			img1="img/dorutomunto04.jpg";
			img2="";
		}else{
			return ERROR;
		}

		MatchDetailDAO dao = new MatchDetailDAO();
		if(dao.selectHotel(matchName)){			

		}
		return SUCCESS;
	}

	/**
	 * @return session
	 */
	public Map<String, Object> getSession() {
		return session;
	}

	/**
	 * @param session セットする session
	 */
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	/**
	 * @return id
	 */
	public int getId() {
		return id;
	}

	/**
	 * @param id セットする id
	 */
	public void setId(int id) {
		this.id = id;
	}

	/**
	 * @return errorMessage
	 */
	public String getErrorMessage() {
		return errorMessage;
	}

	/**
	 * @param errorMessage セットする errorMessage
	 */
	public void setErrorMessage(String errorMessage) {
		this.errorMessage = errorMessage;
	}

	/**
	 * @return ticketId
	 */
	public int getTicketId() {
		return ticketId;
	}

	/**
	 * @param ticketId セットする ticketId
	 */
	public void setTicketId(int ticketId) {
		this.ticketId = ticketId;
	}

	/**
	 * @return lot
	 */
	public int getLot() {
		return lot;
	}

	/**
	 * @param lot セットする lot
	 */
	public void setLot(int lot) {
		this.lot = lot;
	}

	/**
	 * @return matchName
	 */
	public String getMatchName() {
		return matchName;
	}

	/**
	 * @param matchName セットする matchName
	 */
	public void setMatchName(String matchName) {
		this.matchName = matchName;
	}

	/**
	 * @return hotel
	 */
	public String getHotel() {
		return hotel;
	}

	/**
	 * @param hotel セットする hotel
	 */
	public void setHotel(String hotel) {
		this.hotel = hotel;
	}

	/**
	 * @return airport
	 */
	public String getAirport() {
		return airport;
	}

	/**
	 * @param airport セットする airport
	 */
	public void setAirport(String airport) {
		this.airport = airport;
	}

	/**
	 * @return price
	 */
	public int getPrice() {
		return price;
	}

	/**
	 * @param price セットする price
	 */
	public void setPrice(int price) {
		this.price = price;
	}


}
