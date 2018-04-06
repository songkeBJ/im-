package com.sellerNet.backManagement.entity;

public class SetUserShow {
    private Long id;

    private Long uId;

    private Long cUId;

    private String flag;
    
    private String cuImg;
    
    private String cuname;

    
    
    public String getCuImg() {
		return cuImg;
	}

	public void setCuImg(String cuImg) {
		this.cuImg = cuImg;
	}

	public String getCuname() {
		return cuname;
	}

	public void setCuname(String cuname) {
		this.cuname = cuname;
	}

	public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getuId() {
        return uId;
    }

    public void setuId(Long uId) {
        this.uId = uId;
    }

    public Long getcUId() {
        return cUId;
    }

    public void setcUId(Long cUId) {
        this.cUId = cUId;
    }

    public String getFlag() {
        return flag;
    }

    public void setFlag(String flag) {
        this.flag = flag == null ? null : flag.trim();
    }
}