.class public final enum Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;
.super Ljava/lang/Enum;
.source "DeviceEnv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/utils/DeviceEnv$Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;

.field public static final enum MOBILE:Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;

.field public static final enum NONE:Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;

.field public static final enum WIFI:Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 283
    new-instance v0, Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;->NONE:Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;

    .line 284
    new-instance v0, Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;

    const-string v1, "WIFI"

    invoke-direct {v0, v1, v3}, Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;->WIFI:Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;

    .line 285
    new-instance v0, Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;

    const-string v1, "MOBILE"

    invoke-direct {v0, v1, v4}, Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;->MOBILE:Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;

    .line 282
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;

    sget-object v1, Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;->NONE:Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;->WIFI:Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;->MOBILE:Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;

    aput-object v1, v0, v4

    sput-object v0, Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;->$VALUES:[Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 282
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;
    .locals 1
    .parameter "name"

    .prologue
    .line 282
    const-class v0, Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;

    return-object v0
.end method

.method public static values()[Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;
    .locals 1

    .prologue
    .line 282
    sget-object v0, Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;->$VALUES:[Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;

    invoke-virtual {v0}, [Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;

    return-object v0
.end method