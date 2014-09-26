.class public Lcom/baidu/launcher/business/item/PhoneInfo;
.super Ljava/lang/Object;
.source "PhoneInfo.java"


# instance fields
.field private androidver:Ljava/lang/String;

.field private brand:Ljava/lang/String;

.field private channelid:Ljava/lang/String;

.field private cuid:Ljava/lang/String;

.field private device:Ljava/lang/String;

.field private devicever:Ljava/lang/String;

.field private imei:Ljava/lang/String;

.field private language:Ljava/lang/String;

.field private latitude:D

.field private longitude:D

.field private mac:Ljava/lang/String;

.field private mem:Ljava/lang/String;

.field private operator:Ljava/lang/String;

.field private resolution:Ljava/lang/String;

.field private tel:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "aContext"

    .prologue
    const/16 v4, 0x20

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v1, Lcom/baidu/launcher/utils/PhoneInfoStateManager;

    invoke-direct {v1}, Lcom/baidu/launcher/utils/PhoneInfoStateManager;-><init>()V

    .line 28
    .local v1, phoneInfo:Lcom/baidu/launcher/utils/PhoneInfoStateManager;
    invoke-virtual {v1}, Lcom/baidu/launcher/utils/PhoneInfoStateManager;->getPhoneBrand()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v4}, Lcom/baidu/launcher/business/item/PhoneInfo;->subString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/launcher/business/item/PhoneInfo;->brand:Ljava/lang/String;

    .line 29
    invoke-virtual {v1}, Lcom/baidu/launcher/utils/PhoneInfoStateManager;->getPhoneDeviceModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v4}, Lcom/baidu/launcher/business/item/PhoneInfo;->subString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/launcher/business/item/PhoneInfo;->device:Ljava/lang/String;

    .line 30
    invoke-virtual {v1}, Lcom/baidu/launcher/utils/PhoneInfoStateManager;->getDevicever()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {p0, v2, v3}, Lcom/baidu/launcher/business/item/PhoneInfo;->subString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/launcher/business/item/PhoneInfo;->devicever:Ljava/lang/String;

    .line 31
    invoke-virtual {v1}, Lcom/baidu/launcher/utils/PhoneInfoStateManager;->getSysterVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v4}, Lcom/baidu/launcher/business/item/PhoneInfo;->subString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/launcher/business/item/PhoneInfo;->androidver:Ljava/lang/String;

    .line 32
    invoke-static {p1}, Lcom/baidu/launcher/utils/PhoneInfoStateManager;->getBuildVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v4}, Lcom/baidu/launcher/business/item/PhoneInfo;->subString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/launcher/business/item/PhoneInfo;->version:Ljava/lang/String;

    .line 33
    invoke-static {p1}, Lcom/baidu/launcher/utils/PhoneInfoStateManager;->getChannelID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v4}, Lcom/baidu/launcher/business/item/PhoneInfo;->subString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/launcher/business/item/PhoneInfo;->channelid:Ljava/lang/String;

    .line 34
    invoke-virtual {v1, p1}, Lcom/baidu/launcher/utils/PhoneInfoStateManager;->getLocation(Landroid/content/Context;)[D

    move-result-object v0

    .line 35
    .local v0, data:[D
    const/4 v2, 0x0

    aget-wide v2, v0, v2

    iput-wide v2, p0, Lcom/baidu/launcher/business/item/PhoneInfo;->latitude:D

    .line 36
    const/4 v2, 0x1

    aget-wide v2, v0, v2

    iput-wide v2, p0, Lcom/baidu/launcher/business/item/PhoneInfo;->longitude:D

    .line 37
    invoke-virtual {v1, p1}, Lcom/baidu/launcher/utils/PhoneInfoStateManager;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v4}, Lcom/baidu/launcher/business/item/PhoneInfo;->subString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/launcher/business/item/PhoneInfo;->imei:Ljava/lang/String;

    .line 38
    invoke-virtual {v1, p1}, Lcom/baidu/launcher/utils/PhoneInfoStateManager;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v4}, Lcom/baidu/launcher/business/item/PhoneInfo;->subString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/launcher/business/item/PhoneInfo;->mac:Ljava/lang/String;

    .line 39
    invoke-virtual {v1, p1}, Lcom/baidu/launcher/utils/PhoneInfoStateManager;->getOperatorName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v4}, Lcom/baidu/launcher/business/item/PhoneInfo;->subString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/launcher/business/item/PhoneInfo;->operator:Ljava/lang/String;

    .line 40
    invoke-virtual {v1, p1}, Lcom/baidu/launcher/utils/PhoneInfoStateManager;->getPhoneNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {p0, v2, v3}, Lcom/baidu/launcher/business/item/PhoneInfo;->subString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/launcher/business/item/PhoneInfo;->tel:Ljava/lang/String;

    .line 41
    invoke-virtual {v1, p1}, Lcom/baidu/launcher/utils/PhoneInfoStateManager;->getResolution(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v4}, Lcom/baidu/launcher/business/item/PhoneInfo;->subString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/launcher/business/item/PhoneInfo;->resolution:Ljava/lang/String;

    .line 42
    invoke-virtual {v1, p1}, Lcom/baidu/launcher/utils/PhoneInfoStateManager;->getTotalMemory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v4}, Lcom/baidu/launcher/business/item/PhoneInfo;->subString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/launcher/business/item/PhoneInfo;->mem:Ljava/lang/String;

    .line 43
    invoke-virtual {v1}, Lcom/baidu/launcher/utils/PhoneInfoStateManager;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v4}, Lcom/baidu/launcher/business/item/PhoneInfo;->subString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/launcher/business/item/PhoneInfo;->language:Ljava/lang/String;

    .line 44
    invoke-static {p1}, Lcom/baidu/launcher/utils/PhoneInfoStateManager;->getCUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {p0, v2, v3}, Lcom/baidu/launcher/business/item/PhoneInfo;->subString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/launcher/business/item/PhoneInfo;->cuid:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method public getAndroidver()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/baidu/launcher/business/item/PhoneInfo;->androidver:Ljava/lang/String;

    return-object v0
.end method

.method public getBrand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/baidu/launcher/business/item/PhoneInfo;->brand:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/baidu/launcher/business/item/PhoneInfo;->channelid:Ljava/lang/String;

    return-object v0
.end method

.method public getCuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/baidu/launcher/business/item/PhoneInfo;->cuid:Ljava/lang/String;

    return-object v0
.end method

.method public getDevicever()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/baidu/launcher/business/item/PhoneInfo;->devicever:Ljava/lang/String;

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/baidu/launcher/business/item/PhoneInfo;->imei:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/baidu/launcher/business/item/PhoneInfo;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 115
    iget-wide v0, p0, Lcom/baidu/launcher/business/item/PhoneInfo;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 107
    iget-wide v0, p0, Lcom/baidu/launcher/business/item/PhoneInfo;->longitude:D

    return-wide v0
.end method

.method public getMac()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/baidu/launcher/business/item/PhoneInfo;->mac:Ljava/lang/String;

    return-object v0
.end method

.method public getMem()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/baidu/launcher/business/item/PhoneInfo;->mem:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/baidu/launcher/business/item/PhoneInfo;->device:Ljava/lang/String;

    return-object v0
.end method

.method public getOpertator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/baidu/launcher/business/item/PhoneInfo;->operator:Ljava/lang/String;

    return-object v0
.end method

.method public getResolution()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/baidu/launcher/business/item/PhoneInfo;->resolution:Ljava/lang/String;

    return-object v0
.end method

.method public getTel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/baidu/launcher/business/item/PhoneInfo;->tel:Ljava/lang/String;

    return-object v0
.end method

.method public setLatitude(F)V
    .locals 2
    .parameter "latitude"

    .prologue
    .line 119
    float-to-double v0, p1

    iput-wide v0, p0, Lcom/baidu/launcher/business/item/PhoneInfo;->latitude:D

    .line 120
    return-void
.end method

.method public setLongitude(F)V
    .locals 2
    .parameter "longitude"

    .prologue
    .line 111
    float-to-double v0, p1

    iput-wide v0, p0, Lcom/baidu/launcher/business/item/PhoneInfo;->longitude:D

    .line 112
    return-void
.end method

.method public setTel(Ljava/lang/String;)V
    .locals 0
    .parameter "tel"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/baidu/launcher/business/item/PhoneInfo;->tel:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public subString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter "aData"
    .parameter "aLength"

    .prologue
    .line 48
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p2, :cond_0

    .line 49
    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 51
    .end local p1
    :cond_0
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PhoneInfo [brand="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/business/item/PhoneInfo;->brand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/business/item/PhoneInfo;->device:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", androidver="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/business/item/PhoneInfo;->androidver:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", channelid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/business/item/PhoneInfo;->channelid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", imei="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/business/item/PhoneInfo;->imei:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mac="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/business/item/PhoneInfo;->mac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", operator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/business/item/PhoneInfo;->operator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/business/item/PhoneInfo;->tel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", resolution="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/business/item/PhoneInfo;->resolution:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/business/item/PhoneInfo;->mem:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/business/item/PhoneInfo;->cuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/business/item/PhoneInfo;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", devicever="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/business/item/PhoneInfo;->devicever:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", longitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/baidu/launcher/business/item/PhoneInfo;->longitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", latitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/baidu/launcher/business/item/PhoneInfo;->latitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", language="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/business/item/PhoneInfo;->language:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
