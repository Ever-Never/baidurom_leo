.class final enum Lcom/baidu/bulletin/utils/DeviceEnv$Telephony$CellInfo$Type;
.super Ljava/lang/Enum;
.source "DeviceEnv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/utils/DeviceEnv$Telephony$CellInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/bulletin/utils/DeviceEnv$Telephony$CellInfo$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/baidu/bulletin/utils/DeviceEnv$Telephony$CellInfo$Type;

.field public static final enum CDMA:Lcom/baidu/bulletin/utils/DeviceEnv$Telephony$CellInfo$Type;

.field public static final enum GSM:Lcom/baidu/bulletin/utils/DeviceEnv$Telephony$CellInfo$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 90
    new-instance v0, Lcom/baidu/bulletin/utils/DeviceEnv$Telephony$CellInfo$Type;

    const-string v1, "GSM"

    invoke-direct {v0, v1, v2}, Lcom/baidu/bulletin/utils/DeviceEnv$Telephony$CellInfo$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bulletin/utils/DeviceEnv$Telephony$CellInfo$Type;->GSM:Lcom/baidu/bulletin/utils/DeviceEnv$Telephony$CellInfo$Type;

    .line 91
    new-instance v0, Lcom/baidu/bulletin/utils/DeviceEnv$Telephony$CellInfo$Type;

    const-string v1, "CDMA"

    invoke-direct {v0, v1, v3}, Lcom/baidu/bulletin/utils/DeviceEnv$Telephony$CellInfo$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bulletin/utils/DeviceEnv$Telephony$CellInfo$Type;->CDMA:Lcom/baidu/bulletin/utils/DeviceEnv$Telephony$CellInfo$Type;

    .line 89
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/baidu/bulletin/utils/DeviceEnv$Telephony$CellInfo$Type;

    sget-object v1, Lcom/baidu/bulletin/utils/DeviceEnv$Telephony$CellInfo$Type;->GSM:Lcom/baidu/bulletin/utils/DeviceEnv$Telephony$CellInfo$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/bulletin/utils/DeviceEnv$Telephony$CellInfo$Type;->CDMA:Lcom/baidu/bulletin/utils/DeviceEnv$Telephony$CellInfo$Type;

    aput-object v1, v0, v3

    sput-object v0, Lcom/baidu/bulletin/utils/DeviceEnv$Telephony$CellInfo$Type;->$VALUES:[Lcom/baidu/bulletin/utils/DeviceEnv$Telephony$CellInfo$Type;

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
    .line 89
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/bulletin/utils/DeviceEnv$Telephony$CellInfo$Type;
    .locals 1
    .parameter "name"

    .prologue
    .line 89
    const-class v0, Lcom/baidu/bulletin/utils/DeviceEnv$Telephony$CellInfo$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/utils/DeviceEnv$Telephony$CellInfo$Type;

    return-object v0
.end method

.method public static values()[Lcom/baidu/bulletin/utils/DeviceEnv$Telephony$CellInfo$Type;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/baidu/bulletin/utils/DeviceEnv$Telephony$CellInfo$Type;->$VALUES:[Lcom/baidu/bulletin/utils/DeviceEnv$Telephony$CellInfo$Type;

    invoke-virtual {v0}, [Lcom/baidu/bulletin/utils/DeviceEnv$Telephony$CellInfo$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/bulletin/utils/DeviceEnv$Telephony$CellInfo$Type;

    return-object v0
.end method
