.class public Lcom/inveno/flow/entity/model/showflow/ShowFlowAd;
.super Ljava/lang/Object;
.source "ShowFlowAd.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final BANNER_SHOW:Ljava/lang/String; = "2"

.field public static final CALL_PHONE:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/inveno/flow/entity/model/showflow/ShowFlowAd;",
            ">;"
        }
    .end annotation
.end field

.field public static final DOWN_APP:I = 0x3

.field public static final OPEN_LINK:I = 0x5

.field public static final PLAY_MEDIA:I = 0x4


# instance fields
.field private adTitle:Ljava/lang/String;

.field private banner:Ljava/lang/String;

.field private cpApk:Ljava/lang/String;

.field private cpIcon:Ljava/lang/String;

.field private cpName:Ljava/lang/String;

.field private cpPackage:Ljava/lang/String;

.field private linkUrl:Ljava/lang/String;

.field private phone:Ljava/lang/String;

.field private second:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 166
    new-instance v0, Lcom/inveno/flow/entity/model/showflow/ShowFlowAd$1;

    invoke-direct {v0}, Lcom/inveno/flow/entity/model/showflow/ShowFlowAd$1;-><init>()V

    sput-object v0, Lcom/inveno/flow/entity/model/showflow/ShowFlowAd;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowAd;->adTitle:Ljava/lang/String;

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowAd;->cpName:Ljava/lang/String;

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowAd;->cpPackage:Ljava/lang/String;

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowAd;->cpApk:Ljava/lang/String;

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowAd;->cpIcon:Ljava/lang/String;

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowAd;->linkUrl:Ljava/lang/String;

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowAd;->phone:Ljava/lang/String;

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowAd;->second:I

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowAd;->banner:Ljava/lang/String;

    .line 142
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/inveno/flow/entity/model/showflow/ShowFlowAd;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/inveno/flow/entity/model/showflow/ShowFlowAd;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method public getAdTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowAd;->adTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getBanner()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowAd;->banner:Ljava/lang/String;

    return-object v0
.end method

.method public getCpApk()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowAd;->cpApk:Ljava/lang/String;

    return-object v0
.end method

.method public getCpIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowAd;->cpIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getCpName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowAd;->cpName:Ljava/lang/String;

    return-object v0
.end method

.method public getCpPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowAd;->cpPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowAd;->linkUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowAd;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public getSecond()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowAd;->second:I

    return v0
.end method

.method public setAdTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "adTitle"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowAd;->adTitle:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setBanner(Ljava/lang/String;)V
    .locals 0
    .parameter "banner"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowAd;->banner:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setCpApk(Ljava/lang/String;)V
    .locals 0
    .parameter "cpApk"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowAd;->cpApk:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setCpIcon(Ljava/lang/String;)V
    .locals 0
    .parameter "cpIcon"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowAd;->cpIcon:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setCpName(Ljava/lang/String;)V
    .locals 0
    .parameter "cpName"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowAd;->cpName:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setCpPackage(Ljava/lang/String;)V
    .locals 0
    .parameter "cpPackage"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowAd;->cpPackage:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setLinkUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "linkUrl"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowAd;->linkUrl:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0
    .parameter "phone"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowAd;->phone:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setSecond(I)V
    .locals 0
    .parameter "second"

    .prologue
    .line 113
    iput p1, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowAd;->second:I

    .line 114
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowAd;->adTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowAd;->cpName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowAd;->cpPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowAd;->cpApk:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowAd;->cpIcon:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowAd;->linkUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowAd;->phone:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 161
    iget v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowAd;->second:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowAd;->banner:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 164
    return-void
.end method
