.class public Lcom/inveno/newpiflow/tools/TelephonyManagerTools;
.super Ljava/lang/Object;
.source "TelephonyManagerTools.java"


# static fields
.field public static final SIM_STATE_GOOD:Ljava/lang/String; = "simStateGood"

.field public static final SIM_STATE_NO:Ljava/lang/String; = "simStateNo"

.field public static final SIM_STATE_OTHER:Ljava/lang/String; = "simStateOther"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter "context"

    .prologue
    const/16 v5, 0xf

    .line 34
    const-string v3, "imei"

    const-string v4, ""

    invoke-static {v3, v4, p0}, Lcom/inveno/newpiflow/tools/Tools;->getInformain(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, imei:Ljava/lang/String;
    invoke-static {v0}, Lcom/inveno/flyshare/utils/StringTools;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 37
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 36
    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 39
    .local v1, telMgr:Landroid/telephony/TelephonyManager;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 42
    .local v2, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-static {v0}, Lcom/inveno/flyshare/utils/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v5, :cond_2

    .line 44
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 48
    :goto_0
    invoke-static {v0}, Lcom/inveno/flyshare/utils/StringTools;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 49
    const-string v0, "23123123131"

    .line 50
    :cond_0
    const-string v3, "imei"

    invoke-static {v3, v0, p0}, Lcom/inveno/newpiflow/tools/Tools;->setInformain(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 53
    .end local v1           #telMgr:Landroid/telephony/TelephonyManager;
    .end local v2           #wifiManager:Landroid/net/wifi/WifiManager;
    :cond_1
    return-object v0

    .line 46
    .restart local v1       #telMgr:Landroid/telephony/TelephonyManager;
    .restart local v2       #wifiManager:Landroid/net/wifi/WifiManager;
    :cond_2
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getDeviceIdSS(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter "context"

    .prologue
    const/16 v4, 0xf

    .line 67
    const-string v2, "imeiss"

    const-string v3, ""

    invoke-static {v2, v3, p0}, Lcom/inveno/newpiflow/tools/Tools;->getInformain(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, imei:Ljava/lang/String;
    invoke-static {v0}, Lcom/inveno/flyshare/utils/StringTools;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 70
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 69
    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 72
    .local v1, telMgr:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-static {v0}, Lcom/inveno/flyshare/utils/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v4, :cond_2

    .line 74
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 78
    :cond_0
    :goto_0
    const-string v2, "imeiss"

    invoke-static {v2, v0, p0}, Lcom/inveno/newpiflow/tools/Tools;->setInformain(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 81
    .end local v1           #telMgr:Landroid/telephony/TelephonyManager;
    :cond_1
    return-object v0

    .line 75
    .restart local v1       #telMgr:Landroid/telephony/TelephonyManager;
    :cond_2
    if-nez v0, :cond_0

    .line 76
    const-string v0, "999999999999999"

    goto :goto_0
.end method
