package com.DoctorAppointmentBooking.repo;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.DoctorAppointmentBooking.entities.book;
@Repository
public interface Bookrepo extends JpaRepository<book, Integer> {

	@Query("From book where status = 'pending'")
	public List<book>getAllRequest();
	@Modifying
	@Transactional
	@Query("update book set status=:status where id=:id")
	public void updatestatus(@Param("status")String status,@Param("id") int id);
	
	@Query("from book where status = 'approve' or status = 'cancel'")
	public List<book> getAllbookinglist();
	
	@Query("from book where p_id=:id")
	public List<book> getrequest(@Param("id") int id);
}
