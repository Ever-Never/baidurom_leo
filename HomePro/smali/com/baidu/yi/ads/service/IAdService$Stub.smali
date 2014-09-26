.class public abstract Lcom/baidu/yi/ads/service/IAdService$Stub;
.super Landroid/os/Binder;
.source "IAdService.java"

# interfaces
.implements Lcom/baidu/yi/ads/service/IAdService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/yi/ads/service/IAdService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/yi/ads/service/IAdService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.baidu.yi.ads.service.IAdService"

.field static final TRANSACTION_executeAction:I = 0x2

.field static final TRANSACTION_getAd:I = 0x1

.field static final TRANSACTION_getAdViewBackground:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.baidu.yi.ads.service.IAdService"

    invoke-virtual {p0, p0, v0}, Lcom/baidu/yi/ads/service/IAdService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/baidu/yi/ads/service/IAdService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.baidu.yi.ads.service.IAdService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/baidu/yi/ads/service/IAdService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/baidu/yi/ads/service/IAdService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/baidu/yi/ads/service/IAdService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/baidu/yi/ads/service/IAdService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 93
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 42
    :sswitch_0
    const-string v6, "com.baidu.yi.ads.service.IAdService"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v6, "com.baidu.yi.ads.service.IAdService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_0

    .line 50
    sget-object v6, Lcom/baidu/yi/ads/service/AdSpaceParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/yi/ads/service/AdSpaceParams;

    .line 56
    .local v0, _arg0:Lcom/baidu/yi/ads/service/AdSpaceParams;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/baidu/yi/ads/service/IAdRequestListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/baidu/yi/ads/service/IAdRequestListener;

    move-result-object v1

    .line 58
    .local v1, _arg1:Lcom/baidu/yi/ads/service/IAdRequestListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 60
    .local v2, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 61
    .local v3, _arg3:I
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/baidu/yi/ads/service/IAdService$Stub;->getAd(Lcom/baidu/yi/ads/service/AdSpaceParams;Lcom/baidu/yi/ads/service/IAdRequestListener;II)V

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 53
    .end local v0           #_arg0:Lcom/baidu/yi/ads/service/AdSpaceParams;
    .end local v1           #_arg1:Lcom/baidu/yi/ads/service/IAdRequestListener;
    .end local v2           #_arg2:I
    .end local v3           #_arg3:I
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/baidu/yi/ads/service/AdSpaceParams;
    goto :goto_1

    .line 67
    .end local v0           #_arg0:Lcom/baidu/yi/ads/service/AdSpaceParams;
    :sswitch_2
    const-string v6, "com.baidu.yi.ads.service.IAdService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 71
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 74
    .local v2, _arg2:Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Lcom/baidu/yi/ads/service/IAdService$Stub;->executeAction(ILjava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 80
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_arg2:Ljava/lang/String;
    :sswitch_3
    const-string v6, "com.baidu.yi.ads.service.IAdService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/baidu/yi/ads/service/IAdService$Stub;->getAdViewBackground()Lcom/baidu/yi/ads/AdViewBackground;

    move-result-object v4

    .line 82
    .local v4, _result:Lcom/baidu/yi/ads/AdViewBackground;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    if-eqz v4, :cond_1

    .line 84
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    invoke-virtual {v4, p3, v5}, Lcom/baidu/yi/ads/AdViewBackground;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 88
    :cond_1
    const/4 v6, 0x0

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
