package com.devsuperior.dslearnbds.services.validations;

import com.devsuperior.dslearnbds.DTOs.UserUpdateDTO;
import com.devsuperior.dslearnbds.entities.User;
import com.devsuperior.dslearnbds.repositories.UserRepository;
import com.devsuperior.dslearnbds.resources.exceptions.FieldMessage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.HandlerMapping;

import javax.servlet.http.HttpServletRequest;
import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Optional;

public class UserUpdateValidator implements ConstraintValidator<UserUpdateValid, UserUpdateDTO> {
	
	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private HttpServletRequest request;
	
	@Override
	public boolean isValid(UserUpdateDTO dto, ConstraintValidatorContext context) {
		
		List<FieldMessage> list = new ArrayList<>();
		
		if(hasUserWithThisEmailAndIdIsDifferent(dto.getEmail(), request)) {
			list.add(new FieldMessage("email", "O email informado já existe"));
		}
		
		for (FieldMessage e : list) {
			context.disableDefaultConstraintViolation();
			context.buildConstraintViolationWithTemplate(e.getMessage())
					.addPropertyNode(e.getField())
					.addConstraintViolation();
		}
		
		return list.isEmpty();
	}
	
	private boolean hasUserWithThisEmailAndIdIsDifferent(String email, HttpServletRequest req) {		
		@SuppressWarnings("unchecked")
		var uriParameters = (Map<String, String>) req
						.getAttribute(HandlerMapping.URI_TEMPLATE_VARIABLES_ATTRIBUTE);
		
		Long userId = Long.parseLong(uriParameters.get("userId"));
		Optional<User> optUser = userRepository.findByEmail(email);
		
		return optUser.isPresent() && !optUser.get().getId().equals(userId);
	}
	
}
