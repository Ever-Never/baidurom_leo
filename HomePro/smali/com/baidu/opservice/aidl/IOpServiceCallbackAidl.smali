.class public interface abstract Lcom/baidu/opservice/aidl/IOpServiceCallbackAidl;
.super Ljava/lang/Object;
.source "IOpServiceCallbackAidl.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/opservice/aidl/IOpServiceCallbackAidl$Stub;
    }
.end annotation


# virtual methods
.method public abstract onAdArrive(Lcom/baidu/opservice/aidl/AdRsp;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
