.class public Lcom/inveno/flow/entity/model/showflow/ShowFlowP;
.super Ljava/lang/Object;
.source "ShowFlowP.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/inveno/flow/entity/model/showflow/ShowFlowP;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private content:Ljava/lang/String;

.field private format:Ljava/lang/String;

.field private height:I

.field private imgSize:I

.field private isImg:[Z

.field private isReading:[Z

.field private type:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 156
    new-instance v0, Lcom/inveno/flow/entity/model/showflow/ShowFlowP$1;

    invoke-direct {v0}, Lcom/inveno/flow/entity/model/showflow/ShowFlowP$1;-><init>()V

    sput-object v0, Lcom/inveno/flow/entity/model/showflow/ShowFlowP;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-array v0, v1, [Z

    iput-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowP;->isImg:[Z

    .line 118
    new-array v0, v1, [Z

    iput-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowP;->isReading:[Z

    .line 119
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    const/4 v1, 0x1

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-array v0, v1, [Z

    iput-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowP;->isImg:[Z

    .line 123
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowP;->isImg:[Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowP;->content:Ljava/lang/String;

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowP;->format:Ljava/lang/String;

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowP;->width:I

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowP;->height:I

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowP;->type:Ljava/lang/String;

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowP;->url:Ljava/lang/String;

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowP;->imgSize:I

    .line 131
    new-array v0, v1, [Z

    iput-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowP;->isReading:[Z

    .line 132
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowP;->isReading:[Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 133
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/inveno/flow/entity/model/showflow/ShowFlowP;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/inveno/flow/entity/model/showflow/ShowFlowP;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static parse(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .parameter "json"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/inveno/flow/entity/model/showflow/ShowFlowP;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    const/4 v7, 0x0

    .line 174
    .local v7, showFlowPs:Ljava/util/List;,"Ljava/util/List<Lcom/inveno/flow/entity/model/showflow/ShowFlowP;>;"
    invoke-static {p0}, Lcom/inveno/flyshare/utils/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 176
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 179
    .local v5, jsonObject:Lorg/json/JSONObject;
    const-string v9, "content"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 180
    .local v1, contentArray:Lorg/json/JSONArray;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lez v9, :cond_0

    .line 181
    new-instance v8, Ljava/util/ArrayList;

    const/4 v9, 0x5

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    .line 182
    .end local v7           #showFlowPs:Ljava/util/List;,"Ljava/util/List<Lcom/inveno/flow/entity/model/showflow/ShowFlowP;>;"
    .local v8, showFlowPs:Ljava/util/List;,"Ljava/util/List<Lcom/inveno/flow/entity/model/showflow/ShowFlowP;>;"
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lt v4, v9, :cond_1

    move-object v7, v8

    .line 210
    .end local v1           #contentArray:Lorg/json/JSONArray;
    .end local v4           #i:I
    .end local v5           #jsonObject:Lorg/json/JSONObject;
    .end local v8           #showFlowPs:Ljava/util/List;,"Ljava/util/List<Lcom/inveno/flow/entity/model/showflow/ShowFlowP;>;"
    .restart local v7       #showFlowPs:Ljava/util/List;,"Ljava/util/List<Lcom/inveno/flow/entity/model/showflow/ShowFlowP;>;"
    :cond_0
    :goto_1
    return-object v7

    .line 183
    .end local v7           #showFlowPs:Ljava/util/List;,"Ljava/util/List<Lcom/inveno/flow/entity/model/showflow/ShowFlowP;>;"
    .restart local v1       #contentArray:Lorg/json/JSONArray;
    .restart local v4       #i:I
    .restart local v5       #jsonObject:Lorg/json/JSONObject;
    .restart local v8       #showFlowPs:Ljava/util/List;,"Ljava/util/List<Lcom/inveno/flow/entity/model/showflow/ShowFlowP;>;"
    :cond_1
    new-instance v6, Lcom/inveno/flow/entity/model/showflow/ShowFlowP;

    invoke-direct {v6}, Lcom/inveno/flow/entity/model/showflow/ShowFlowP;-><init>()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 186
    .local v6, p:Lcom/inveno/flow/entity/model/showflow/ShowFlowP;
    :try_start_2
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 188
    .local v2, contentObject:Lorg/json/JSONObject;
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Lcom/inveno/flow/entity/model/showflow/ShowFlowP;->setImg(Z)V

    .line 189
    const-string v9, "url"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/inveno/flow/entity/model/showflow/ShowFlowP;->setUrl(Ljava/lang/String;)V

    .line 190
    const-string v9, "type"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/inveno/flow/entity/model/showflow/ShowFlowP;->setType(Ljava/lang/String;)V

    .line 191
    const-string v9, "format"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/inveno/flow/entity/model/showflow/ShowFlowP;->setFormat(Ljava/lang/String;)V

    .line 192
    const-string v9, "width"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v9}, Lcom/inveno/flow/entity/model/showflow/ShowFlowP;->setWidth(I)V

    .line 193
    const-string v9, "height"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v9}, Lcom/inveno/flow/entity/model/showflow/ShowFlowP;->setHeight(I)V

    .line 194
    const-string v9, "size"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v9}, Lcom/inveno/flow/entity/model/showflow/ShowFlowP;->setImgSize(I)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 201
    .end local v2           #contentObject:Lorg/json/JSONObject;
    :goto_2
    :try_start_3
    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 195
    :catch_0
    move-exception v3

    .line 196
    .local v3, e:Lorg/json/JSONException;
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, c:Ljava/lang/String;
    invoke-static {v0}, Lcom/inveno/flyshare/utils/StringTools;->removeHtmlFlow(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/inveno/flow/entity/model/showflow/ShowFlowP;->setContent(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 204
    .end local v0           #c:Ljava/lang/String;
    .end local v3           #e:Lorg/json/JSONException;
    .end local v6           #p:Lcom/inveno/flow/entity/model/showflow/ShowFlowP;
    :catch_1
    move-exception v9

    move-object v7, v8

    .end local v8           #showFlowPs:Ljava/util/List;,"Ljava/util/List<Lcom/inveno/flow/entity/model/showflow/ShowFlowP;>;"
    .restart local v7       #showFlowPs:Ljava/util/List;,"Ljava/util/List<Lcom/inveno/flow/entity/model/showflow/ShowFlowP;>;"
    goto :goto_1

    .end local v1           #contentArray:Lorg/json/JSONArray;
    .end local v4           #i:I
    .end local v5           #jsonObject:Lorg/json/JSONObject;
    :catch_2
    move-exception v9

    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowP;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowP;->format:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowP;->height:I

    return v0
.end method

.method public getImgSize()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowP;->imgSize:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowP;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowP;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowP;->width:I

    return v0
.end method

.method public isImg()Z
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowP;->isImg:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isReading()Z
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowP;->isReading:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    return v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .parameter "content"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowP;->content:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setFormat(Ljava/lang/String;)V
    .locals 0
    .parameter "format"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowP;->format:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 73
    iput p1, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowP;->height:I

    .line 74
    return-void
.end method

.method public setImg(Z)V
    .locals 2
    .parameter "isImg"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowP;->isImg:[Z

    const/4 v1, 0x0

    aput-boolean p1, v0, v1

    .line 98
    return-void
.end method

.method public setImgSize(I)V
    .locals 0
    .parameter "imgSize"

    .prologue
    .line 113
    iput p1, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowP;->imgSize:I

    .line 114
    return-void
.end method

.method public setReading(Z)V
    .locals 2
    .parameter "isReading"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowP;->isReading:[Z

    const/4 v1, 0x0

    aput-boolean p1, v0, v1

    .line 106
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowP;->type:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowP;->url:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 65
    iput p1, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowP;->width:I

    .line 66
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowP;->isImg:[Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 145
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowP;->content:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowP;->format:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 147
    iget v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowP;->width:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    iget v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowP;->height:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowP;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowP;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 151
    iget v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowP;->imgSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowP;->isReading:[Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 154
    return-void
.end method
