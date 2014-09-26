.class public Lcom/baidu/yi/ads/service/utils/DeviceEnv;
.super Ljava/lang/Object;
.source "DeviceEnv.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/yi/ads/service/utils/DeviceEnv$Battery;,
        Lcom/baidu/yi/ads/service/utils/DeviceEnv$DeviceInfo;,
        Lcom/baidu/yi/ads/service/utils/DeviceEnv$LocationService;,
        Lcom/baidu/yi/ads/service/utils/DeviceEnv$Network;,
        Lcom/baidu/yi/ads/service/utils/DeviceEnv$Static;,
        Lcom/baidu/yi/ads/service/utils/DeviceEnv$Storage;,
        Lcom/baidu/yi/ads/service/utils/DeviceEnv$Telephony;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/baidu/yi/ads/service/utils/DeviceEnv;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/yi/ads/service/utils/DeviceEnv;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/baidu/yi/ads/service/utils/DeviceEnv;->TAG:Ljava/lang/String;

    return-object v0
.end method
