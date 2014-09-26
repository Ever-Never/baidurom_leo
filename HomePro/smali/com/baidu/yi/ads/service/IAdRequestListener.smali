.class public interface abstract Lcom/baidu/yi/ads/service/IAdRequestListener;
.super Ljava/lang/Object;
.source "IAdRequestListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/yi/ads/service/IAdRequestListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onAdRetrieved(Lcom/baidu/yi/ads/Ad;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
