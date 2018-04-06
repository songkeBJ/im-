package com.sellerNet.backManagement.entity;

public class VersionSys {
    private Long id;

    private String androidVersion;

    private String androidPath;

    private String iosVersion;
    
    private String iosPath;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getAndroidVersion() {
		return androidVersion;
	}

	public void setAndroidVersion(String androidVersion) {
		this.androidVersion = androidVersion;
	}

	public String getAndroidPath() {
		return androidPath;
	}

	public void setAndroidPath(String androidPath) {
		this.androidPath = androidPath;
	}

	public String getIosVersion() {
		return iosVersion;
	}

	public void setIosVersion(String iosVersion) {
		this.iosVersion = iosVersion;
	}

	public String getIosPath() {
		return iosPath;
	}

	public void setIosPath(String iosPath) {
		this.iosPath = iosPath;
	}

}