package com.sellerNet.backManagement.entity;

public class Setparam {
    private Long uId;

    private String addfriendflag;

    private String pushphonebook;

    private String allowtenphoto;

    private String phonefind;

    private String weixinfind;

    private String groupchatadd;

    private String qqfind;

    private String erweiadd;

    private String cardadd;

    public Long getuId() {
        return uId;
    }

    public void setuId(Long uId) {
        this.uId = uId;
    }

    public String getAddfriendflag() {
        return addfriendflag;
    }

    public void setAddfriendflag(String addfriendflag) {
        this.addfriendflag = addfriendflag == null ? null : addfriendflag.trim();
    }

    public String getPushphonebook() {
        return pushphonebook;
    }

    public void setPushphonebook(String pushphonebook) {
        this.pushphonebook = pushphonebook == null ? null : pushphonebook.trim();
    }

    public String getAllowtenphoto() {
        return allowtenphoto;
    }

    public void setAllowtenphoto(String allowtenphoto) {
        this.allowtenphoto = allowtenphoto == null ? null : allowtenphoto.trim();
    }

    public String getPhonefind() {
        return phonefind;
    }

    public void setPhonefind(String phonefind) {
        this.phonefind = phonefind == null ? null : phonefind.trim();
    }

    public String getWeixinfind() {
        return weixinfind;
    }

    public void setWeixinfind(String weixinfind) {
        this.weixinfind = weixinfind == null ? null : weixinfind.trim();
    }

    public String getGroupchatadd() {
        return groupchatadd;
    }

    public void setGroupchatadd(String groupchatadd) {
        this.groupchatadd = groupchatadd == null ? null : groupchatadd.trim();
    }

    public String getQqfind() {
        return qqfind;
    }

    public void setQqfind(String qqfind) {
        this.qqfind = qqfind == null ? null : qqfind.trim();
    }

    public String getErweiadd() {
        return erweiadd;
    }

    public void setErweiadd(String erweiadd) {
        this.erweiadd = erweiadd == null ? null : erweiadd.trim();
    }

    public String getCardadd() {
        return cardadd;
    }

    public void setCardadd(String cardadd) {
        this.cardadd = cardadd == null ? null : cardadd.trim();
    }
}