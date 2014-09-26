.class public interface abstract Lcom/baidu/opservice/aidl/IOpServiceAidl;
.super Ljava/lang/Object;
.source "IOpServiceAidl.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/opservice/aidl/IOpServiceAidl$Stub;
    }
.end annotation


# virtual methods
.method public abstract getNextAd(Lcom/baidu/opservice/aidl/AdReq;Lcom/baidu/opservice/aidl/IOpServiceCallbackAidl;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
