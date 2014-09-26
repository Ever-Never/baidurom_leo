.class public Lcom/baidu/launcher/ui/widget/baidu/weather/dao/impl/IPMDaoImpl;
.super Ljava/lang/Object;
.source "IPMDaoImpl.java"

# interfaces
.implements Lcom/baidu/launcher/ui/widget/baidu/weather/dao/IPMDao;


# instance fields
.field private final contentResolver:Landroid/content/ContentResolver;

.field private logger:Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 1
    .parameter "contentResolver"

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-class v0, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/impl/IPMDaoImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;->getLogger(Ljava/lang/String;)Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/impl/IPMDaoImpl;->logger:Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;

    .line 99
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/impl/IPMDaoImpl;->contentResolver:Landroid/content/ContentResolver;

    .line 100
    return-void
.end method


# virtual methods
.method public deleteByLocationCode(Ljava/lang/String;)Z
    .locals 7
    .parameter "locationCode"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 88
    :try_start_0
    const-string v2, "locationCode=?"

    .line 89
    .local v2, where:Ljava/lang/String;
    const/4 v5, 0x1

    new-array v1, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v1, v5

    .line 90
    .local v1, selectionArgs:[Ljava/lang/String;
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/impl/IPMDaoImpl;->contentResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider$PMInfo;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v2, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-lez v5, :cond_0

    .line 95
    .end local v1           #selectionArgs:[Ljava/lang/String;
    .end local v2           #where:Ljava/lang/String;
    :goto_0
    return v3

    .restart local v1       #selectionArgs:[Ljava/lang/String;
    .restart local v2       #where:Ljava/lang/String;
    :cond_0
    move v3, v4

    .line 90
    goto :goto_0

    .line 91
    .end local v1           #selectionArgs:[Ljava/lang/String;
    .end local v2           #where:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 92
    .local v0, e:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/impl/IPMDaoImpl;->logger:Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error, reason : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;->e(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v3, v4

    .line 95
    goto :goto_0
.end method

.method public getByLocationCode(Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 10
    .parameter "locationCode"

    .prologue
    const/4 v6, 0x0

    .line 23
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    :cond_0
    :goto_0
    return-object v6

    .line 27
    :cond_1
    const/4 v6, 0x0

    .line 28
    .local v6, contentValues:Landroid/content/ContentValues;
    const-string v3, "locationCode=?"

    .line 29
    .local v3, selection:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    .line 30
    .local v4, selectionArgs:[Ljava/lang/String;
    const/4 v8, 0x0

    .line 33
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/impl/IPMDaoImpl;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider$PMInfo;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 34
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 35
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .end local v6           #contentValues:Landroid/content/ContentValues;
    .local v7, contentValues:Landroid/content/ContentValues;
    :try_start_1
    const-string v0, "locationCode"

    const-string v1, "locationCode"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string v0, "validStart"

    const-string v1, "validStart"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 38
    const-string v0, "aqi"

    const-string v1, "aqi"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 39
    const-string v0, "pm2_5"

    const-string v1, "pm2_5"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 40
    const-string v0, "pm10"

    const-string v1, "pm10"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 41
    const-string v0, "so2"

    const-string v1, "so2"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 42
    const-string v0, "no2"

    const-string v1, "no2"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 43
    const-string v0, "o3"

    const-string v1, "o3"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 44
    const-string v0, "co"

    const-string v1, "co"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 45
    const-string v0, "quality"

    const-string v1, "quality"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v6, v7

    .line 51
    .end local v7           #contentValues:Landroid/content/ContentValues;
    .restart local v6       #contentValues:Landroid/content/ContentValues;
    :cond_2
    if-eqz v8, :cond_0

    .line 52
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 53
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 47
    :catch_0
    move-exception v9

    .line 48
    .local v9, e:Ljava/lang/Exception;
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/impl/IPMDaoImpl;->logger:Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error, reason : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;->e(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51
    if-eqz v8, :cond_0

    .line 52
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 53
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 51
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v8, :cond_3

    .line 52
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 53
    const/4 v8, 0x0

    :cond_3
    throw v0

    .line 51
    .end local v6           #contentValues:Landroid/content/ContentValues;
    .restart local v7       #contentValues:Landroid/content/ContentValues;
    :catchall_1
    move-exception v0

    move-object v6, v7

    .end local v7           #contentValues:Landroid/content/ContentValues;
    .restart local v6       #contentValues:Landroid/content/ContentValues;
    goto :goto_2

    .line 47
    .end local v6           #contentValues:Landroid/content/ContentValues;
    .restart local v7       #contentValues:Landroid/content/ContentValues;
    :catch_1
    move-exception v9

    move-object v6, v7

    .end local v7           #contentValues:Landroid/content/ContentValues;
    .restart local v6       #contentValues:Landroid/content/ContentValues;
    goto :goto_1
.end method

.method public insert(Landroid/content/ContentValues;)Z
    .locals 5
    .parameter "contentValues"

    .prologue
    const/4 v1, 0x0

    .line 74
    if-nez p1, :cond_1

    .line 82
    :cond_0
    :goto_0
    return v1

    .line 78
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/impl/IPMDaoImpl;->contentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider$PMInfo;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/impl/IPMDaoImpl;->logger:Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error when insert forecast, Reason : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateByLocationCode(Landroid/content/ContentValues;Ljava/lang/String;)Z
    .locals 7
    .parameter "value"
    .parameter "locationCode"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 62
    :try_start_0
    const-string v2, "locationCode=?"

    .line 63
    .local v2, where:Ljava/lang/String;
    const/4 v5, 0x1

    new-array v1, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v1, v5

    .line 64
    .local v1, selectionArgs:[Ljava/lang/String;
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/impl/IPMDaoImpl;->contentResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider$PMInfo;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, p1, v2, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-lez v5, :cond_0

    .line 69
    .end local v1           #selectionArgs:[Ljava/lang/String;
    .end local v2           #where:Ljava/lang/String;
    :goto_0
    return v3

    .restart local v1       #selectionArgs:[Ljava/lang/String;
    .restart local v2       #where:Ljava/lang/String;
    :cond_0
    move v3, v4

    .line 64
    goto :goto_0

    .line 65
    .end local v1           #selectionArgs:[Ljava/lang/String;
    .end local v2           #where:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 66
    .local v0, e:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/impl/IPMDaoImpl;->logger:Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error, reason : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;->e(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v3, v4

    .line 69
    goto :goto_0
.end method
