.class public interface abstract Lcom/baidu/yi/ads/service/IAdService;
.super Ljava/lang/Object;
.source "IAdService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/yi/ads/service/IAdService$Stub;
    }
.end annotation


# virtual methods
.method public abstract executeAction(ILjava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getAd(Lcom/baidu/yi/ads/service/AdSpaceParams;Lcom/baidu/yi/ads/service/IAdRequestListener;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getAdViewBackground()Lcom/baidu/yi/ads/AdViewBackground;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
