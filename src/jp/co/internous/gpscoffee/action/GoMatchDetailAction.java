package jp.co.internous.gpscoffee.action;

import java.util.Map;

/**
 * 購入へ遷移するアクションクラス
 * @author S.KATO
 * @version 1.0
 * @since 1.0
 */

public class GoMatchDetailAction {
	
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
     * ホテル名
     */
    private String hotel;
    
    /**
     * 飛行機名
     */
    private String airport;
    
    /**
     * <p>
     * カートへ遷移するためのメソッド<br>
     * 商品のリストを取得します。<br>
     * </p>
     * @return SUCCESS/ERROR クレジットカードトークンが取得できればSUCCESS、できなければERROR
     */
    
  
	
}
