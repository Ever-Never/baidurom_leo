.class public interface abstract Lcom/baidu/launcher/network/http/HttpClient$Observer;
.super Ljava/lang/Object;
.source "HttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/network/http/HttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Observer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/network/http/HttpClient$Observer$Reason;
    }
.end annotation


# static fields
.field public static final UNKNOWN_LENGTH:I = -0x80000000


# virtual methods
.method public abstract getPostData()Ljava/lang/String;
.end method

.method public abstract onFinish(Lcom/baidu/launcher/network/http/HttpClient$Observer$Reason;)V
.end method

.method public abstract onReceive(II[B)V
.end method

.method public abstract onSend(II)V
.end method

.method public abstract onStart()V
.end method

.method public abstract onStartReceive(I)V
.end method
