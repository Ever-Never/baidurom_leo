.class public Lcom/baidu/launcher/ui/widget/baidu/weather/dao/impl/WidgetDaoImpl;
.super Ljava/lang/Object;
.source "WidgetDaoImpl.java"

# interfaces
.implements Lcom/baidu/launcher/ui/widget/baidu/weather/dao/IWidgetDao;


# static fields
.field private static final FIRST_WIDGET_ID:I = 0x1


# instance fields
.field private final contentResolver:Landroid/content/ContentResolver;

.field private logger:Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 1
    .parameter "contentResolver"

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-class v0, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/impl/WidgetDaoImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;->getLogger(Ljava/lang/String;)Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/impl/WidgetDaoImpl;->logger:Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;

    .line 129
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/impl/WidgetDaoImpl;->contentResolver:Landroid/content/ContentResolver;

    .line 130
    return-void
.end method


# virtual methods
.method public deleteById(I)Z
    .locals 6
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 87
    :try_start_0
    sget-object v3, Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider$Widgets;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v4, p1

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 88
    .local v0, appWidgetUri:Landroid/net/Uri;
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/impl/WidgetDaoImpl;->contentResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-lez v3, :cond_0

    const/4 v2, 0x1

    .line 93
    .end local v0           #appWidgetUri:Landroid/net/Uri;
    :cond_0
    :goto_0
    return v2

    .line 89
    :catch_0
    move-exception v1

    .line 90
    .local v1, e:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/impl/WidgetDaoImpl;->logger:Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error, reason : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;->e(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getById(I)Landroid/content/ContentValues;
    .locals 10
    .parameter "id"

    .prologue
    .line 31
    const/4 v6, 0x0

    .line 32
    .local v6, contentValues:Landroid/content/ContentValues;
    const/4 v8, 0x0

    .line 33
    .local v8, cursor:Landroid/database/Cursor;
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider$Widgets;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v2, p1

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 35
    .local v1, appWidgetUri:Landroid/net/Uri;
    :try_start_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/impl/WidgetDaoImpl;->contentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "widgetId"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "viewId"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 38
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .end local v6           #contentValues:Landroid/content/ContentValues;
    .local v7, contentValues:Landroid/content/ContentValues;
    :try_start_1
    const-string v0, "widgetId"

    const-string v2, "widgetId"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 41
    const-string v0, "viewId"

    const-string v2, "viewId"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v6, v7

    .line 47
    .end local v7           #contentValues:Landroid/content/ContentValues;
    .restart local v6       #contentValues:Landroid/content/ContentValues;
    :cond_0
    if-eqz v8, :cond_1

    .line 48
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 49
    const/4 v8, 0x0

    .line 52
    :cond_1
    :goto_0
    return-object v6

    .line 43
    :catch_0
    move-exception v9

    .line 44
    .local v9, e:Ljava/lang/Exception;
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/impl/WidgetDaoImpl;->logger:Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error, reason : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;->e(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    if-eqz v8, :cond_1

    .line 48
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 49
    const/4 v8, 0x0

    goto :goto_0

    .line 47
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v8, :cond_2

    .line 48
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 49
    const/4 v8, 0x0

    :cond_2
    throw v0

    .line 47
    .end local v6           #contentValues:Landroid/content/ContentValues;
    .restart local v7       #contentValues:Landroid/content/ContentValues;
    :catchall_1
    move-exception v0

    move-object v6, v7

    .end local v7           #contentValues:Landroid/content/ContentValues;
    .restart local v6       #contentValues:Landroid/content/ContentValues;
    goto :goto_2

    .line 43
    .end local v6           #contentValues:Landroid/content/ContentValues;
    .restart local v7       #contentValues:Landroid/content/ContentValues;
    :catch_1
    move-exception v9

    move-object v6, v7

    .end local v7           #contentValues:Landroid/content/ContentValues;
    .restart local v6       #contentValues:Landroid/content/ContentValues;
    goto :goto_1
.end method

.method public getFirstWidget()Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/impl/WidgetDaoImpl;->getById(I)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public insert(Landroid/content/ContentValues;)Z
    .locals 5
    .parameter "contentValues"

    .prologue
    const/4 v1, 0x0

    .line 72
    if-nez p1, :cond_1

    .line 81
    :cond_0
    :goto_0
    return v1

    .line 76
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/impl/WidgetDaoImpl;->contentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider$Widgets;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/impl/WidgetDaoImpl;->logger:Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error, reason : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;->e(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public insertFirstWidget(Ljava/lang/String;)Z
    .locals 3
    .parameter "locationCode"

    .prologue
    .line 111
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 112
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v1, "viewId"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v1, "widgetId"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 114
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/impl/WidgetDaoImpl;->insert(Landroid/content/ContentValues;)Z

    move-result v1

    return v1
.end method

.method public removeFirstWidget()Z
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/impl/WidgetDaoImpl;->deleteById(I)Z

    move-result v0

    return v0
.end method

.method public update(Landroid/content/ContentValues;I)Z
    .locals 6
    .parameter "contentValues"
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 57
    if-nez p1, :cond_1

    .line 67
    :cond_0
    :goto_0
    return v2

    .line 61
    :cond_1
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "widgetId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, where:Ljava/lang/String;
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/impl/WidgetDaoImpl;->contentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider$Widgets;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p1, v1, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-lez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .line 63
    .end local v1           #where:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 64
    .local v0, e:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/impl/WidgetDaoImpl;->logger:Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error, reason : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;->e(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public updateFirstWidget(Ljava/lang/String;)Z
    .locals 4
    .parameter "locationCode"

    .prologue
    const/4 v3, 0x1

    .line 103
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 104
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v1, "viewId"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v1, "widgetId"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 106
    invoke-virtual {p0, v0, v3}, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/impl/WidgetDaoImpl;->update(Landroid/content/ContentValues;I)Z

    move-result v1

    return v1
.end method
