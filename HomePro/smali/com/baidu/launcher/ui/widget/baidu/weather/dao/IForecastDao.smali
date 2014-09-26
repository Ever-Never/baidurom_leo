.class public interface abstract Lcom/baidu/launcher/ui/widget/baidu/weather/dao/IForecastDao;
.super Ljava/lang/Object;
.source "IForecastDao.java"


# virtual methods
.method public abstract delete(Ljava/lang/String;)Z
.end method

.method public abstract deleteCache()Z
.end method

.method public abstract getByLocationCode(Ljava/lang/String;)Landroid/content/ContentValues;
.end method

.method public abstract insert(Landroid/content/ContentValues;)Z
.end method

.method public abstract updateByLocationCode(Landroid/content/ContentValues;Ljava/lang/String;)Z
.end method
