.class public Lcom/inveno/newpiflow/model/Item;
.super Ljava/lang/Object;
.source "Item.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/inveno/newpiflow/model/Item;",
            ">;"
        }
    .end annotation
.end field

.field public static final DIAL:I = 0x2

.field public static final IMAGE:I = 0x0

.field public static final OPEN_BY_BROWSER:I = 0x0

.field public static final OPEN_IMAGES:I = 0x4

.field public static final OPEN_IN_TTWINDOW:I = 0x1

.field public static final RUN_APK:I = 0x3

.field public static final TEXT:I = 0x1


# instance fields
.field public mAdTitle:Ljava/lang/String;

.field public mBanner:Ljava/lang/String;

.field public mCPDownCount:I

.field public mCPPackageSize:Ljava/lang/String;

.field public mCType:Ljava/lang/String;

.field public mCategory:Ljava/lang/String;

.field public mClick_Num:Ljava/lang/String;

.field public mComments_Num:Ljava/lang/String;

.field public mContent:Ljava/lang/String;

.field public mCpApk:Ljava/lang/String;

.field public mCpIcon:Ljava/lang/String;

.field public mCpMemo:Ljava/lang/String;

.field public mCpName:Ljava/lang/String;

.field public mCpPackage:Ljava/lang/String;

.field public mCpVersion:Ljava/lang/String;

.field public mData:Ljava/lang/String;

.field public mFavorite_Num:Ljava/lang/String;

.field public mFirst:I

.field public mHeight:I

.field public mId:Ljava/lang/String;

.field public mImageHeight:I

.field public mImageView:Landroid/widget/ImageView;

.field public mImageWidth:I

.field public mImg:Ljava/lang/String;

.field public mImgDetail:Ljava/lang/String;

.field public mLinkurl:Ljava/lang/String;

.field public mPhone:Ljava/lang/String;

.field public mRealId:Ljava/lang/String;

.field public mReco_Id:Ljava/lang/String;

.field public mSecond:I

.field public mShare_Num:Ljava/lang/String;

.field public mSnippet:Ljava/lang/String;

.field public mSrc:Ljava/lang/String;

.field public mTitle:Ljava/lang/String;

.field public mTm:Ljava/lang/String;

.field public mType:Ljava/lang/String;

.field public mWidth:I

.field public mX:I

.field public mY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Lcom/inveno/newpiflow/model/Item$1;

    invoke-direct {v0}, Lcom/inveno/newpiflow/model/Item$1;-><init>()V

    sput-object v0, Lcom/inveno/newpiflow/model/Item;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/inveno/newpiflow/model/Item;->mId:Ljava/lang/String;

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lcom/inveno/newpiflow/model/Item;->mRealId:Ljava/lang/String;

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lcom/inveno/newpiflow/model/Item;->mType:Ljava/lang/String;

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/inveno/newpiflow/model/Item;->mCType:Ljava/lang/String;

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/inveno/newpiflow/model/Item;->mSrc:Ljava/lang/String;

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/inveno/newpiflow/model/Item;->mTitle:Ljava/lang/String;

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lcom/inveno/newpiflow/model/Item;->mSnippet:Ljava/lang/String;

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/inveno/newpiflow/model/Item;->mTm:Ljava/lang/String;

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lcom/inveno/newpiflow/model/Item;->mFavorite_Num:Ljava/lang/String;

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lcom/inveno/newpiflow/model/Item;->mClick_Num:Ljava/lang/String;

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lcom/inveno/newpiflow/model/Item;->mComments_Num:Ljava/lang/String;

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lcom/inveno/newpiflow/model/Item;->mShare_Num:Ljava/lang/String;

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lcom/inveno/newpiflow/model/Item;->mReco_Id:Ljava/lang/String;

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lcom/inveno/newpiflow/model/Item;->mContent:Ljava/lang/String;

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lcom/inveno/newpiflow/model/Item;->mImgDetail:Ljava/lang/String;

    .line 80
    const-string v0, ""

    iput-object v0, p0, Lcom/inveno/newpiflow/model/Item;->mImg:Ljava/lang/String;

    .line 81
    const-string v0, ""

    iput-object v0, p0, Lcom/inveno/newpiflow/model/Item;->mLinkurl:Ljava/lang/String;

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lcom/inveno/newpiflow/model/Item;->mCpName:Ljava/lang/String;

    .line 83
    const-string v0, ""

    iput-object v0, p0, Lcom/inveno/newpiflow/model/Item;->mCpPackage:Ljava/lang/String;

    .line 84
    const-string v0, ""

    iput-object v0, p0, Lcom/inveno/newpiflow/model/Item;->mCpVersion:Ljava/lang/String;

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcom/inveno/newpiflow/model/Item;->mCpIcon:Ljava/lang/String;

    .line 86
    const-string v0, ""

    iput-object v0, p0, Lcom/inveno/newpiflow/model/Item;->mCpApk:Ljava/lang/String;

    .line 87
    const-string v0, ""

    iput-object v0, p0, Lcom/inveno/newpiflow/model/Item;->mCpMemo:Ljava/lang/String;

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lcom/inveno/newpiflow/model/Item;->mAdTitle:Ljava/lang/String;

    .line 89
    iput v1, p0, Lcom/inveno/newpiflow/model/Item;->mCPDownCount:I

    .line 90
    const-string v0, ""

    iput-object v0, p0, Lcom/inveno/newpiflow/model/Item;->mCPPackageSize:Ljava/lang/String;

    .line 91
    const-string v0, ""

    iput-object v0, p0, Lcom/inveno/newpiflow/model/Item;->mPhone:Ljava/lang/String;

    .line 92
    const-string v0, ""

    iput-object v0, p0, Lcom/inveno/newpiflow/model/Item;->mBanner:Ljava/lang/String;

    .line 93
    iput v1, p0, Lcom/inveno/newpiflow/model/Item;->mFirst:I

    .line 94
    iput v1, p0, Lcom/inveno/newpiflow/model/Item;->mSecond:I

    .line 95
    const-string v0, ""

    iput-object v0, p0, Lcom/inveno/newpiflow/model/Item;->mData:Ljava/lang/String;

    .line 96
    const-string v0, ""

    iput-object v0, p0, Lcom/inveno/newpiflow/model/Item;->mCategory:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "paramParcel"

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/newpiflow/model/Item;->mId:Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/newpiflow/model/Item;->mRealId:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/newpiflow/model/Item;->mType:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/newpiflow/model/Item;->mCType:Ljava/lang/String;

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/newpiflow/model/Item;->mSrc:Ljava/lang/String;

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/newpiflow/model/Item;->mTitle:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/newpiflow/model/Item;->mSnippet:Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/newpiflow/model/Item;->mTm:Ljava/lang/String;

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/newpiflow/model/Item;->mFavorite_Num:Ljava/lang/String;

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/newpiflow/model/Item;->mClick_Num:Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/newpiflow/model/Item;->mComments_Num:Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/newpiflow/model/Item;->mShare_Num:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/newpiflow/model/Item;->mReco_Id:Ljava/lang/String;

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/newpiflow/model/Item;->mContent:Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/newpiflow/model/Item;->mImgDetail:Ljava/lang/String;

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/newpiflow/model/Item;->mImg:Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/newpiflow/model/Item;->mLinkurl:Ljava/lang/String;

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/newpiflow/model/Item;->mCpName:Ljava/lang/String;

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/newpiflow/model/Item;->mCpPackage:Ljava/lang/String;

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/newpiflow/model/Item;->mCpVersion:Ljava/lang/String;

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/newpiflow/model/Item;->mCpIcon:Ljava/lang/String;

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/newpiflow/model/Item;->mCpApk:Ljava/lang/String;

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/newpiflow/model/Item;->mCpMemo:Ljava/lang/String;

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/newpiflow/model/Item;->mAdTitle:Ljava/lang/String;

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/inveno/newpiflow/model/Item;->mCPDownCount:I

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/newpiflow/model/Item;->mCPPackageSize:Ljava/lang/String;

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/newpiflow/model/Item;->mPhone:Ljava/lang/String;

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/newpiflow/model/Item;->mBanner:Ljava/lang/String;

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/inveno/newpiflow/model/Item;->mFirst:I

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/inveno/newpiflow/model/Item;->mSecond:I

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/newpiflow/model/Item;->mData:Ljava/lang/String;

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/newpiflow/model/Item;->mCategory:Ljava/lang/String;

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/inveno/newpiflow/model/Item;->mImageWidth:I

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/inveno/newpiflow/model/Item;->mImageHeight:I

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/inveno/newpiflow/model/Item;->mX:I

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/inveno/newpiflow/model/Item;->mY:I

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/inveno/newpiflow/model/Item;->mWidth:I

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/inveno/newpiflow/model/Item;->mHeight:I

    .line 138
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "paramParcel"
    .parameter "paramInt"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/inveno/newpiflow/model/Item;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/inveno/newpiflow/model/Item;->mRealId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/inveno/newpiflow/model/Item;->mType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/inveno/newpiflow/model/Item;->mCType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/inveno/newpiflow/model/Item;->mSrc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/inveno/newpiflow/model/Item;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/inveno/newpiflow/model/Item;->mSnippet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/inveno/newpiflow/model/Item;->mTm:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/inveno/newpiflow/model/Item;->mFavorite_Num:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/inveno/newpiflow/model/Item;->mClick_Num:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/inveno/newpiflow/model/Item;->mComments_Num:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/inveno/newpiflow/model/Item;->mShare_Num:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/inveno/newpiflow/model/Item;->mReco_Id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/inveno/newpiflow/model/Item;->mContent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/inveno/newpiflow/model/Item;->mImgDetail:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/inveno/newpiflow/model/Item;->mImg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/inveno/newpiflow/model/Item;->mLinkurl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/inveno/newpiflow/model/Item;->mCpName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/inveno/newpiflow/model/Item;->mCpPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/inveno/newpiflow/model/Item;->mCpVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/inveno/newpiflow/model/Item;->mCpIcon:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/inveno/newpiflow/model/Item;->mCpApk:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/inveno/newpiflow/model/Item;->mCpMemo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/inveno/newpiflow/model/Item;->mAdTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 169
    iget v0, p0, Lcom/inveno/newpiflow/model/Item;->mCPDownCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    iget-object v0, p0, Lcom/inveno/newpiflow/model/Item;->mCPPackageSize:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/inveno/newpiflow/model/Item;->mPhone:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/inveno/newpiflow/model/Item;->mBanner:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 173
    iget v0, p0, Lcom/inveno/newpiflow/model/Item;->mFirst:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    iget v0, p0, Lcom/inveno/newpiflow/model/Item;->mSecond:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    iget-object v0, p0, Lcom/inveno/newpiflow/model/Item;->mData:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/inveno/newpiflow/model/Item;->mCategory:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 177
    iget v0, p0, Lcom/inveno/newpiflow/model/Item;->mImageWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    iget v0, p0, Lcom/inveno/newpiflow/model/Item;->mImageHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    iget v0, p0, Lcom/inveno/newpiflow/model/Item;->mX:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    iget v0, p0, Lcom/inveno/newpiflow/model/Item;->mY:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    iget v0, p0, Lcom/inveno/newpiflow/model/Item;->mWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    iget v0, p0, Lcom/inveno/newpiflow/model/Item;->mHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    return-void
.end method
