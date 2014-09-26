.class public Lcom/baidu/yi/ads/service/utils/DeviceEnv$Telephony$CellInfo;
.super Ljava/lang/Object;
.source "DeviceEnv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/yi/ads/service/utils/DeviceEnv$Telephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CellInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/yi/ads/service/utils/DeviceEnv$Telephony$CellInfo$Type;
    }
.end annotation


# instance fields
.field private mCid:I

.field private mLac:I

.field private mMcc:I

.field private mMnc:I

.field private mType:Lcom/baidu/yi/ads/service/utils/DeviceEnv$Telephony$CellInfo$Type;


# direct methods
.method public constructor <init>(Lcom/baidu/yi/ads/service/utils/DeviceEnv$Telephony$CellInfo$Type;IIII)V
    .locals 0
    .parameter "type"
    .parameter "mcc"
    .parameter "mnc"
    .parameter "cid"
    .parameter "lac"

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    iput-object p1, p0, Lcom/baidu/yi/ads/service/utils/DeviceEnv$Telephony$CellInfo;->mType:Lcom/baidu/yi/ads/service/utils/DeviceEnv$Telephony$CellInfo$Type;

    .line 208
    iput p2, p0, Lcom/baidu/yi/ads/service/utils/DeviceEnv$Telephony$CellInfo;->mMcc:I

    .line 209
    iput p3, p0, Lcom/baidu/yi/ads/service/utils/DeviceEnv$Telephony$CellInfo;->mMnc:I

    .line 210
    iput p4, p0, Lcom/baidu/yi/ads/service/utils/DeviceEnv$Telephony$CellInfo;->mCid:I

    .line 211
    iput p5, p0, Lcom/baidu/yi/ads/service/utils/DeviceEnv$Telephony$CellInfo;->mLac:I

    .line 212
    return-void
.end method


# virtual methods
.method public getCid()I
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Lcom/baidu/yi/ads/service/utils/DeviceEnv$Telephony$CellInfo;->mCid:I

    return v0
.end method

.method public getLac()I
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Lcom/baidu/yi/ads/service/utils/DeviceEnv$Telephony$CellInfo;->mLac:I

    return v0
.end method

.method public getMcc()I
    .locals 1

    .prologue
    .line 215
    iget v0, p0, Lcom/baidu/yi/ads/service/utils/DeviceEnv$Telephony$CellInfo;->mMcc:I

    return v0
.end method

.method public getMnc()I
    .locals 1

    .prologue
    .line 216
    iget v0, p0, Lcom/baidu/yi/ads/service/utils/DeviceEnv$Telephony$CellInfo;->mMnc:I

    return v0
.end method

.method public getType()Lcom/baidu/yi/ads/service/utils/DeviceEnv$Telephony$CellInfo$Type;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/baidu/yi/ads/service/utils/DeviceEnv$Telephony$CellInfo;->mType:Lcom/baidu/yi/ads/service/utils/DeviceEnv$Telephony$CellInfo$Type;

    return-object v0
.end method
