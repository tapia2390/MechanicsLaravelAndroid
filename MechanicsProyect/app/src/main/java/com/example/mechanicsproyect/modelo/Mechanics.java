package com.example.mechanicsproyect.modelo;


import com.google.gson.annotations.SerializedName;

public class Mechanics {


    @SerializedName("id")  private int id;
    @SerializedName("email")  private String email;
    @SerializedName("password")  private String password;
    @SerializedName("name")  private String name;
    @SerializedName("surname")  private String surname;
    @SerializedName("identity")  private int identity;
    @SerializedName("phone")  private int phone;
    @SerializedName("profilePicture")  private String profilePicture;
    @SerializedName("gender")  private String gender;
    @SerializedName("latitude")  private String latitude;
    @SerializedName("longitude")  private String longitude;
    @SerializedName("city_id")  private int city_id;
    @SerializedName("created_at")  private Long created_at;
    @SerializedName("updated_at")   private Long updated_at;


    public Mechanics() {
    }

    public Mechanics(int id, String email, String password, String name, String surname, int identity, int phone, String profilePicture, String gender, String latitude, String longitude, int city_id, Long created_at, Long updated_at) {
        this.id = id;
        this.email = email;
        this.password = password;
        this.name = name;
        this.surname = surname;
        this.identity = identity;
        this.phone = phone;
        this.profilePicture = profilePicture;
        this.gender = gender;
        this.latitude = latitude;
        this.longitude = longitude;
        this.city_id = city_id;

        if (created_at == null){
            this.created_at = 12345678910L;
        }else{
            this.created_at = created_at;
        }
        if (created_at == null){
            this.updated_at = 12345678910L;
        }else{
            this.updated_at = updated_at;
        }

    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public int getIdentity() {
        return identity;
    }

    public void setIdentity(int identity) {
        this.identity = identity;
    }

    public int getPhone() {
        return phone;
    }

    public void setPhone(int phone) {
        this.phone = phone;
    }

    public String getProfilePicture() {
        return profilePicture;
    }

    public void setProfilePicture(String profilePicture) {
        this.profilePicture = profilePicture;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getLatitude() {
        return latitude;
    }

    public void setLatitude(String latitude) {
        this.latitude = latitude;
    }

    public String getLongitude() {
        return longitude;
    }

    public void setLongitude(String longitude) {
        this.longitude = longitude;
    }

    public int getCity_id() {
        return city_id;
    }

    public void setCity_id(int city_id) {
        this.city_id = city_id;
    }

    public Long getCreated_at() {
        return created_at;
    }

    public void setCreated_at(Long created_at) {
        this.created_at = created_at;
    }

    public Long getUpdated_at() {
        return updated_at;
    }

    public void setUpdated_at(Long updated_at) {
        this.updated_at = updated_at;
    }
}