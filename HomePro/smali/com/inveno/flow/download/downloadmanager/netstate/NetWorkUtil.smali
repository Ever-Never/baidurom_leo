.class public Lcom/inveno/flow/download/downloadmanager/netstate/NetWorkUtil;
.super Ljava/lang/Object;
.source "NetWorkUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inveno/flow/download/downloadmanager/netstate/NetWorkUtil$netType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAPNType(Landroid/content/Context;)Lcom/inveno/flow/download/downloadmanager/netstate/NetWorkUtil$netType;
    .locals 5
    .parameter "context"

    .prologue
    .line 124
    .line 125
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 124
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 126
    .local v0, connMgr:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 127
    .local v2, networkInfo:Landroid/net/NetworkInfo;
    if-nez v2, :cond_0

    .line 128
    sget-object v3, Lcom/inveno/flow/download/downloadmanager/netstate/NetWorkUtil$netType;->noneNet:Lcom/inveno/flow/download/downloadmanager/netstate/NetWorkUtil$netType;

    .line 143
    :goto_0
    return-object v3

    .line 130
    :cond_0
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 132
    .local v1, nType:I
    if-nez v1, :cond_2

    .line 133
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "cmnet"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 134
    sget-object v3, Lcom/inveno/flow/download/downloadmanager/netstate/NetWorkUtil$netType;->CMNET:Lcom/inveno/flow/download/downloadmanager/netstate/NetWorkUtil$netType;

    goto :goto_0

    .line 138
    :cond_1
    sget-object v3, Lcom/inveno/flow/download/downloadmanager/netstate/NetWorkUtil$netType;->CMWAP:Lcom/inveno/flow/download/downloadmanager/netstate/NetWorkUtil$netType;

    goto :goto_0

    .line 140
    :cond_2
    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    .line 141
    sget-object v3, Lcom/inveno/flow/download/downloadmanager/netstate/NetWorkUtil$netType;->wifi:Lcom/inveno/flow/download/downloadmanager/netstate/NetWorkUtil$netType;

    goto :goto_0

    .line 143
    :cond_3
    sget-object v3, Lcom/inveno/flow/download/downloadmanager/netstate/NetWorkUtil$netType;->noneNet:Lcom/inveno/flow/download/downloadmanager/netstate/NetWorkUtil$netType;

    goto :goto_0
.end method

.method public static getConnectedType(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 102
    if-eqz p0, :cond_0

    .line 104
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 103
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 106
    .local v0, mConnectivityManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 107
    .local v1, mNetworkInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 111
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

    .line 83
    if-eqz p0, :cond_0

    .line 85
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 84
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 87
    .local v0, mConnectivityManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 88
    .local v1, mMobileNetworkInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 89
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    .line 92
    .end local v0           #mConnectivityManager:Landroid/net/ConnectivityManager;
    .end local v1           #mMobileNetworkInfo:Landroid/net/NetworkInfo;
    :cond_0
    return v2
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    .line 25
    .line 26
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 25
    check-cast v2, Landroid/net/ConnectivityManager;

    .line 27
    .local v2, mgr:Landroid/net/ConnectivityManager;
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v1

    .line 28
    .local v1, info:[Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 29
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v1

    if-lt v0, v3, :cond_1

    .line 35
    .end local v0           #i:I
    :cond_0
    const/4 v3, 0x0

    :goto_1
    return v3

    .line 30
    .restart local v0       #i:I
    :cond_1
    aget-object v3, v1, v0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_2

    .line 31
    const/4 v3, 0x1

    goto :goto_1

    .line 29
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static isNetworkConnected(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 45
    if-eqz p0, :cond_0

    .line 47
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 46
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 49
    .local v0, mConnectivityManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 50
    .local v1, mNetworkInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 51
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    .line 54
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
    .line 64
    if-eqz p0, :cond_0

    .line 66
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 65
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 68
    .local v0, mConnectivityManager:Landroid/net/ConnectivityManager;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 69
    .local v1, mWiFiNetworkInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 70
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    .line 73
    .end local v0           #mConnectivityManager:Landroid/net/ConnectivityManager;
    .end local v1           #mWiFiNetworkInfo:Landroid/net/NetworkInfo;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
