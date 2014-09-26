.class public Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;
.super Ljava/lang/Object;
.source "ShowFlowNews.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private flowNewinfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;",
            ">;"
        }
    .end annotation
.end field

.field private uploadInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 165
    new-instance v0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNews$1;

    invoke-direct {v0}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNews$1;-><init>()V

    sput-object v0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;->flowNewinfos:Ljava/util/ArrayList;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;->uploadInfos:Ljava/util/ArrayList;

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-class v0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;->flowNewinfos:Ljava/util/ArrayList;

    .line 39
    const-class v0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;->uploadInfos:Ljava/util/ArrayList;

    .line 41
    return-void
.end method

.method public static parse(Landroid/content/Context;Ljava/lang/String;)Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;
    .locals 11
    .parameter "context"
    .parameter "jsonStr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/inveno/newpiflow/download/NoUpdateException;
        }
    .end annotation

    .prologue
    .line 46
    const/4 v2, 0x0

    .line 48
    .local v2, flowNews:Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;
    invoke-static {p1}, Lcom/inveno/flyshare/utils/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 49
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 51
    .local v4, jsonObject:Lorg/json/JSONObject;
    invoke-static {p1}, Lcom/inveno/newpiflow/model/Result;->parse(Ljava/lang/String;)Lcom/inveno/newpiflow/model/Result;

    move-result-object v7

    .line 52
    .local v7, result:Lcom/inveno/newpiflow/model/Result;
    invoke-virtual {v7}, Lcom/inveno/newpiflow/model/Result;->getCode()I

    move-result v9

    if-nez v9, :cond_3

    .line 53
    const/4 v0, 0x0

    .line 55
    .local v0, dataArray:Lorg/json/JSONArray;
    :try_start_0
    const-string v9, "data"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 62
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lez v9, :cond_0

    .line 64
    new-instance v2, Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;

    .end local v2           #flowNews:Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;
    invoke-direct {v2}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;-><init>()V

    .line 66
    .restart local v2       #flowNews:Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lt v3, v9, :cond_1

    .line 89
    .end local v0           #dataArray:Lorg/json/JSONArray;
    .end local v3           #i:I
    .end local v4           #jsonObject:Lorg/json/JSONObject;
    .end local v7           #result:Lcom/inveno/newpiflow/model/Result;
    :cond_0
    return-object v2

    .line 56
    .restart local v0       #dataArray:Lorg/json/JSONArray;
    .restart local v4       #jsonObject:Lorg/json/JSONObject;
    .restart local v7       #result:Lcom/inveno/newpiflow/model/Result;
    :catch_0
    move-exception v1

    .line 57
    .local v1, e:Lorg/json/JSONException;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "\u8bf7\u6c42\u7011\u5e03\u6d41\u8d44\u8baf\u8fd4\u56deerrno\u5b57\u6bb5\uff1a"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/inveno/newpiflow/model/Result;->getCode()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/inveno/flyshare/utils/LogTools;->showLogB(Ljava/lang/String;)V

    .line 59
    new-instance v9, Lcom/inveno/newpiflow/download/NoUpdateException;

    const-string v10, "server no update!"

    invoke-direct {v9, v10}, Lcom/inveno/newpiflow/download/NoUpdateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 67
    .end local v1           #e:Lorg/json/JSONException;
    .restart local v3       #i:I
    :cond_1
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 68
    .local v6, newsObject:Lorg/json/JSONObject;
    invoke-static {p0, v6}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->parse(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;

    move-result-object v5

    .line 71
    .local v5, newinfo:Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;
    invoke-static {v6}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->parse(Lorg/json/JSONObject;)Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;

    move-result-object v8

    .line 72
    .local v8, uploadInfo:Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;
    if-nez v5, :cond_2

    .line 66
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 75
    :cond_2
    invoke-virtual {v2, v5}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;->add(Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;)V

    .line 76
    invoke-virtual {v2, v8}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;->addUpload(Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;)V

    goto :goto_1

    .line 82
    .end local v0           #dataArray:Lorg/json/JSONArray;
    .end local v3           #i:I
    .end local v5           #newinfo:Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;
    .end local v6           #newsObject:Lorg/json/JSONObject;
    .end local v8           #uploadInfo:Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "\u8bf7\u6c42\u7011\u5e03\u6d41\u8d44\u8baf\u8fd4\u56deerrno\u5b57\u6bb5\uff1a"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/inveno/newpiflow/model/Result;->getCode()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/inveno/flyshare/utils/LogTools;->showLogB(Ljava/lang/String;)V

    .line 84
    new-instance v9, Lcom/inveno/newpiflow/download/NoUpdateException;

    const-string v10, "server error!"

    invoke-direct {v9, v10}, Lcom/inveno/newpiflow/download/NoUpdateException;-><init>(Ljava/lang/String;)V

    throw v9
.end method


# virtual methods
.method public add(ILcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;)V
    .locals 1
    .parameter "index"
    .parameter "newInfo"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;->flowNewinfos:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;->flowNewinfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 108
    :cond_0
    return-void
.end method

.method public add(Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;)V
    .locals 1
    .parameter "newInfo"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;->flowNewinfos:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;->flowNewinfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    :cond_0
    return-void
.end method

.method public addAll(Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;)V
    .locals 2
    .parameter "flowNews"

    .prologue
    .line 118
    if-eqz p1, :cond_0

    .line 119
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;->flowNewinfos:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;->getFlowNewinfos()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 122
    :cond_0
    return-void
.end method

.method public addAll(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p1, newinfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;>;"
    if-eqz p1, :cond_0

    .line 112
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;->flowNewinfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 115
    :cond_0
    return-void
.end method

.method public addUpload(Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;)V
    .locals 1
    .parameter "uploadInfo"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;->uploadInfos:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;->uploadInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_0
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x0

    return v0
.end method

.method public get(I)Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;
    .locals 1
    .parameter "index"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;->flowNewinfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;->flowNewinfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;

    .line 137
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFlowNewinfos()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;->flowNewinfos:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getUploadInfos()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;->uploadInfos:Ljava/util/ArrayList;

    return-object v0
.end method

.method public remove(Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;)V
    .locals 1
    .parameter "newinfo"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;->flowNewinfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 147
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;->flowNewinfos:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;->flowNewinfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 128
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;->flowNewinfos:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 162
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;->uploadInfos:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 163
    return-void
.end method
