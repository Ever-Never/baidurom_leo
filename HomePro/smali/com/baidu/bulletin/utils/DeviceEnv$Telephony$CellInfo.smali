.class public Lcom/baidu/bulletin/utils/DeviceEnv$Telephony$CellInfo;
.super Ljava/lang/Object;
.source "DeviceEnv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/utils/DeviceEnv$Telephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CellInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bulletin/utils/DeviceEnv$Telephony$CellInfo$Type;
    }
.end annotation


# instance fields
.field private mCid:I

.field private mLac:I

.field private mMcc:I

.field private mMnc:I

.field private mType:Lcom/baidu/bulletin/utils/DeviceEnv$Telephony$CellInfo$Type;


# direct methods
.method public constructor <init>(Lcom/baidu/bulletin/utils/DeviceEnv$Telephony$CellInfo$Type;IIII)V
    .locals 0
    .parameter "type"
    .parameter "mcc"
    .parameter "mnc"
    .parameter "cid"
    .parameter "lac"

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lcom/baidu/bulletin/utils/DeviceEnv$Telephony$CellInfo;->mType:Lcom/baidu/bulletin/utils/DeviceEnv$Telephony$CellInfo$Type;

    .line 102
    iput p2, p0, Lcom/baidu/bulletin/utils/DeviceEnv$Telephony$CellInfo;->mMcc:I

    .line 103
    iput p3, p0, Lcom/baidu/bulletin/utils/DeviceEnv$Telephony$CellInfo;->mMnc:I

    .line 104
    iput p4, p0, Lcom/baidu/bulletin/utils/DeviceEnv$Telephony$CellInfo;->mCid:I

    .line 105
    iput p5, p0, Lcom/baidu/bulletin/utils/DeviceEnv$Telephony$CellInfo;->mLac:I

    .line 106
    return-void
.end method


# virtual methods
.method public getCid()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/baidu/bulletin/utils/DeviceEnv$Telephony$CellInfo;->mCid:I

    return v0
.end method

.method public getLac()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/baidu/bulletin/utils/DeviceEnv$Telephony$CellInfo;->mLac:I

    return v0
.end method

.method public getMcc()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/baidu/bulletin/utils/DeviceEnv$Telephony$CellInfo;->mMcc:I

    return v0
.end method

.method public getMnc()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/baidu/bulletin/utils/DeviceEnv$Telephony$CellInfo;->mMnc:I

    return v0
.end method

.method public getType()Lcom/baidu/bulletin/utils/DeviceEnv$Telephony$CellInfo$Type;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/baidu/bulletin/utils/DeviceEnv$Telephony$CellInfo;->mType:Lcom/baidu/bulletin/utils/DeviceEnv$Telephony$CellInfo$Type;

    return-object v0
.end method
