.class public Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;
.super Ljava/lang/Object;
.source "ShowFlowHardAd.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;",
            ">;"
        }
    .end annotation
.end field

.field public static final STORY:Ljava/lang/String; = "8"

.field public static final VIDEO:Ljava/lang/String; = "6"

.field public static final VOICE:Ljava/lang/String; = "7"


# instance fields
.field private adTitle:Ljava/lang/String;

.field private aging:I

.field private content:Ljava/lang/String;

.field private cpapk:Ljava/lang/String;

.field private cpauthor:Ljava/lang/String;

.field private cpicon:Ljava/lang/String;

.field private cplanguage:Ljava/lang/String;

.field private cpmemo:Ljava/lang/String;

.field private cpname:Ljava/lang/String;

.field private cppackage:Ljava/lang/String;

.field private cpversion:Ljava/lang/String;

.field private ctype:Ljava/lang/String;

.field private downCount:I

.field private duration:Ljava/lang/String;

.field private end_hour:I

.field private end_time:Ljava/lang/String;

.field private first:I

.field private keyword:Ljava/lang/String;

.field private linkurl:Ljava/lang/String;

.field private pbig:Ljava/lang/String;

.field private phone:Ljava/lang/String;

.field private region:Ljava/lang/String;

.field private second:I

.field private start_hour:I

.field private start_time:Ljava/lang/String;

.field private state:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 326
    new-instance v0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd$1;

    invoke-direct {v0}, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd$1;-><init>()V

    sput-object v0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->adTitle:Ljava/lang/String;

    .line 259
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->aging:I

    .line 260
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->content:Ljava/lang/String;

    .line 261
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->cpapk:Ljava/lang/String;

    .line 262
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->cpauthor:Ljava/lang/String;

    .line 263
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->cpicon:Ljava/lang/String;

    .line 264
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->cplanguage:Ljava/lang/String;

    .line 265
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->cpmemo:Ljava/lang/String;

    .line 266
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->cpname:Ljava/lang/String;

    .line 267
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->cppackage:Ljava/lang/String;

    .line 268
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->cpversion:Ljava/lang/String;

    .line 269
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->ctype:Ljava/lang/String;

    .line 270
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->downCount:I

    .line 271
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->end_hour:I

    .line 272
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->end_time:Ljava/lang/String;

    .line 273
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->first:I

    .line 274
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->keyword:Ljava/lang/String;

    .line 275
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->linkurl:Ljava/lang/String;

    .line 276
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->pbig:Ljava/lang/String;

    .line 277
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->phone:Ljava/lang/String;

    .line 278
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->region:Ljava/lang/String;

    .line 279
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->second:I

    .line 280
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->start_hour:I

    .line 281
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->start_time:Ljava/lang/String;

    .line 282
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->state:I

    .line 283
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->duration:Ljava/lang/String;

    .line 284
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 257
    invoke-direct {p0, p1}, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 289
    const/4 v0, 0x0

    return v0
.end method

.method public getAdTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->adTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getAging()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->aging:I

    return v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getCpapk()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->cpapk:Ljava/lang/String;

    return-object v0
.end method

.method public getCpauthor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->cpauthor:Ljava/lang/String;

    return-object v0
.end method

.method public getCpicon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->cpicon:Ljava/lang/String;

    return-object v0
.end method

.method public getCplanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->cplanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getCpmemo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->cpmemo:Ljava/lang/String;

    return-object v0
.end method

.method public getCpname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->cpname:Ljava/lang/String;

    return-object v0
.end method

.method public getCppackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->cppackage:Ljava/lang/String;

    return-object v0
.end method

.method public getCpversion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->cpversion:Ljava/lang/String;

    return-object v0
.end method

.method public getCtype()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->ctype:Ljava/lang/String;

    return-object v0
.end method

.method public getDownCount()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->downCount:I

    return v0
.end method

.method public getDuration()Ljava/lang/String;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->duration:Ljava/lang/String;

    return-object v0
.end method

.method public getEnd_hour()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->end_hour:I

    return v0
.end method

.method public getEnd_time()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->end_time:Ljava/lang/String;

    return-object v0
.end method

.method public getFirst()I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->first:I

    return v0
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->keyword:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkurl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->linkurl:Ljava/lang/String;

    return-object v0
.end method

.method public getPbig()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->pbig:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->region:Ljava/lang/String;

    return-object v0
.end method

.method public getSecond()I
    .locals 1

    .prologue
    .line 219
    iget v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->second:I

    return v0
.end method

.method public getStart_hour()I
    .locals 1

    .prologue
    .line 227
    iget v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->start_hour:I

    return v0
.end method

.method public getStart_time()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->start_time:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 243
    iget v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->state:I

    return v0
.end method

.method public setAdTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "adTitle"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->adTitle:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setAging(I)V
    .locals 0
    .parameter "aging"

    .prologue
    .line 63
    iput p1, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->aging:I

    .line 64
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .parameter "content"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->content:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setCpapk(Ljava/lang/String;)V
    .locals 0
    .parameter "cpapk"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->cpapk:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setCpauthor(Ljava/lang/String;)V
    .locals 0
    .parameter "cpauthor"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->cpauthor:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setCpicon(Ljava/lang/String;)V
    .locals 0
    .parameter "cpicon"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->cpicon:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setCplanguage(Ljava/lang/String;)V
    .locals 0
    .parameter "cplanguage"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->cplanguage:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setCpmemo(Ljava/lang/String;)V
    .locals 0
    .parameter "cpmemo"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->cpmemo:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setCpname(Ljava/lang/String;)V
    .locals 0
    .parameter "cpname"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->cpname:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setCppackage(Ljava/lang/String;)V
    .locals 0
    .parameter "cppackage"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->cppackage:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public setCpversion(Ljava/lang/String;)V
    .locals 0
    .parameter "cpversion"

    .prologue
    .line 135
    iput-object p1, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->cpversion:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public setCtype(Ljava/lang/String;)V
    .locals 0
    .parameter "ctype"

    .prologue
    .line 143
    iput-object p1, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->ctype:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public setDownCount(I)V
    .locals 0
    .parameter "downCount"

    .prologue
    .line 151
    iput p1, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->downCount:I

    .line 152
    return-void
.end method

.method public setDuration(Ljava/lang/String;)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 346
    iput-object p1, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->duration:Ljava/lang/String;

    .line 347
    return-void
.end method

.method public setEnd_hour(I)V
    .locals 0
    .parameter "end_hour"

    .prologue
    .line 159
    iput p1, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->end_hour:I

    .line 160
    return-void
.end method

.method public setEnd_time(Ljava/lang/String;)V
    .locals 0
    .parameter "end_time"

    .prologue
    .line 167
    iput-object p1, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->end_time:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public setFirst(I)V
    .locals 0
    .parameter "first"

    .prologue
    .line 175
    iput p1, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->first:I

    .line 176
    return-void
.end method

.method public setKeyword(Ljava/lang/String;)V
    .locals 0
    .parameter "keyword"

    .prologue
    .line 183
    iput-object p1, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->keyword:Ljava/lang/String;

    .line 184
    return-void
.end method

.method public setLinkurl(Ljava/lang/String;)V
    .locals 0
    .parameter "linkurl"

    .prologue
    .line 191
    iput-object p1, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->linkurl:Ljava/lang/String;

    .line 192
    return-void
.end method

.method public setPbig(Ljava/lang/String;)V
    .locals 0
    .parameter "pbig"

    .prologue
    .line 199
    iput-object p1, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->pbig:Ljava/lang/String;

    .line 200
    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0
    .parameter "phone"

    .prologue
    .line 207
    iput-object p1, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->phone:Ljava/lang/String;

    .line 208
    return-void
.end method

.method public setRegion(Ljava/lang/String;)V
    .locals 0
    .parameter "region"

    .prologue
    .line 215
    iput-object p1, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->region:Ljava/lang/String;

    .line 216
    return-void
.end method

.method public setSecond(I)V
    .locals 0
    .parameter "second"

    .prologue
    .line 223
    iput p1, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->second:I

    .line 224
    return-void
.end method

.method public setStart_hour(I)V
    .locals 0
    .parameter "start_hour"

    .prologue
    .line 231
    iput p1, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->start_hour:I

    .line 232
    return-void
.end method

.method public setStart_time(Ljava/lang/String;)V
    .locals 0
    .parameter "start_time"

    .prologue
    .line 239
    iput-object p1, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->start_time:Ljava/lang/String;

    .line 240
    return-void
.end method

.method public setState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 247
    iput p1, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->state:I

    .line 248
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 295
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->adTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 296
    iget v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->aging:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 297
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->content:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->cpapk:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->cpauthor:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->cpicon:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->cplanguage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->cpmemo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->cpname:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->cppackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->cpversion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->ctype:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 307
    iget v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->downCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 308
    iget v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->end_hour:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 309
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->end_time:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 310
    iget v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->first:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 311
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->keyword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->linkurl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->pbig:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->phone:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->region:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 316
    iget v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->second:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 317
    iget v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->start_hour:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 318
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->start_time:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 319
    iget v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->state:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 320
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->duration:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 324
    return-void
.end method
