.class final Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification13;
.super Lcom/baidu/launcher/network/http/VersionedNotification;
.source "VersionedNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/network/http/VersionedNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "VersionNotification13"
.end annotation


# instance fields
.field private mAudioStreamType:I

.field private mContentInfo:Ljava/lang/CharSequence;

.field private mContentIntent:Landroid/app/PendingIntent;

.field private mContentText:Ljava/lang/CharSequence;

.field private mContentTitle:Ljava/lang/CharSequence;

.field private mContentView:Landroid/widget/RemoteViews;

.field private mContext:Landroid/content/Context;

.field private mDefaults:I

.field private mDeleteIntent:Landroid/app/PendingIntent;

.field private mFlags:I

.field private mFullScreenIntent:Landroid/app/PendingIntent;

.field private mLargeIcon:Landroid/graphics/Bitmap;

.field private mLedArgb:I

.field private mLedOffMs:I

.field private mLedOnMs:I

.field private mNumber:I

.field private mProgress:I

.field private mProgressIndeterminate:Z

.field private mProgressMax:I

.field private mSmallIcon:I

.field private mSmallIconLevel:I

.field private mSound:Landroid/net/Uri;

.field private mTickerText:Ljava/lang/CharSequence;

.field private mTickerView:Landroid/widget/RemoteViews;

.field private mVibrate:[J

.field private mWhen:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 256
    invoke-direct {p0}, Lcom/baidu/launcher/network/http/VersionedNotification;-><init>()V

    .line 257
    iput-object p1, p0, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification13;->mContext:Landroid/content/Context;

    .line 258
    return-void
.end method

.method private getDownloadingText(JJ)Ljava/lang/String;
    .locals 5
    .parameter "totalBytes"
    .parameter "currentBytes"

    .prologue
    .line 490
    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-gtz v3, :cond_0

    .line 491
    const-string v3, ""

    .line 497
    :goto_0
    return-object v3

    .line 493
    :cond_0
    const-wide/16 v3, 0x64

    mul-long/2addr v3, p3

    div-long v0, v3, p1

    .line 494
    .local v0, progress:J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 495
    .local v2, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 496
    const/16 v3, 0x25

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 497
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private makeContentView()Landroid/widget/RemoteViews;
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification13;->mContentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification13;->mContentView:Landroid/widget/RemoteViews;

    .line 439
    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f03008e

    invoke-direct {p0, v0}, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification13;->makeRemoteViews(I)Landroid/widget/RemoteViews;

    move-result-object v0

    goto :goto_0
.end method

.method private makeRemoteViews(I)Landroid/widget/RemoteViews;
    .locals 7
    .parameter "resId"

    .prologue
    const v4, 0x7f080151

    const/4 v6, 0x0

    const v5, 0x7f0801bd

    const v2, 0x7f0801bc

    const/16 v3, 0x8

    .line 449
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification13;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 450
    .local v0, contentView:Landroid/widget/RemoteViews;
    iget v1, p0, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification13;->mSmallIcon:I

    if-eqz v1, :cond_3

    .line 451
    iget v1, p0, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification13;->mSmallIcon:I

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 452
    invoke-virtual {v0, v2, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 456
    :goto_0
    iget-object v1, p0, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification13;->mContentTitle:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 457
    const v1, 0x7f080026

    iget-object v2, p0, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification13;->mContentTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 459
    :cond_0
    iget-object v1, p0, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification13;->mContentText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 460
    const v1, 0x7f0801be

    iget-object v2, p0, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification13;->mContentText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 463
    :cond_1
    iget v1, p0, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification13;->mProgressMax:I

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification13;->mProgressIndeterminate:Z

    if-eqz v1, :cond_4

    .line 464
    :cond_2
    iget v1, p0, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification13;->mProgressMax:I

    iget v2, p0, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification13;->mProgress:I

    iget-boolean v3, p0, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification13;->mProgressIndeterminate:Z

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 469
    iget v1, p0, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification13;->mProgressMax:I

    int-to-long v1, v1

    iget v3, p0, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification13;->mProgress:I

    int-to-long v3, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification13;->getDownloadingText(JJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 471
    invoke-virtual {v0, v5, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 480
    :goto_1
    return-object v0

    .line 454
    :cond_3
    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0

    .line 473
    :cond_4
    invoke-virtual {v0, v4, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 474
    invoke-virtual {v0, v5, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_1
.end method

.method private setFlag(IZ)V
    .locals 2
    .parameter "mask"
    .parameter "value"

    .prologue
    .line 424
    if-eqz p2, :cond_0

    .line 425
    iget v0, p0, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification13;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification13;->mFlags:I

    .line 429
    :goto_0
    return-void

    .line 427
    :cond_0
    iget v0, p0, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification13;->mFlags:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification13;->mFlags:I

    goto :goto_0
.end method


# virtual methods
.method public getNotification()Landroid/app/Notification;
    .locals 3

    .prologue
    .line 262
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 264
    .local v0, n:Landroid/app/Notification;
    iget-wide v1, p0, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification13;->mWhen:J

    iput-wide v1, v0, Landroid/app/Notification;->when:J

    .line 265
    iget v1, p0, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification13;->mSmallIcon:I

    iput v1, v0, Landroid/app/Notification;->icon:I

    .line 266
    iget v1, p0, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification13;->mSmallIconLevel:I

    iput v1, v0, Landroid/app/Notification;->iconLevel:I

    .line 267
    iget v1, p0, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification13;->mNumber:I

    iput v1, v0, Landroid/app/Notification;->number:I

    .line 268
    invoke-direct {p0}, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification13;->makeContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 269
    iget-object v1, p0, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification13;->mContentIntent:Landroid/app/PendingIntent;

    iput-object v1, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 270
    iget-object v1, p0, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification13;->mDeleteIntent:Landroid/app/PendingIntent;

    iput-object v1, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 271
    iget-object v1, p0, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification13;->mTickerText:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 272
    iget-object v1, p0, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification13;->mSound:Landroid/net/Uri;

    iput-object v1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 273
    iget v1, p0, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification13;->mAudioStreamType:I

    iput v1, v0, Landroid/app/Notification;->audioStreamType:I

    .line 274
    iget-object v1, p0, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification13;->mVibrate:[J

    iput-object v1, v0, Landroid/app/Notification;->vibrate:[J

    .line 275
    iget v1, p0, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification13;->mLedArgb:I

    iput v1, v0, Landroid/app/Notification;->ledARGB:I

    .line 276
    iget v1, p0, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification13;->mLedOnMs:I

    iput v1, v0, Landroid/app/Notification;->ledOnMS:I

    .line 277
    iget v1, p0, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification13;->mLedOffMs:I

    iput v1, v0, Landroid/app/Notification;->ledOffMS:I

    .line 278
    iget v1, p0, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification13;->mDefaults:I

    iput v1, v0, Landroid/app/Notification;->defaults:I

    .line 279
    iget v1, p0, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification13;->mFlags:I

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 280
    iget v1, p0, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification13;->mLedOnMs:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification13;->mLedOffMs:I

    if-eqz v1, :cond_0

    .line 281
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 283
    :cond_0
    iget v1, p0, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification13;->mDefaults:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1

    .line 284
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 286
    :cond_1
    return-object v0
.end method

.method public setAutoCancel(Z)V
    .locals 1
    .parameter "autoCancel"

    .prologue
    .line 291
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification13;->setFlag(IZ)V

    .line 292
    return-void
.end method

.method public setContent(Landroid/widget/RemoteViews;)V
    .locals 1
    .parameter "views"

    .prologue
    .line 296
    if-eqz p1, :cond_0

    .line 297
    iput-object p1, p0, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification13;->mContentView:Landroid/widget/RemoteViews;

    .line 301
    :goto_0
    return-void

    .line 299
    :cond_0
    const v0, 0x7f03008e

    invoke-direct {p0, v0}, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification13;->makeRemoteViews(I)Landroid/widget/RemoteViews;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification13;->mContentView:Landroid/widget/RemoteViews;

    goto :goto_0
.end method

.method public setContentInfo(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "info"

    .prologue
    .line 305
    iput-object p1, p0, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification13;->mContentInfo:Ljava/lang/CharSequence;

    .line 306
    return-void
.end method

.method public setContentIntent(Landroid/app/PendingIntent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 310
    iput-object p1, p0, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification13;->mContentIntent:Landroid/app/PendingIntent;

    .line 311
    return-void
.end method

.method public setContentText(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 315
    iput-object p1, p0, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification13;->mContentText:Ljava/lang/CharSequence;

    .line 316
    return-void
.end method

.method public setContentTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 320
    iput-object p1, p0, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification13;->mContentTitle:Ljava/lang/CharSequence;

    .line 321
    return-void
.end method

.method public setDefaults(I)V
    .locals 0
    .parameter "defaults"

    .prologue
    .line 325
    iput p1, p0, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification13;->mDefaults:I

    .line 326
    return-void
.end method

.method public setDeleteIntent(Landroid/app/PendingIntent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 330
    iput-object p1, p0, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification13;->mDeleteIntent:Landroid/app/PendingIntent;

    .line 331
    return-void
.end method

.method public setFullScreenIntent(Landroid/app/PendingIntent;Z)V
    .locals 1
    .parameter "intent"
    .parameter "highPriority"

    .prologue
    .line 336
    iput-object p1, p0, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification13;->mFullScreenIntent:Landroid/app/PendingIntent;

    .line 337
    const/16 v0, 0x80

    invoke-direct {p0, v0, p2}, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification13;->setFlag(IZ)V

    .line 338
    return-void
.end method

.method public setLargeIcon(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 342
    iput-object p1, p0, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification13;->mLargeIcon:Landroid/graphics/Bitmap;

    .line 343
    return-void
.end method

.method public setLights(III)V
    .locals 0
    .parameter "argb"
    .parameter "onMs"
    .parameter "offMs"

    .prologue
    .line 347
    iput p1, p0, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification13;->mLedArgb:I

    .line 348
    iput p2, p0, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification13;->mLedOnMs:I

    .line 349
    iput p3, p0, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification13;->mLedOffMs:I

    .line 350
    return-void
.end method

.method public setNumber(I)V
    .locals 0
    .parameter "number"

    .prologue
    .line 354
    iput p1, p0, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification13;->mNumber:I

    .line 355
    return-void
.end method

.method public setOngoing(Z)V
    .locals 1
    .parameter "ongoing"

    .prologue
    .line 359
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification13;->setFlag(IZ)V

    .line 360
    return-void
.end method

.method public setOnlyAlertOnce(Z)V
    .locals 1
    .parameter "onlyAlertOnce"

    .prologue
    .line 364
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification13;->setFlag(IZ)V

    .line 365
    return-void
.end method

.method public setProgress(IIZ)V
    .locals 0
    .parameter "max"
    .parameter "progress"
    .parameter "indeterminate"

    .prologue
    .line 369
    iput p1, p0, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification13;->mProgressMax:I

    .line 370
    iput p2, p0, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification13;->mProgress:I

    .line 371
    iput-boolean p3, p0, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification13;->mProgressIndeterminate:Z

    .line 372
    return-void
.end method

.method public setSmallIcon(I)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 382
    iput p1, p0, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification13;->mSmallIcon:I

    .line 383
    return-void
.end method

.method public setSmallIcon(II)V
    .locals 0
    .parameter "icon"
    .parameter "level"

    .prologue
    .line 376
    iput p1, p0, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification13;->mSmallIcon:I

    .line 377
    iput p2, p0, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification13;->mSmallIconLevel:I

    .line 378
    return-void
.end method

.method public setSound(Landroid/net/Uri;)V
    .locals 1
    .parameter "sound"

    .prologue
    .line 387
    iput-object p1, p0, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification13;->mSound:Landroid/net/Uri;

    .line 388
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification13;->mAudioStreamType:I

    .line 389
    return-void
.end method

.method public setSound(Landroid/net/Uri;I)V
    .locals 0
    .parameter "sound"
    .parameter "streamType"

    .prologue
    .line 393
    iput-object p1, p0, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification13;->mSound:Landroid/net/Uri;

    .line 394
    iput p2, p0, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification13;->mAudioStreamType:I

    .line 395
    return-void
.end method

.method public setTicker(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "tickerText"

    .prologue
    .line 405
    iput-object p1, p0, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification13;->mTickerText:Ljava/lang/CharSequence;

    .line 406
    return-void
.end method

.method public setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)V
    .locals 0
    .parameter "tickerText"
    .parameter "views"

    .prologue
    .line 399
    iput-object p1, p0, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification13;->mTickerText:Ljava/lang/CharSequence;

    .line 400
    iput-object p2, p0, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification13;->mTickerView:Landroid/widget/RemoteViews;

    .line 401
    return-void
.end method

.method public setVibrate([J)V
    .locals 0
    .parameter "pattern"

    .prologue
    .line 410
    iput-object p1, p0, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification13;->mVibrate:[J

    .line 411
    return-void
.end method

.method public setWhen(J)V
    .locals 0
    .parameter "when"

    .prologue
    .line 415
    iput-wide p1, p0, Lcom/baidu/launcher/network/http/VersionedNotification$VersionNotification13;->mWhen:J

    .line 416
    return-void
.end method
