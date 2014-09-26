.class public Lcom/baidu/bulletin/utils/DeviceEnv;
.super Ljava/lang/Object;
.source "DeviceEnv.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bulletin/utils/DeviceEnv$LocationService;,
        Lcom/baidu/bulletin/utils/DeviceEnv$Network;,
        Lcom/baidu/bulletin/utils/DeviceEnv$Battery;,
        Lcom/baidu/bulletin/utils/DeviceEnv$Storage;,
        Lcom/baidu/bulletin/utils/DeviceEnv$Telephony;,
        Lcom/baidu/bulletin/utils/DeviceEnv$Static;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/baidu/bulletin/utils/DeviceEnv;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/bulletin/utils/DeviceEnv;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/baidu/bulletin/utils/DeviceEnv;->TAG:Ljava/lang/String;

    return-object v0
.end method
