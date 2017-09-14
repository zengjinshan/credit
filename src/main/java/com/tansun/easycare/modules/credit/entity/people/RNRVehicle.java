package com.tansun.easycare.modules.credit.entity.people;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "r_nr_vehicle")
public class RNRVehicle {
	
	@Id
	@Column(name="VEHICLE_ID",length=40,nullable=false)
    private String vehicleId;
	@Column(name="REPORT_ID",length=40)
    private String reportId;
	@Column(name="ENGINECODE",length=40)
    private String enginecode;
	@Column(name="LICENSECODE",length=15)
    private String licensecode;
	@Column(name="BRAND",length=40)
    private String brand;
	@Column(name="CARTYPE",length=50)
    private String cartype;
	@Column(name="USECHARACTER",length=50)
    private String usecharacter;
	@Column(name="STATE",length=50)
    private String state;
	@Column(name="PLEDGEFLAG",length=10)
    private String pledgeflag;
	@Column(name="GETTIME",length=10)
    private String gettime;
	@Column(name="TIME_STAMP")
    private Date timeStamp;

    public String getVehicleId() {
        return vehicleId;
    }

    public void setVehicleId(String vehicleId) {
        this.vehicleId = vehicleId == null ? null : vehicleId.trim();
    }

    public String getReportId() {
        return reportId;
    }

    public void setReportId(String reportId) {
        this.reportId = reportId == null ? null : reportId.trim();
    }

    public String getEnginecode() {
        return enginecode;
    }

    public void setEnginecode(String enginecode) {
        this.enginecode = enginecode == null ? null : enginecode.trim();
    }

    public String getLicensecode() {
        return licensecode;
    }

    public void setLicensecode(String licensecode) {
        this.licensecode = licensecode == null ? null : licensecode.trim();
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand == null ? null : brand.trim();
    }

    public String getCartype() {
        return cartype;
    }

    public void setCartype(String cartype) {
        this.cartype = cartype == null ? null : cartype.trim();
    }

    public String getUsecharacter() {
        return usecharacter;
    }

    public void setUsecharacter(String usecharacter) {
        this.usecharacter = usecharacter == null ? null : usecharacter.trim();
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state == null ? null : state.trim();
    }

    public String getPledgeflag() {
        return pledgeflag;
    }

    public void setPledgeflag(String pledgeflag) {
        this.pledgeflag = pledgeflag == null ? null : pledgeflag.trim();
    }

    public String getGettime() {
        return gettime;
    }

    public void setGettime(String gettime) {
        this.gettime = gettime == null ? null : gettime.trim();
    }

    public Date getTimeStamp() {
        return timeStamp;
    }

    public void setTimeStamp(Date timeStamp) {
        this.timeStamp = timeStamp;
    }
}