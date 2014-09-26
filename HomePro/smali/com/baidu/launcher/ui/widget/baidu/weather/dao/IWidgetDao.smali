.class public interface abstract Lcom/baidu/launcher/ui/widget/baidu/weather/dao/IWidgetDao;
.super Ljava/lang/Object;
.source "IWidgetDao.java"


# virtual methods
.method public abstract deleteById(I)Z
.end method

.method public abstract getById(I)Landroid/content/ContentValues;
.end method

.method public abstract getFirstWidget()Landroid/content/ContentValues;
.end method

.method public abstract insert(Landroid/content/ContentValues;)Z
.end method

.method public abstract insertFirstWidget(Ljava/lang/String;)Z
.end method

.method public abstract removeFirstWidget()Z
.end method

.method public abstract update(Landroid/content/ContentValues;I)Z
.end method

.method public abstract updateFirstWidget(Ljava/lang/String;)Z
.end method
