.class public Lcom/baidu/launcher/ui/widget/baidu/weather/dao/impl/LocationDaoImpl;
.super Ljava/lang/Object;
.source "LocationDaoImpl.java"

# interfaces
.implements Lcom/baidu/launcher/ui/widget/baidu/weather/dao/ILocationDao;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final contentResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 1
    .parameter "contentResolver"

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, "LocationDaoImpl"

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/impl/LocationDaoImpl;->TAG:Ljava/lang/String;

    .line 173
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/impl/LocationDaoImpl;->contentResolver:Landroid/content/ContentResolver;

    .line 174
    return-void
.end method


# virtual methods
.method public deleteByLocationCode(Ljava/lang/String;)Z
    .locals 7
    .parameter "locationCode"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 113
    :try_start_0
    const-string v2, "locationCode=?"

    .line 114
    .local v2, where:Ljava/lang/String;
    const/4 v5, 0x1

    new-array v1, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v1, v5

    .line 115
    .local v1, selectionArgs:[Ljava/lang/String;
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/impl/LocationDaoImpl;->contentResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider$Locations;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v2, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-lez v5, :cond_0

    .line 120
    .end local v1           #selectionArgs:[Ljava/lang/String;
    .end local v2           #where:Ljava/lang/String;
    :goto_0
    return v3

    .restart local v1       #selectionArgs:[Ljava/lang/String;
    .restart local v2       #where:Ljava/lang/String;
    :cond_0
    move v3, v4

    .line 115
    goto :goto_0

    .line 116
    .end local v1           #selectionArgs:[Ljava/lang/String;
    .end local v2           #where:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 117
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "###"

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

    invoke-static {v3, v5, v0}, Lcom/baidu/launcher/utils/LogEx;->debugErro(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 118
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v3, v4

    .line 120
    goto :goto_0
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "condition"
    .parameter "sortOrder"

    .prologue
    const/4 v2, 0x0

    .line 125
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/impl/LocationDaoImpl;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider$Locations;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, p1

    move-object v4, v2

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getByChineseName(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5
    .parameter "name"

    .prologue
    .line 134
    const-string v0, ""

    .line 135
    .local v0, condition:Ljava/lang/String;
    const-string v2, ""

    .line 136
    .local v2, order:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "locationName LIKE \'%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    const-string v2, "_id ASC"

    .line 138
    invoke-virtual {p0, v0, v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/impl/LocationDaoImpl;->get(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 139
    .local v1, cursor:Landroid/database/Cursor;
    return-object v1
.end method

.method public getByCondition(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .parameter "condition"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v7, contentValuess:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v8, 0x0

    .line 68
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/impl/LocationDaoImpl;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider$Locations;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 69
    if-eqz v8, :cond_1

    .line 70
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 72
    .local v6, contentValues:Landroid/content/ContentValues;
    const-string v0, "locationCode"

    const-string v1, "locationCode"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v0, "locationName"

    const-string v1, "locationName"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v0, "locationNameEn"

    const-string v1, "locationNameEn"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 81
    .end local v6           #contentValues:Landroid/content/ContentValues;
    :catch_0
    move-exception v9

    .line 82
    .local v9, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "###"

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

    invoke-static {v0, v1, v9}, Lcom/baidu/launcher/utils/LogEx;->debugErro(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    if-eqz v8, :cond_0

    .line 86
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 87
    const/4 v8, 0x0

    .line 90
    .end local v9           #e:Ljava/lang/Exception;
    :cond_0
    :goto_1
    return-object v7

    .line 85
    :cond_1
    if-eqz v8, :cond_0

    .line 86
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 87
    const/4 v8, 0x0

    goto :goto_1

    .line 85
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_2

    .line 86
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 87
    const/4 v8, 0x0

    :cond_2
    throw v0
.end method

.method public getByEnName(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5
    .parameter "name"

    .prologue
    .line 147
    const-string v0, ""

    .line 148
    .local v0, condition:Ljava/lang/String;
    const-string v2, ""

    .line 149
    .local v2, order:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "locationNameEn LIKE \'%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 150
    invoke-virtual {p0, v0, v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/impl/LocationDaoImpl;->get(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 151
    .local v1, cursor:Landroid/database/Cursor;
    return-object v1
.end method

.method public getByLocationCode(Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 11
    .parameter "locationCode"

    .prologue
    const/4 v7, 0x0

    .line 28
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    :cond_0
    :goto_0
    return-object v7

    .line 32
    :cond_1
    const/4 v7, 0x0

    .line 33
    .local v7, contentValues:Landroid/content/ContentValues;
    const-string v3, "locationCode=?"

    .line 34
    .local v3, selection:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    .line 35
    .local v4, selectionArgs:[Ljava/lang/String;
    const/4 v9, 0x0

    .line 38
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/impl/LocationDaoImpl;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider$Locations;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 39
    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 40
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .end local v7           #contentValues:Landroid/content/ContentValues;
    .local v8, contentValues:Landroid/content/ContentValues;
    :try_start_1
    const-string v0, "locationCode"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 42
    .local v6, code:Ljava/lang/String;
    const-string v0, "locationCode"

    invoke-virtual {v8, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v0, "locationName"

    const-string v1, "locationName"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v0, "locationNameEn"

    const-string v1, "locationNameEn"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v0, "###"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LocationDaoImpl:getByLocationCode,code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v7, v8

    .line 54
    .end local v6           #code:Ljava/lang/String;
    .end local v8           #contentValues:Landroid/content/ContentValues;
    .restart local v7       #contentValues:Landroid/content/ContentValues;
    :cond_2
    if-eqz v9, :cond_0

    .line 55
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 56
    const/4 v9, 0x0

    goto :goto_0

    .line 50
    :catch_0
    move-exception v10

    .line 51
    .local v10, e:Ljava/lang/Exception;
    :goto_1
    :try_start_2
    const-string v0, "###"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error, reason : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v10}, Lcom/baidu/launcher/utils/LogEx;->debugErro(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 54
    if-eqz v9, :cond_0

    .line 55
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 56
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 54
    .end local v10           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v9, :cond_3

    .line 55
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 56
    const/4 v9, 0x0

    :cond_3
    throw v0

    .line 54
    .end local v7           #contentValues:Landroid/content/ContentValues;
    .restart local v8       #contentValues:Landroid/content/ContentValues;
    :catchall_1
    move-exception v0

    move-object v7, v8

    .end local v8           #contentValues:Landroid/content/ContentValues;
    .restart local v7       #contentValues:Landroid/content/ContentValues;
    goto :goto_2

    .line 50
    .end local v7           #contentValues:Landroid/content/ContentValues;
    .restart local v8       #contentValues:Landroid/content/ContentValues;
    :catch_1
    move-exception v10

    move-object v7, v8

    .end local v8           #contentValues:Landroid/content/ContentValues;
    .restart local v7       #contentValues:Landroid/content/ContentValues;
    goto :goto_1
.end method

.method public getByPinyinName(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5
    .parameter "name"

    .prologue
    .line 159
    const-string v0, ""

    .line 160
    .local v0, condition:Ljava/lang/String;
    const-string v2, ""

    .line 161
    .local v2, order:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "locationNamePinYin LIKE \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " OR "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "locationNameInitials"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " LIKE \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 163
    const-string v2, "_id ASC"

    .line 164
    invoke-virtual {p0, v0, v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/impl/LocationDaoImpl;->get(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 165
    .local v1, cursor:Landroid/database/Cursor;
    return-object v1
.end method

.method public updateByLocationCode(Landroid/content/ContentValues;)Z
    .locals 8
    .parameter "contentValues"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 95
    const-string v6, "locationCode"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, locationCode:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 99
    :try_start_0
    const-string v3, "locationCode=?"

    .line 100
    .local v3, where:Ljava/lang/String;
    const/4 v6, 0x1

    new-array v2, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v1, v2, v6

    .line 101
    .local v2, selectionArgs:[Ljava/lang/String;
    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/impl/LocationDaoImpl;->contentResolver:Landroid/content/ContentResolver;

    sget-object v7, Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider$Locations;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v7, p1, v3, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-lez v6, :cond_0

    .line 107
    .end local v2           #selectionArgs:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    :goto_0
    return v4

    .restart local v2       #selectionArgs:[Ljava/lang/String;
    .restart local v3       #where:Ljava/lang/String;
    :cond_0
    move v4, v5

    .line 101
    goto :goto_0

    .line 102
    .end local v2           #selectionArgs:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 103
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "###"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error, reason : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v0}, Lcom/baidu/launcher/utils/LogEx;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    move v4, v5

    .line 107
    goto :goto_0
.end method
