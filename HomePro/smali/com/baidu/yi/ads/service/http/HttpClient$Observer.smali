.class public interface abstract Lcom/baidu/yi/ads/service/http/HttpClient$Observer;
.super Ljava/lang/Object;
.source "HttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/yi/ads/service/http/HttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Observer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/yi/ads/service/http/HttpClient$Observer$Reason;
    }
.end annotation


# static fields
.field public static final UNKNOWN_LENGTH:I = -0xffff


# virtual methods
.method public abstract onFinish(Lcom/baidu/yi/ads/service/http/HttpClient$Observer$Reason;)V
.end method

.method public abstract onReceive(II[B)V
.end method

.method public abstract onSend(II)V
.end method
