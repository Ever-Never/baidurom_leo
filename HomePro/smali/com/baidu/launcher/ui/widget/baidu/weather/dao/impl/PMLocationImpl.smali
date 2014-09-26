.class public Lcom/baidu/launcher/ui/widget/baidu/weather/dao/impl/PMLocationImpl;
.super Ljava/lang/Object;
.source "PMLocationImpl.java"

# interfaces
.implements Lcom/baidu/launcher/ui/widget/baidu/weather/dao/IPMLocationDao;


# instance fields
.field private final contentResolver:Landroid/content/ContentResolver;

.field private logger:Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 1
    .parameter "contentResolver"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-class v0, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/IPMLocationDao;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;->getLogger(Ljava/lang/String;)Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/impl/PMLocationImpl;->logger:Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;

    .line 61
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/impl/PMLocationImpl;->contentResolver:Landroid/content/ContentResolver;

    .line 62
    return-void
.end method


# virtual methods
.method public isContainInPMLocation(Ljava/lang/String;)Z
    .locals 9
    .parameter "locationCode"

    .prologue
    const/4 v0, 0x0

    .line 20
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    move v8, v0

    .line 43
    :cond_1
    :goto_0
    return v8

    .line 24
    :cond_2
    const/4 v8, 0x0

    .line 25
    .local v8, res:Z
    const-string v3, "locationCode=?"

    .line 26
    .local v3, selection:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    aput-object p1, v4, v0

    .line 27
    .local v4, selectionArgs:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 29
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/impl/PMLocationImpl;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider$PMLocationInfo;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 30
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_3

    .line 31
    const/4 v8, 0x1

    .line 37
    :cond_3
    if-eqz v6, :cond_1

    .line 38
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 39
    const/4 v6, 0x0

    goto :goto_0

    .line 33
    :catch_0
    move-exception v7

    .line 34
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/impl/PMLocationImpl;->logger:Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error, reason : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;->e(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    if-eqz v6, :cond_1

    .line 38
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 39
    const/4 v6, 0x0

    goto :goto_0

    .line 37
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 38
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 39
    const/4 v6, 0x0

    :cond_4
    throw v0
.end method

.method public parentCity(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "locationCode"

    .prologue
    .line 48
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 49
    :cond_0
    const/4 v1, 0x0

    .line 56
    :cond_1
    :goto_0
    return-object v1

    .line 51
    :cond_2
    invoke-static {p2}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/Utils;->toParentLocationCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, parentCode:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/impl/PMLocationImpl;->isContainInPMLocation(Ljava/lang/String;)Z

    move-result v0

    .line 53
    .local v0, isContain:Z
    if-nez v0, :cond_1

    move-object v1, p2

    .line 56
    goto :goto_0
.end method
