.class public Lcom/inveno/newpiflow/tools/NetWorkUtil;
.super Ljava/lang/Object;
.source "NetWorkUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inveno/newpiflow/tools/NetWorkUtil$netType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAPNType(Landroid/content/Context;)Lcom/inveno/newpiflow/tools/NetWorkUtil$netType;
    .locals 6
    .parameter "context"

    .prologue
    .line 126
    .line 127
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 126
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 128
    .local v0, connMgr:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 129
    .local v3, networkInfo:Landroid/net/NetworkInfo;
    if-nez v3, :cond_0

    .line 130
    sget-object v4, Lcom/inveno/newpiflow/tools/NetWorkUtil$netType;->noneNet:Lcom/inveno/newpiflow/tools/NetWorkUtil$netType;

    .line 146
    :goto_0
    return-object v4

    .line 132
    :cond_0
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 134
    .local v2, nType:I
    if-nez v2, :cond_2

    .line 135
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, info:Ljava/lang/String;
    invoke-static {v1}, Lcom/inveno/flyshare/utils/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "cmnet"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 137
    sget-object v4, Lcom/inveno/newpiflow/tools/NetWorkUtil$netType;->CMNET:Lcom/inveno/newpiflow/tools/NetWorkUtil$netType;

    goto :goto_0

    .line 141
    :cond_1
    sget-object v4, Lcom/inveno/newpiflow/tools/NetWorkUtil$netType;->CMWAP:Lcom/inveno/newpiflow/tools/NetWorkUtil$netType;

    goto :goto_0

    .line 143
    .end local v1           #info:Ljava/lang/String;
    :cond_2
    const/4 v4, 0x1

    if-ne v2, v4, :cond_3

    .line 144
    sget-object v4, Lcom/inveno/newpiflow/tools/NetWorkUtil$netType;->wifi:Lcom/inveno/newpiflow/tools/NetWorkUtil$netType;

    goto :goto_0

    .line 146
    :cond_3
    sget-object v4, Lcom/inveno/newpiflow/tools/NetWorkUtil$netType;->noneNet:Lcom/inveno/newpiflow/tools/NetWorkUtil$netType;

    goto :goto_0
.end method

.method public static getConnectedType(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 104
    if-eqz p0, :cond_0

    .line 106
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 105
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 108
    .local v0, mConnectivityManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 109
    .local v1, mNetworkInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 113
    .end local v0           #mConnectivityManager:Landroid/net/ConnectivityManager;
    .end local v1           #mNetworkInfo:Landroid/net/NetworkInfo;
    :goto_0
    return v2

    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public static isMobileConnected(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 85
    if-eqz p0, :cond_0

    .line 87
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 86
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 89
    .local v0, mConnectivityManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 90
    .local v1, mMobileNetworkInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 91
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    .line 94
    .end local v0           #mConnectivityManager:Landroid/net/ConnectivityManager;
    .end local v1           #mMobileNetworkInfo:Landroid/net/NetworkInfo;
    :cond_0
    return v2
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    .line 27
    .line 28
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 27
    check-cast v2, Landroid/net/ConnectivityManager;

    .line 29
    .local v2, mgr:Landroid/net/ConnectivityManager;
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v1

    .line 30
    .local v1, info:[Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 31
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v1

    if-lt v0, v3, :cond_1

    .line 37
    .end local v0           #i:I
    :cond_0
    const/4 v3, 0x0

    :goto_1
    return v3

    .line 32
    .restart local v0       #i:I
    :cond_1
    aget-object v3, v1, v0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_2

    .line 33
    const/4 v3, 0x1

    goto :goto_1

    .line 31
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static isNetworkConnected(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 47
    if-eqz p0, :cond_0

    .line 49
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 48
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 51
    .local v0, mConnectivityManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 52
    .local v1, mNetworkInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 53
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    .line 56
    .end local v0           #mConnectivityManager:Landroid/net/ConnectivityManager;
    .end local v1           #mNetworkInfo:Landroid/net/NetworkInfo;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isWifiConnected(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 66
    if-eqz p0, :cond_0

    .line 68
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 67
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 70
    .local v0, mConnectivityManager:Landroid/net/ConnectivityManager;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 71
    .local v1, mWiFiNetworkInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 72
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    .line 75
    .end local v0           #mConnectivityManager:Landroid/net/ConnectivityManager;
    .end local v1           #mWiFiNetworkInfo:Landroid/net/NetworkInfo;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
