.class public interface abstract Lcom/baidu/launcher/ui/widget/baidu/weather/dao/ILocationDao;
.super Ljava/lang/Object;
.source "ILocationDao.java"


# virtual methods
.method public abstract deleteByLocationCode(Ljava/lang/String;)Z
.end method

.method public abstract get(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method public abstract getByChineseName(Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method public abstract getByCondition(Ljava/lang/String;)Ljava/util/List;
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
.end method

.method public abstract getByEnName(Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method public abstract getByLocationCode(Ljava/lang/String;)Landroid/content/ContentValues;
.end method

.method public abstract getByPinyinName(Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method public abstract updateByLocationCode(Landroid/content/ContentValues;)Z
.end method
