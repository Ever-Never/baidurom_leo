.class public Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;
.super Lcom/baidu/launcher/thememanager/model/AbsDataItem;
.source "ThemeOnlineInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static ACCOUNT_MONTHLY_PAYED:I = 0x0

.field public static APP_IS_PAYED:I = 0x0

.field public static BUNDLE_KEY:Ljava/lang/String; = null

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static NOT_PAYED:I = 0x0

.field public static final TAG:Ljava/lang/String; = "ThemeItemInfo"


# instance fields
.field private final mAuthor:Ljava/lang/String;

.field private final mDownNum:I

.field private final mFileName:Ljava/lang/String;

.field private final mSize:I

.field private final mTel:Ljava/lang/String;

.field private final mThemeIconUrl:Ljava/lang/String;

.field public final mThemeId:I

.field private final mThemeMd5:Ljava/lang/String;

.field private final mThemeTitle:Ljava/lang/String;

.field private final mThemeUrl:Ljava/lang/String;

.field private final mUiVersion:Ljava/lang/String;

.field private final mUpdtime:Ljava/lang/String;

.field private final mUserId:Ljava/lang/String;

.field private final mVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "Bundle_Key_ThemeItemInfo"

    sput-object v0, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;->BUNDLE_KEY:Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    sput v0, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;->NOT_PAYED:I

    .line 25
    const/4 v0, 0x1

    sput v0, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;->APP_IS_PAYED:I

    .line 26
    const/4 v0, 0x2

    sput v0, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;->ACCOUNT_MONTHLY_PAYED:I

    .line 261
    new-instance v0, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo$1;

    invoke-direct {v0}, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo$1;-><init>()V

    sput-object v0, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "themeid"
    .parameter "themetitle"
    .parameter "thememd5"
    .parameter "downnum"
    .parameter "themeurl"
    .parameter "themeiconurl"
    .parameter "version"
    .parameter "uiversion"
    .parameter "author"
    .parameter "filename"
    .parameter "size"
    .parameter "userId"
    .parameter "updtime"
    .parameter "tel"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/baidu/launcher/thememanager/model/AbsDataItem;-><init>()V

    .line 80
    iput p1, p0, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;->mThemeId:I

    .line 81
    iput-object p2, p0, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;->mThemeTitle:Ljava/lang/String;

    .line 82
    iput-object p3, p0, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;->mThemeMd5:Ljava/lang/String;

    .line 83
    iput p4, p0, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;->mDownNum:I

    .line 84
    iput-object p5, p0, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;->mThemeUrl:Ljava/lang/String;

    .line 85
    iput-object p6, p0, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;->mThemeIconUrl:Ljava/lang/String;

    .line 86
    iput-object p7, p0, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;->mVersion:Ljava/lang/String;

    .line 87
    iput-object p8, p0, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;->mUiVersion:Ljava/lang/String;

    .line 88
    iput-object p9, p0, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;->mAuthor:Ljava/lang/String;

    .line 89
    iput-object p10, p0, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;->mFileName:Ljava/lang/String;

    .line 90
    iput p11, p0, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;->mSize:I

    .line 91
    iput-object p12, p0, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;->mUserId:Ljava/lang/String;

    .line 92
    iput-object p13, p0, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;->mUpdtime:Ljava/lang/String;

    .line 93
    iput-object p14, p0, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;->mTel:Ljava/lang/String;

    .line 94
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/baidu/launcher/thememanager/model/AbsDataItem;-><init>()V

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;->mThemeId:I

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;->mThemeTitle:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;->mThemeMd5:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;->mDownNum:I

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;->mThemeUrl:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;->mThemeIconUrl:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;->mVersion:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;->mUiVersion:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;->mAuthor:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;->mFileName:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;->mSize:I

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;->mUserId:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;->mUpdtime:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;->mTel:Ljava/lang/String;

    .line 61
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static create(Lorg/json/JSONObject;)Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;
    .locals 17
    .parameter "themeItemObj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 98
    :try_start_0
    const-string v1, "tid"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 99
    .local v2, themeid:I
    const-string v1, "title"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/launcher/thememanager/util/Utils;->checkIllegalOnItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 100
    .local v3, themetitle:Ljava/lang/String;
    const-string v1, "md5"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 101
    .local v4, thememd5:Ljava/lang/String;
    const-string v1, "dldnum"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 102
    .local v5, downnum:I
    const-string v1, "pkg_url"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 103
    .local v6, themeurl:Ljava/lang/String;
    const-string v1, "cover_url"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 105
    .local v7, themeiconurl:Ljava/lang/String;
    const-string v8, ""

    .line 106
    .local v8, version:Ljava/lang/String;
    const-string v1, "version"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    const-string v1, "version"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/launcher/thememanager/util/Utils;->checkIllegalOnItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 110
    :cond_0
    const-string v9, ""

    .line 111
    .local v9, uiversion:Ljava/lang/String;
    const-string v1, "uiversion"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    const-string v1, "uiversion"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/launcher/thememanager/util/Utils;->checkIllegalOnItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 115
    :cond_1
    const-string v10, ""

    .line 116
    .local v10, author:Ljava/lang/String;
    const-string v1, "author"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 117
    const-string v1, "author"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 120
    :cond_2
    const-string v11, ""

    .line 121
    .local v11, filename:Ljava/lang/String;
    const-string v1, "filename"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 122
    const-string v1, "filename"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 125
    :cond_3
    const/4 v12, 0x0

    .line 126
    .local v12, size:I
    const-string v1, "size"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 127
    const-string v1, "size"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 130
    :cond_4
    const-string v13, ""

    .line 131
    .local v13, userId:Ljava/lang/String;
    const-string v1, "userid"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 132
    const-string v1, "userid"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 135
    :cond_5
    const-string v14, ""

    .line 136
    .local v14, updtime:Ljava/lang/String;
    const-string v1, "updtime"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 137
    const-string v1, "updtime"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 140
    :cond_6
    const-string v15, ""

    .line 141
    .local v15, tel:Ljava/lang/String;
    const-string v1, "tel"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 142
    const-string v1, "tel"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 145
    :cond_7
    new-instance v1, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;

    invoke-direct/range {v1 .. v15}, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 159
    .end local v2           #themeid:I
    .end local v3           #themetitle:Ljava/lang/String;
    .end local v4           #thememd5:Ljava/lang/String;
    .end local v5           #downnum:I
    .end local v6           #themeurl:Ljava/lang/String;
    .end local v7           #themeiconurl:Ljava/lang/String;
    .end local v8           #version:Ljava/lang/String;
    .end local v9           #uiversion:Ljava/lang/String;
    .end local v10           #author:Ljava/lang/String;
    .end local v11           #filename:Ljava/lang/String;
    .end local v12           #size:I
    .end local v13           #userId:Ljava/lang/String;
    .end local v14           #updtime:Ljava/lang/String;
    .end local v15           #tel:Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 160
    .local v16, e:Lorg/json/JSONException;
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONException;->printStackTrace()V

    .line 161
    throw v16
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x0

    return v0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;->mAuthor:Ljava/lang/String;

    return-object v0
.end method

.method public getDownNum()I
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;->mDownNum:I

    return v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getTel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;->mTel:Ljava/lang/String;

    return-object v0
.end method

.method public getThemeIconUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/launcher/thememanager/network/NetworkUtil;->getServerUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/small/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;->mThemeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/240/400/cover"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThemeId()I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;->mThemeId:I

    return v0
.end method

.method public getThemeMd5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;->mThemeMd5:Ljava/lang/String;

    return-object v0
.end method

.method public getThemeSize()I
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;->mSize:I

    return v0
.end method

.method public getThemeTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;->mThemeTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getThemeUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/launcher/thememanager/network/NetworkUtil;->getServerUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;->mThemeUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThemeUrlId()I
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;->mThemeId:I

    return v0
.end method

.method public getThemeVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getUiVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;->mUiVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getUpDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;->mUpdtime:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;->mUserId:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 229
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v1, "{ ThemeItemInfo: \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mThemeId      "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;->mThemeId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mThemeTitle   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;->mThemeTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mThemeMd5     "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;->mThemeMd5:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDownNum      "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;->mDownNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mThemeUrl     "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;->mThemeUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mThemeIconUrl "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;->mThemeIconUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mVersion      "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;->mVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mUiVersion    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;->mUiVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAuthor       "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;->mAuthor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 249
    iget v0, p0, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;->mThemeId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 250
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;->mThemeTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;->mThemeMd5:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 252
    iget v0, p0, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;->mDownNum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 253
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;->mThemeUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;->mThemeIconUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;->mVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;->mUiVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;->mAuthor:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 259
    return-void
.end method
