.class public interface abstract Lcom/baidu/launcher/ui/widget/baidu/weather/lbs/LBSManager$LBSListener;
.super Ljava/lang/Object;
.source "LBSManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/widget/baidu/weather/lbs/LBSManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LBSListener"
.end annotation


# virtual methods
.method public abstract onAutoLocationFail()V
.end method

.method public abstract onLocationChanged(Landroid/location/Location;)V
.end method
