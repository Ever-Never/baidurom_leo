.class public abstract Lcom/baidu/launcher/network/http/VersionedNotification;
.super Ljava/lang/Object;
.source "VersionedNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification14;,
        Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification13;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 506
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/baidu/launcher/network/http/VersionedNotification;
    .locals 3
    .parameter "context"

    .prologue
    .line 28
    const/4 v0, 0x0

    .line 29
    .local v0, notification:Lcom/baidu/launcher/network/http/VersionedNotification;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 30
    .local v1, sdkVersion:I
    const/16 v2, 0xe

    if-ge v1, v2, :cond_0

    .line 31
    new-instance v0, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification13;

    .end local v0           #notification:Lcom/baidu/launcher/network/http/VersionedNotification;
    invoke-direct {v0, p0}, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification13;-><init>(Landroid/content/Context;)V

    .line 35
    .restart local v0       #notification:Lcom/baidu/launcher/network/http/VersionedNotification;
    :goto_0
    return-object v0

    .line 33
    :cond_0
    new-instance v0, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification14;

    .end local v0           #notification:Lcom/baidu/launcher/network/http/VersionedNotification;
    invoke-direct {v0, p0}, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification14;-><init>(Landroid/content/Context;)V

    .restart local v0       #notification:Lcom/baidu/launcher/network/http/VersionedNotification;
    goto :goto_0
.end method


# virtual methods
.method public abstract getNotification()Landroid/app/Notification;
.end method

.method public abstract setAutoCancel(Z)V
.end method

.method public abstract setContent(Landroid/widget/RemoteViews;)V
.end method

.method public abstract setContentInfo(Ljava/lang/CharSequence;)V
.end method

.method public abstract setContentIntent(Landroid/app/PendingIntent;)V
.end method

.method public abstract setContentText(Ljava/lang/CharSequence;)V
.end method

.method public abstract setContentTitle(Ljava/lang/CharSequence;)V
.end method

.method public abstract setDefaults(I)V
.end method

.method public abstract setDeleteIntent(Landroid/app/PendingIntent;)V
.end method

.method public abstract setFullScreenIntent(Landroid/app/PendingIntent;Z)V
.end method

.method public abstract setLargeIcon(Landroid/graphics/Bitmap;)V
.end method

.method public abstract setLights(III)V
.end method

.method public abstract setNumber(I)V
.end method

.method public abstract setOngoing(Z)V
.end method

.method public abstract setOnlyAlertOnce(Z)V
.end method

.method public abstract setProgress(IIZ)V
.end method

.method public abstract setSmallIcon(I)V
.end method

.method public abstract setSmallIcon(II)V
.end method

.method public abstract setSound(Landroid/net/Uri;)V
.end method

.method public abstract setSound(Landroid/net/Uri;I)V
.end method

.method public abstract setTicker(Ljava/lang/CharSequence;)V
.end method

.method public abstract setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)V
.end method

.method public abstract setVibrate([J)V
.end method

.method public abstract setWhen(J)V
.end method
