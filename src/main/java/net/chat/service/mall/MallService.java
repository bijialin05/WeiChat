/**
 * 
 */
package net.chat.service.mall;

import java.util.List;

import net.chat.domain.mall.WxMall;
import net.chat.domain.mall.WxPrdtSubCategory;
import net.chat.domain.mall.WxProductCategory;
import net.chat.formbean.mall.WxProductForm;

/**
 * @author bo.chen
 *
 */
public interface MallService {

	WxMall findMallByAccountId(long accountId);
	
	List<WxProductCategory> findProductCategoryByMallId(long mallId);
	
	WxProductCategory findWxProductCategoryById(long categoryId);
	
	List<WxPrdtSubCategory> findSubCategoryByCategoryId(long categoryId);
	
	List<WxProductForm> findPrdtListBySubCategoryId(long subCategoryId);
	
	WxProductForm findProductById(long productId);
}