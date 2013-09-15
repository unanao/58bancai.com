package com.bancai.dao;
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import com.free4lab.utils.sql.AbstractDAO;

/**
 *
 * @author jiangge(zhyanjiang@126.com)
 */
public class ProductDAO extends AbstractDAO<Product> {

    public static String CATEGORY = "category";

	public String getClassName() {
        return getEntityClass().getName();
    }

    public Class<Product> getEntityClass() {
        return Product.class;
    }
    public static final String PU_NAME = "BancaiPU";

    public String getPUName() {
        return PU_NAME;
    }    
}

