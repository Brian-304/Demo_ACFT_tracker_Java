package com.brian.acftracker.models;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "tests")
public class FitnessTest {
	// Member Variables

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	@NotEmpty(message = "First Name is required!")
	@Size(min = 2, max = 30, message = "First Name must be between 3 and 30 characters")
	private String firstName;

	@NotEmpty(message = "Last Name is required!")
	@Size(min = 2, max = 30, message = "Last Name must be between 3 and 30 characters")
	private String lastName;

	@NotEmpty(message = "Unit is required!")
	private String unit;

	@NotNull
	private Integer age;

	@NotEmpty(message = "Gender is required!")
	private String gender;

	@NotEmpty(message = "Grade is required!")
	private String grade;

	@NotEmpty(message = "MOS is required!")
	private String title;

	@NotNull
	private Integer height;

	@NotNull
	private Integer weight;

	@NotNull
	private Double fat;

	@NotNull
	private Boolean weightGo;

	@NotNull
	private Boolean bodyFatGo;

	private Integer deadliftFirstAttempt;

	private Integer deadliftSecondAttempt;

	private Integer deadliftPoints;

	private String deadliftGrader;

	private Double powerThrowFirstAttempt;

	private Double powerThrowSecondAttempt;

	private Integer powerThrowPoints;

	private String powerThrowGrader;

	private Integer pushUpsRepitions;

	private Integer pushUpsPoints;

	private String pushUpsGrader;

	private Integer sprintDragCarryMinutes;

	private Integer sprintDragCarrySeconds;

	private Integer sprintDragCarryPoints;

	private String sprintDragCarryGrader;

	// Many to One relationship
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "user_id") // foreign key
	private User poster;

	// This will not allow the createdAt column to be updated after creation
	@Column(updatable = false)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date createdAt;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date updatedAt;

	@PrePersist
	protected void onCreate() {
		this.createdAt = new Date();
	}

	@PreUpdate
	protected void onUpdate() {
		this.updatedAt = new Date();
	}

	// Empty class constructor
	public FitnessTest() {
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getUnit() {
		return unit;
	}

	public void setUnit(String unit) {
		this.unit = unit;
	}

	public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Integer getHeight() {
		return height;
	}

	public void setHeight(Integer height) {
		this.height = height;
	}

	public Integer getWeight() {
		return weight;
	}

	public void setWeight(Integer weight) {
		this.weight = weight;
	}

	public Double getFat() {
		return fat;
	}

	public void setFat(Double fat) {
		this.fat = fat;
	}

	public Boolean getWeightGo() {
		return weightGo;
	}

	public void setWeightGo(Boolean weightGo) {
		this.weightGo = weightGo;
	}

	public Boolean getBodyFatGo() {
		return bodyFatGo;
	}

	public void setBodyFatGo(Boolean bodyFatGo) {
		this.bodyFatGo = bodyFatGo;
	}

	public Integer getDeadliftFirstAttempt() {
		return deadliftFirstAttempt;
	}

	public void setDeadliftFirstAttempt(Integer deadliftFirstAttempt) {
		this.deadliftFirstAttempt = deadliftFirstAttempt;
	}

	public Integer getDeadliftSecondAttempt() {
		return deadliftSecondAttempt;
	}

	public void setDeadliftSecondAttempt(Integer deadliftSecondAttempt) {
		this.deadliftSecondAttempt = deadliftSecondAttempt;
	}

	public Integer getDeadliftPoints() {
		return deadliftPoints;
	}

	public void setDeadliftPoints(Integer deadliftPoints) {
		this.deadliftPoints = deadliftPoints;
	}

	public String getDeadliftGrader() {
		return deadliftGrader;
	}

	public void setDeadliftGrader(String deadliftGrader) {
		this.deadliftGrader = deadliftGrader;
	}

	public Double getPowerThrowFirstAttempt() {
		return powerThrowFirstAttempt;
	}

	public void setPowerThrowFirstAttempt(Double powerThrowFirstAttempt) {
		this.powerThrowFirstAttempt = powerThrowFirstAttempt;
	}

	public Double getPowerThrowSecondAttempt() {
		return powerThrowSecondAttempt;
	}

	public void setPowerThrowSecondAttempt(Double powerThrowSecondAttempt) {
		this.powerThrowSecondAttempt = powerThrowSecondAttempt;
	}

	public Integer getPowerThrowPoints() {
		return powerThrowPoints;
	}

	public void setPowerThrowPoints(Integer powerThrowPoints) {
		this.powerThrowPoints = powerThrowPoints;
	}

	public String getPowerThrowGrader() {
		return powerThrowGrader;
	}

	public void setPowerThrowGrader(String powerThrowGrader) {
		this.powerThrowGrader = powerThrowGrader;
	}

	public Integer getPushUpsRepitions() {
		return pushUpsRepitions;
	}

	public void setPushUpsRepitions(Integer pushUpsRepitions) {
		this.pushUpsRepitions = pushUpsRepitions;
	}

	public Integer getPushUpsPoints() {
		return pushUpsPoints;
	}

	public void setPushUpsPoints(Integer pushUpsPoints) {
		this.pushUpsPoints = pushUpsPoints;
	}

	public String getPushUpsGrader() {
		return pushUpsGrader;
	}

	public void setPushUpsGrader(String pushUpsGrader) {
		this.pushUpsGrader = pushUpsGrader;
	}

	public Integer getSprintDragCarryPoints() {
		return sprintDragCarryPoints;
	}

	public void setSprintDragCarryPoints(Integer sprintDragCarryPoints) {
		this.sprintDragCarryPoints = sprintDragCarryPoints;
	}

	public String getSprintDragCarryGrader() {
		return sprintDragCarryGrader;
	}

	public void setSprintDragCarryGrader(String sprintDragCarryGrader) {
		this.sprintDragCarryGrader = sprintDragCarryGrader;
	}

	public User getPoster() {
		return poster;
	}

	public void setPoster(User poster) {
		this.poster = poster;
	}

	public Date getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

	public Date getUpdatedAt() {
		return updatedAt;
	}

	public void setUpdatedAt(Date updatedAt) {
		this.updatedAt = updatedAt;
	}

	public Integer getSprintDragCarryMinutes() {
		return sprintDragCarryMinutes;
	}

	public void setSprintDragCarryMinutes(Integer sprintDragCarryMinutes) {
		this.sprintDragCarryMinutes = sprintDragCarryMinutes;
	}

	public Integer getSprintDragCarrySeconds() {
		return sprintDragCarrySeconds;
	}

	public void setSprintDragCarrySeconds(Integer sprintDragCarrySeconds) {
		this.sprintDragCarrySeconds = sprintDragCarrySeconds;
	}

}
