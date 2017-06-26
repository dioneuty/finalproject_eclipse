package com.hb.project.model.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.log4j.Logger;

import com.hb.project.model.dto1.AdminVo;
import com.hb.project.model.dto1.HeadStockVo;
import com.hb.project.model.dto1.OrderVo;
import com.hb.project.model.dto1.StoreEduVo;
import com.hb.project.model.dto1.StoreOwnerVo;
import com.hb.project.model.dto1.StoreStockVo;
import com.hb.project.model.dto1.StoreWorkerVo;

public class ModelDaoImpl1 implements ModelDao {
	private SqlSessionFactory sqlSessionFactory;
	private SqlSession sqlSession;
	private static Logger log = Logger.getLogger(ModelDaoImpl1.class);
	
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public AdminVo ad_oneInfo(int sabun) throws SQLException {
		return sqlSession.selectOne("model.ad_oneInfo", sabun);
	}

	@Override
	public List<HashMap<String, Object>> ad_storeRanks() throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<HeadStockVo> stk_headStocks() throws SQLException {
		return null;
	}

	@Override
	public HeadStockVo stk_oneHeadStock(int stockNum, String stockName) throws SQLException {
		return null;
	}

	@Override
	public List<StoreStockVo> stk_storeStocks() throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public StoreStockVo stk_oneStoreStock(int stockNum, String stockName) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<OrderVo> or_orders() throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public OrderVo or_oneOrder(int storeNum, String storeName, String stockName) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<StoreOwnerVo> so_ownerInfos() throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public StoreOwnerVo so_oneOwnerInfo(int ownerNum, String ownerName) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<StoreWorkerVo> sw_workerInfos() throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public StoreWorkerVo sw_oneworkerInfo(int workerNum, String workerName) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<StoreEduVo> edu_testSubjects() throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<HashMap<String, Object>> so_storeList() throws SQLException {
		List<HashMap<String, Object>> list = sqlSession.selectList("model.so_storeList");
		System.out.println(list);
		return list;
	}

	@Override
	public List<HashMap<String, Object>> so_storeListArea(String area) {
		List<HashMap<String, Object>> list = sqlSession.selectList("model.so_storeListArea", area);
		System.out.println(list);
		return list;
	}

	@Override
	public List<HashMap<String, Object>> so_storeListFname(String fname) {
		List<HashMap<String, Object>> list = sqlSession.selectList("model.so_storeListFname", fname);
		System.out.println(list);
		return list;
	}

	@Override
	public List<HashMap<String, Object>> board_paging(String table, String pk) throws SQLException {
		HashMap<String, Object> params = new HashMap<String, Object>();
		params.put("table", table);
		params.put("pk", pk);
		List<HashMap<String, Object>> list = sqlSession.selectList("model.boardList", params);
		System.out.println(list);
		return list;
	}

	@Override
	public List<Integer> board_pagelinks(String table) throws SQLException {
//		PagingVo page= sqlSession.selectOne("model.alarmRow");
//		int rownum = page.getRows();
		
		int rownum = sqlSession.selectOne("model.boardCount", table);
		System.out.println(rownum);
		
		int pagenum = 0;
		if(rownum > 10){
			pagenum = rownum / 10;
			if( rownum % (10 * pagenum) != 0){
				pagenum ++;
			}
		}
		
		List<Integer> pages = new ArrayList<Integer>();
		System.out.println(pagenum);
		for (int i = 1; i <= pagenum; i++) {
			pages.add(i);
		}
		
		return pages;
	}
	
	@Override
	public List<Integer> board_pagelinks(int idx, String table) throws SQLException {
		int colCnt = ((idx-1)/ 5 )+1;                       
		int startPage  = ( ( (idx-1) / 5) * 5 ) + 1;
		int maxRow = sqlSession.selectOne("model.boardCount", table);
		int endPage = ( ( (idx-1) / 5) * 5 ) + 5; 
		
		System.out.println("mr:"+ maxRow);
		int pageNum = 0;
		
		if(maxRow > 10){
			pageNum = maxRow / 10;
			if( maxRow % (10 * pageNum) != 0){
				pageNum ++;
			}
		}else{
			pageNum = 1;
		}
		
		int maxCol = ((pageNum - 1)/ 5 ) + 1 ;
		
		System.out.println("mc"+ maxCol);
		System.out.println("p"+ pageNum);
		System.out.println("sp"+ startPage);
		int subtr = pageNum - idx;
		System.out.println("pd" + (subtr));
		
		// && (pageNum - idx) < 4
		if(colCnt == maxCol){
			endPage = ( ( (idx-1) / 5) * 5 ) + ( pageNum - startPage + 1);
		}
		
		List<Integer> pages = new ArrayList<Integer>();
		System.out.println("colCnt: "+colCnt+", startPage: "+startPage+", endPage: "+endPage);
		for (int i = startPage; i <= endPage; i++) {
			pages.add(i);
		}
		return pages;
	}

	@Override
	public List<HashMap<String, Object>> board_paging(int page, String table, String pk) throws SQLException{
		HashMap<String, Object> params = new HashMap<String, Object>();
		params.put("table", table);
		params.put("pk", pk);
		int maxRow = sqlSession.selectOne("model.boardMax", params);
		int countRow = sqlSession.selectOne("model.boardCount", table);
		int row_max = maxRow - ((--page) * 10 );
		int row_min = countRow - 9;
		
		List<HashMap<String, Object>> list = null;
		
		if(row_min < 0){
			row_min = 0;
		}
		
		System.out.println(row_min);
		System.out.println(row_max);

		params.put("min", row_min);
		params.put("max", row_max);
		
		if(maxRow>0){
			list = sqlSession.selectList("model.boardPaging", params);
		}
		System.out.println(list);
		return list;
	}

	@Override
	public Map<String, Integer> page_startEnd(int idx, String table) {
		int maxRow = sqlSession.selectOne("model.boardCount", table);
		int pageNum = 0;

		if(maxRow > 10){
			pageNum = maxRow / 10;
			if( maxRow % (10 * pageNum) != 0){
				pageNum ++;
			}
		}else{
			pageNum = 1;
		}
		
		Map<String, Integer> startEnd = new HashMap<String, Integer>();
		startEnd.put("pageNum", pageNum);
		int prevPage = (idx-1) / 5 * 5 ;
		int nextPage = (((idx-1) / 5 ) * 5 ) + 6;
		System.out.println("prevP "+prevPage+" nextP "+nextPage);
		startEnd.put("prevPage", prevPage);
		startEnd.put("nextPage", nextPage);		
		return startEnd;
	}

	@Override
	public Map<String, Integer> pageSearch_startEnd(String search_type, String search_text, String table, String schema, int idx) throws SQLException {
		HashMap<String, Object> params = new HashMap<String, Object>();
		params.put("type", search_type);
		params.put("text", search_text);
		params.put("table", table);
		params.put("schema", schema);

		int maxRow = sqlSession.selectOne("model.boardSearchCount", params);
		int pageNum = 0;
		
		System.out.println("startendmaxRow: "+ maxRow);
		
		if(maxRow > 10){
			pageNum = maxRow / 10;
			if( maxRow % (10 * pageNum) != 0){
				pageNum ++;
			}
		}else{
			pageNum = 1;
		}
		
		System.out.println("pageNum: " + pageNum);
		
		Map<String, Integer> startEnd = new HashMap<String, Integer>();
		startEnd.put("pageNum", pageNum);
		int prevPage = (idx-1) / 5 * 5 ;
		int nextPage = (((idx-1) / 5 ) * 5 ) + 6;
		System.out.println("prevP "+prevPage+" nextP "+nextPage);
		startEnd.put("prevPage", prevPage);
		startEnd.put("nextPage", nextPage);		
		return startEnd;
	}

	@Override
	public List<HashMap<String, Object>> board_search(String search_type, String search_text, String table, String schema, String pk) throws SQLException{
		List<HashMap<String, Object>> list = null;
		HashMap<String, Object> params = new HashMap<String, Object>();
		params.put("type", search_type);
		params.put("text", search_text);
		params.put("table", table);
		params.put("schema", schema);
		params.put("pk", pk);
		
		if(search_type.equals("sub")){
			list = sqlSession.selectList("model.boardSearch", params);
		}else if(search_type.equals("cntnt")){
			list = sqlSession.selectList("model.boardSearch", params);
		}else if(search_type.equals("author")){
			list = sqlSession.selectList("model.boardSearch", params);
		}

		/*else if(search_type == "date"){
			list = sqlSession.selectList("model.boardDateSearch", params);
		}*/
		
		System.out.println(list);
		return list;
	}
	
	
	public List<HashMap<String, Object>> board_date_search(String search_type, String search_text, String table, String first, String last) throws SQLException{
		return null;
		
	}

	@Override
	public List<HashMap<String, Object>> board_search(String search_type, String search_text, String table)
			throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<HashMap<String, Object>> board_searchPaging(String search_type, String search_text, String table, String pk, String schema, int idx) throws SQLException {
		List<HashMap<String, Object>> list = null;
		HashMap<String, Object> params = new HashMap<String, Object>();
		params.put("type", search_type);
		params.put("text", search_text);
		params.put("table", table);
		params.put("pk", pk);
		params.put("schema", schema);
		
		// if(search_type.equals("sub")){
		// 	list = sqlSession.selectList("model.boardSearch", params);
		// }else if(search_type.equals("cntnt")){
		// 	list = sqlSession.selectList("model.boardSearch", params);
		// }else if(search_type.equals("author")){
		// 	list = sqlSession.selectList("model.boardSearch", params);
		// }

		/*else if(search_type == "date"){
			list = sqlSession.selectList("model.boardDateSearch", params);
		}*/
		
		
		
		int maxRow = sqlSession.selectOne("model.boardSearchMax", params);
		int countRow = sqlSession.selectOne("model.boardSearchCount", params);
		
		System.out.println("pagingmaxRow"+ maxRow);
		int row_max = maxRow - ((--idx) * 10 );
		int row_min = countRow - 9;
		
		if(row_min < 0 ){
			row_min = 0;
		}

		params.put("min", row_min);
		params.put("max", row_max);
		
		if(maxRow > 0){
			list = sqlSession.selectList("model.boardSearchPaging", params);
		}

		System.out.println(list);
		return list;
	}

	@Override
	public List<Object> boardSearch_pagelinks(String search_type, String search_text, String table, String schema, int idx) throws SQLException {
		HashMap<String, Object> params = new HashMap<String, Object>();
		params.put("type", search_type);
		params.put("text", search_text);
		params.put("table", table);
		params.put("schema", schema);

		int maxRow = sqlSession.selectOne("model.boardSearchCount", params);
		int colCnt = ((idx-1)/ 5 )+1;                       
		int startPage  = ( ( (idx-1) / 5) * 5 ) + 1;
		int endPage = ( ( (idx-1) / 5) * 5 ) + 5; 
		
		int pageNum = 0;
		
		System.out.println("mR"+maxRow);
		
		if(maxRow > 10){
			pageNum = maxRow / 10;
			if( maxRow % (10 * pageNum) != 0){
				pageNum ++;
			}
		}else{
			pageNum = 1;
		}
		
		int maxCol = ((pageNum - 1)/ 5 ) + 1 ;
		
		System.out.println("mc"+ maxCol);
		System.out.println(pageNum);
		System.out.println(startPage);
		int subtr = pageNum - idx;
		System.out.println("pd" + (subtr));
		
		// && (pageNum - idx) < 4
		
		if(colCnt == maxCol){
			endPage = ( ( (idx-1) / 5) * 5 ) + ( pageNum - startPage + 1);
		}
		
		List<Object> pages = new ArrayList<Object>();
		System.out.println("colCnt: "+colCnt+", startPage: "+startPage+", endPage: "+endPage);
		for (int i = startPage; i <= endPage; i++) {
			pages.add(i);
			
		}
		System.out.println(pages);
		return pages;
	}

	

	@Override
	public Map<String, Object> board_detail(int idx, String table, String pk) throws SQLException {
		Map<String, Object> params = new HashMap<String, Object>();
		
		params.put("idx", idx);
		params.put("table", table);
		params.put("pk", pk);
		Map<String, Object> list = sqlSession.selectOne("model.boardDetailOne", params);
		System.out.println(list);
		return list;
	}

	@Override
	public void alarm_addOne(HashMap<String, Object> bean) throws SQLException {
		sqlSession.insert("model.alarmAdd", bean);
	}

	@Override
	public void alarm_cnt(int idx) throws SQLException {
		HashMap<String, Object> params = new HashMap<String, Object>();
		params.put("table", "inform");
		params.put("pk", "anum");
		params.put("cnt", "achk");
		params.put("idx", idx);
		
		HashMap<String, Object> result = sqlSession.selectOne("model.boardViewCnt", params);
		System.out.println(result);
		
		// ����! ������ �빮�� warning: you must type the names of parameters in Uppercase
		int nowcnt = Integer.parseInt(String.valueOf(result.get("ACHK")));
		int anum = Integer.parseInt(String.valueOf(result.get("ANUM")));

		System.out.println("nowcnt: " + nowcnt + " anum: " + anum);
		
		if(nowcnt < 1){
			sqlSession.update("model.alarmUpCnt", anum);
		}
	}

	@Override
	public Integer board_nowPage(int idx, String table) {
		int maxRow = sqlSession.selectOne("model.boardCount", table);

		int nowRow =(maxRow - idx) + 1;
		int pageNum = 0;
		if(nowRow > 10){
			pageNum = nowRow / 10;
			if( nowRow % (10 * pageNum) != 0){
				pageNum ++;
			}
		}else{
			pageNum = 1;
		}
		return pageNum;
	}

	@Override
	public void alarm_edit(HashMap<String, Object> bean) throws SQLException{
		sqlSession.update("model.alarmEdit", bean);
	}

	@Override
	public void board_deleteNum(int idx, String table, String schema) throws SQLException {
		HashMap<String, Object> bean = new HashMap<String, Object>();
		bean.put("idx", idx);
		bean.put("table", table);
		bean.put("schema", schema);
		int primaryNumKey = sqlSession.selectOne("model.boardViewPKnum", bean);
		bean.put("num", primaryNumKey);
		sqlSession.delete("model.boardDeleteOne_Num",bean);
	}

	@Override
	public void board_deleteString(int idx, String table, String schema) throws SQLException {
		HashMap<String, Object> bean = new HashMap<String, Object>();
		bean.put("idx", idx);
		bean.put("table", table);
		bean.put("schema", schema);
		String primaryStringKey = sqlSession.selectOne("model.boardViewPKstring", bean);
		bean.put("string", primaryStringKey);
		sqlSession.delete("model.boardDetailOne_String",bean);
	}

	@Override
	public void store_addOne(HashMap<String, Object> bean) throws SQLException {
		sqlSession.insert("model.so_storeAdd", bean);
		
	}

	@Override
	public void store_edit(HashMap<String, Object> bean) throws SQLException {
		sqlSession.update("model.so_storeEdit", bean);
		
	}

	@Override
	public List<HashMap<String, Object>> selectList(String table) throws SQLException {

		return sqlSession.selectOne("model.selectAll", table);
	
	}

	
	
	
}