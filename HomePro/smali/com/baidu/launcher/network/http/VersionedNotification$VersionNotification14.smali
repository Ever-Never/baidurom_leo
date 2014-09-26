.class final Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification14;
.super Lcom/baidu/launcher/network/http/VersionedNotification;
.source "VersionedNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/network/http/VersionedNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "VersionNotification14"
.end annotation


# instance fields
.field private final builder:Landroid/app/Notification$Builder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 513
    invoke-direct {p0}, Lcom/baidu/launcher/network/http/VersionedNotification;-><init>()V

    .line 514
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification14;->builder:Landroid/app/Notification$Builder;

    .line 515
    return-void
.end method


# virtual methods
.method public getNotification()Landroid/app/Notification;
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification14;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public setAutoCancel(Z)V
    .locals 1
    .parameter "autoCancel"

    .prologue
    .line 524
    iget-object v0, p0, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification14;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 525
    return-void
.end method

.method public setContent(Landroid/widget/RemoteViews;)V
    .locals 1
    .parameter "views"

    .prologue
    .line 529
    iget-object v0, p0, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification14;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 530
    return-void
.end method

.method public setContentInfo(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 534
    iget-object v0, p0, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification14;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 535
    return-void
.end method

.method public setContentIntent(Landroid/app/PendingIntent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 539
    iget-object v0, p0, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification14;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 540
    return-void
.end method

.method public setContentText(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 544
    iget-object v0, p0, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification14;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 545
    return-void
.end method

.method public setContentTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 549
    iget-object v0, p0, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification14;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 550
    return-void
.end method

.method public setDefaults(I)V
    .locals 1
    .parameter "defaults"

    .prologue
    .line 554
    iget-object v0, p0, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification14;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 555
    return-void
.end method

.method public setDeleteIntent(Landroid/app/PendingIntent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 559
    iget-object v0, p0, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification14;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 560
    return-void
.end method

.method public setFullScreenIntent(Landroid/app/PendingIntent;Z)V
    .locals 1
    .parameter "intent"
    .parameter "highPriority"

    .prologue
    .line 565
    iget-object v0, p0, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification14;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1, p2}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    .line 566
    return-void
.end method

.method public setLargeIcon(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "icon"

    .prologue
    .line 570
    iget-object v0, p0, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification14;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 571
    return-void
.end method

.method public setLights(III)V
    .locals 1
    .parameter "argb"
    .parameter "onMs"
    .parameter "offMs"

    .prologue
    .line 575
    iget-object v0, p0, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification14;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    .line 576
    return-void
.end method

.method public setNumber(I)V
    .locals 1
    .parameter "number"

    .prologue
    .line 580
    iget-object v0, p0, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification14;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    .line 581
    return-void
.end method

.method public setOngoing(Z)V
    .locals 1
    .parameter "ongoing"

    .prologue
    .line 585
    iget-object v0, p0, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification14;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 586
    return-void
.end method

.method public setOnlyAlertOnce(Z)V
    .locals 1
    .parameter "onlyAlertOnce"

    .prologue
    .line 590
    iget-object v0, p0, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification14;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 591
    return-void
.end method

.method public setProgress(IIZ)V
    .locals 1
    .parameter "max"
    .parameter "progress"
    .parameter "indeterminate"

    .prologue
    .line 595
    iget-object v0, p0, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification14;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 596
    return-void
.end method

.method public setSmallIcon(I)V
    .locals 1
    .parameter "icon"

    .prologue
    .line 605
    iget-object v0, p0, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification14;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 606
    return-void
.end method

.method public setSmallIcon(II)V
    .locals 1
    .parameter "icon"
    .parameter "level"

    .prologue
    .line 600
    iget-object v0, p0, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification14;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1, p2}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;

    .line 601
    return-void
.end method

.method public setSound(Landroid/net/Uri;)V
    .locals 1
    .parameter "sound"

    .prologue
    .line 610
    iget-object v0, p0, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification14;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 611
    return-void
.end method

.method public setSound(Landroid/net/Uri;I)V
    .locals 1
    .parameter "sound"
    .parameter "streamType"

    .prologue
    .line 615
    iget-object v0, p0, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification14;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1, p2}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;I)Landroid/app/Notification$Builder;

    .line 616
    return-void
.end method

.method public setTicker(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "tickerText"

    .prologue
    .line 625
    iget-object v0, p0, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification14;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 626
    return-void
.end method

.method public setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)V
    .locals 1
    .parameter "tickerText"
    .parameter "views"

    .prologue
    .line 620
    iget-object v0, p0, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification14;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1, p2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 621
    return-void
.end method

.method public setVibrate([J)V
    .locals 1
    .parameter "pattern"

    .prologue
    .line 630
    iget-object v0, p0, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification14;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    .line 631
    return-void
.end method

.method public setWhen(J)V
    .locals 1
    .parameter "when"

    .prologue
    .line 635
    iget-object v0, p0, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification14;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1, p2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 636
    return-void
.end method
