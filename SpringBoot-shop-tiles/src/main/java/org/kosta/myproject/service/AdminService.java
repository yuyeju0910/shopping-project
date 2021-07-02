package org.kosta.myproject.service;

import java.util.List;
import java.util.Map;

import org.kosta.myproject.model.CategoryVO;

public interface AdminService {
	List<Map<String, String>> category();
	List<Map<String, String>> categoryMiddle(String categoryCode);
}
