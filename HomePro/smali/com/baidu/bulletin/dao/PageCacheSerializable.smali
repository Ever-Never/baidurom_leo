.class public Lcom/baidu/bulletin/dao/PageCacheSerializable;
.super Ljava/lang/Object;
.source "PageCacheSerializable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mDataSession:Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/baidu/bulletin/dao/PageCacheSerializable;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/bulletin/dao/PageCacheSerializable;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/baidu/bulletin/dao/PageCacheSerializable;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static close()V
    .locals 1

    .prologue
    .line 231
    sget-object v0, Lcom/baidu/bulletin/dao/PageCacheSerializable;->mDataSession:Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;

    if-eqz v0, :cond_0

    .line 232
    sget-object v0, Lcom/baidu/bulletin/dao/PageCacheSerializable;->mDataSession:Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;

    invoke-virtual {v0}, Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;->close()V

    .line 233
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/bulletin/dao/PageCacheSerializable;->mDataSession:Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;

    .line 235
    :cond_0
    return-void
.end method

.method public static getChannelDAO()Lcom/baidu/bulletin/dao/ChannelItemDAO;
    .locals 2

    .prologue
    .line 238
    sget-object v0, Lcom/baidu/bulletin/dao/PageCacheSerializable;->mDataSession:Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;

    if-nez v0, :cond_0

    .line 239
    sget-object v0, Lcom/baidu/bulletin/dao/PageCacheSerializable;->TAG:Ljava/lang/String;

    const-string v1, "empty session for writing, error"

    invoke-static {v0, v1}, Lcom/baidu/bulletin/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const/4 v0, 0x0

    .line 243
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/baidu/bulletin/dao/PageCacheSerializable;->mDataSession:Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;

    invoke-virtual {v0}, Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;->getChannelDAO()Lcom/baidu/bulletin/dao/ChannelItemDAO;

    move-result-object v0

    goto :goto_0
.end method

.method public static getPageCount()I
    .locals 2

    .prologue
    .line 195
    sget-object v0, Lcom/baidu/bulletin/dao/PageCacheSerializable;->mDataSession:Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;

    if-nez v0, :cond_0

    .line 196
    sget-object v0, Lcom/baidu/bulletin/dao/PageCacheSerializable;->TAG:Ljava/lang/String;

    const-string v1, "empty session for reading, error"

    invoke-static {v0, v1}, Lcom/baidu/bulletin/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const/4 v0, -0x1

    .line 200
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/baidu/bulletin/dao/PageCacheSerializable;->mDataSession:Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;

    invoke-virtual {v0}, Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;->getPageCount()I

    move-result v0

    goto :goto_0
.end method

.method public static getPageData(I)[Lcom/baidu/bulletin/entity/ChannelItem;
    .locals 2
    .parameter "position"

    .prologue
    .line 213
    sget-object v0, Lcom/baidu/bulletin/dao/PageCacheSerializable;->mDataSession:Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;

    if-nez v0, :cond_0

    .line 214
    sget-object v0, Lcom/baidu/bulletin/dao/PageCacheSerializable;->TAG:Ljava/lang/String;

    const-string v1, "empty session for reading, error"

    invoke-static {v0, v1}, Lcom/baidu/bulletin/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const/4 v0, 0x0

    .line 218
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/baidu/bulletin/dao/PageCacheSerializable;->mDataSession:Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;

    invoke-virtual {v0, p0}, Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;->getPageData(I)[Lcom/baidu/bulletin/entity/ChannelItem;

    move-result-object v0

    goto :goto_0
.end method

.method public static open(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 189
    sget-object v0, Lcom/baidu/bulletin/dao/PageCacheSerializable;->mDataSession:Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;

    if-nez v0, :cond_0

    .line 190
    new-instance v0, Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;

    invoke-direct {v0, p0}, Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/bulletin/dao/PageCacheSerializable;->mDataSession:Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;

    .line 192
    :cond_0
    return-void
.end method

.method public static refresh(Lcom/baidu/bulletin/entity/ChannelItem;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 222
    sget-object v0, Lcom/baidu/bulletin/dao/PageCacheSerializable;->mDataSession:Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;

    if-nez v0, :cond_0

    .line 223
    sget-object v0, Lcom/baidu/bulletin/dao/PageCacheSerializable;->TAG:Ljava/lang/String;

    const-string v1, "empty session for reading, error"

    invoke-static {v0, v1}, Lcom/baidu/bulletin/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :goto_0
    return-void

    .line 227
    :cond_0
    sget-object v0, Lcom/baidu/bulletin/dao/PageCacheSerializable;->mDataSession:Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;

    invoke-virtual {v0, p0}, Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;->refresh(Lcom/baidu/bulletin/entity/ChannelItem;)V

    goto :goto_0
.end method

.method public static resetPageDataCache()V
    .locals 2

    .prologue
    .line 204
    sget-object v0, Lcom/baidu/bulletin/dao/PageCacheSerializable;->mDataSession:Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;

    if-nez v0, :cond_0

    .line 205
    sget-object v0, Lcom/baidu/bulletin/dao/PageCacheSerializable;->TAG:Ljava/lang/String;

    const-string v1, "empty session for writing, error"

    invoke-static {v0, v1}, Lcom/baidu/bulletin/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    :goto_0
    return-void

    .line 209
    :cond_0
    sget-object v0, Lcom/baidu/bulletin/dao/PageCacheSerializable;->mDataSession:Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;

    invoke-virtual {v0}, Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;->resetPageDataCache()V

    goto :goto_0
.end method

.method public static syncloadPageCache(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 247
    sget-object v0, Lcom/baidu/bulletin/dao/PageCacheSerializable;->mDataSession:Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;

    if-eqz v0, :cond_0

    .line 248
    sget-object v0, Lcom/baidu/bulletin/dao/PageCacheSerializable;->mDataSession:Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;

    #calls: Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;->syncLoadPageCache(I)V
    invoke-static {v0, p0}, Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;->access$400(Lcom/baidu/bulletin/dao/PageCacheSerializable$DataSession;I)V

    .line 250
    :cond_0
    return-void
.end method
