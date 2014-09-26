.class public Lcom/baidu/yi/sdk/cloudstorage/utils/Helpers;
.super Ljava/lang/Object;
.source "Helpers.java"


# static fields
.field public static final NETWORK_STATE_CONNECT_WITH_CMNET:I = 0x2

.field public static final NETWORK_STATE_CONNECT_WITH_CMWAP:I = 0x3

.field public static final NETWORK_STATE_CONNECT_WITH_MOBILE:I = 0x0

.field public static final NETWORK_STATE_CONNECT_WITH_WIFI:I = 0x1

.field public static final NETWORK_STATE_NOT_CONNECTED:I = -0x1

.field public static final sRandom:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 64
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    sput-object v0, Lcom/baidu/yi/sdk/cloudstorage/utils/Helpers;->sRandom:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createUUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNetworkType(Landroid/content/Context;)I
    .locals 5
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 37
    .line 38
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 37
    check-cast v1, Landroid/net/ConnectivityManager;

    .line 39
    .local v1, connectivity:Landroid/net/ConnectivityManager;
    if-eqz v1, :cond_2

    .line 40
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 41
    .local v2, info:Landroid/net/NetworkInfo;
    if-eqz v2, :cond_2

    .line 42
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-nez v4, :cond_1

    .line 43
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, connType:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 45
    const/4 v3, 0x0

    .line 61
    .end local v0           #connType:Ljava/lang/String;
    .end local v2           #info:Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return v3

    .line 55
    .restart local v2       #info:Landroid/net/NetworkInfo;
    :cond_1
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-eq v4, v3, :cond_0

    .line 61
    .end local v2           #info:Landroid/net/NetworkInfo;
    :cond_2
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    .line 19
    .line 20
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 19
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 21
    .local v0, connectivity:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 25
    .local v2, info:[Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    .line 26
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v2

    if-lt v1, v3, :cond_1

    .line 33
    .end local v1           #i:I
    .end local v2           #info:[Landroid/net/NetworkInfo;
    :cond_0
    const/4 v3, 0x0

    :goto_1
    return v3

    .line 27
    .restart local v1       #i:I
    .restart local v2       #info:[Landroid/net/NetworkInfo;
    :cond_1
    aget-object v3, v2, v1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_2

    .line 28
    const/4 v3, 0x1

    goto :goto_1

    .line 26
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
