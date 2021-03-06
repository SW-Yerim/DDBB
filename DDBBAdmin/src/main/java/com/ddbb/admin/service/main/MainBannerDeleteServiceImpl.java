package com.ddbb.admin.service.main;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.ddbb.admin.DAO.MainBannerDAO;

@Service
public class MainBannerDeleteServiceImpl implements MainService{

	@Autowired
	MainBannerDAO bannerDAO;
	
	@Override
	public void execute(Model model) {
		Map<String, Object> map = model.asMap();
		
		List<String> bannerDelete = (List<String>) map.get("delete");
		for(int i = 0; i < bannerDelete.size(); i++) {
			bannerDAO.bannerDelete(bannerDelete.get(i));
		}
	}

}
