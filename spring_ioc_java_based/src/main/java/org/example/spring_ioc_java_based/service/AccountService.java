package org.example.spring_ioc_java_based.service;
import java.util.List;

import org.example.spring_ioc_java_based.pojo.Account;
public interface AccountService {
public Account createAccount(Account account);
	
	public List<Account> displayAllAvailableAccount();
}
