.class public Lcom/baidu/bulletin/utils/TimeUtils;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# static fields
.field private static final DAY:Ljava/lang/String; = "\u5929\u524d"

.field private static final HOUR:Ljava/lang/String; = "\u5c0f\u65f6\u524d"

.field private static final MIN:Ljava/lang/String; = "\u5206\u949f\u524d"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInterval(J)Ljava/lang/String;
    .locals 17
    .parameter "timestamp"

    .prologue
    .line 11
    const-wide/16 v15, 0x0

    cmp-long v15, p0, v15

    if-gez v15, :cond_0

    .line 12
    const/4 v15, 0x0

    .line 27
    :goto_0
    return-object v15

    .line 13
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 14
    .local v11, now:J
    cmp-long v15, v11, p0

    if-lez v15, :cond_1

    sub-long v9, v11, p0

    .line 15
    .local v9, ms:J
    :goto_1
    const-wide/16 v15, 0x3e8

    div-long v13, v9, v15

    .line 16
    .local v13, s:J
    const-wide/16 v15, 0x3c

    div-long v7, v13, v15

    .line 17
    .local v7, m:J
    const-wide/16 v15, 0x3c

    div-long v5, v7, v15

    .line 18
    .local v5, h:J
    const-wide/16 v15, 0x18

    div-long v2, v5, v15

    .line 19
    .local v2, d:J
    const-wide/16 v15, 0x1

    cmp-long v15, v5, v15

    if-gez v15, :cond_2

    .line 20
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\u5206\u949f\u524d"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto :goto_0

    .line 14
    .end local v2           #d:J
    .end local v5           #h:J
    .end local v7           #m:J
    .end local v9           #ms:J
    .end local v13           #s:J
    :cond_1
    const-wide/32 v9, 0xea60

    goto :goto_1

    .line 21
    .restart local v2       #d:J
    .restart local v5       #h:J
    .restart local v7       #m:J
    .restart local v9       #ms:J
    .restart local v13       #s:J
    :cond_2
    const-wide/16 v15, 0x18

    cmp-long v15, v5, v15

    if-gez v15, :cond_3

    .line 22
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\u5c0f\u65f6\u524d"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto :goto_0

    .line 23
    :cond_3
    const-wide/16 v15, 0x60

    cmp-long v15, v5, v15

    if-gez v15, :cond_4

    .line 24
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\u5929\u524d"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto :goto_0

    .line 26
    :cond_4
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v15, "yyyy-MM-dd"

    invoke-direct {v4, v15}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 27
    .local v4, dateFormat:Ljava/text/SimpleDateFormat;
    new-instance v15, Ljava/util/Date;

    move-wide/from16 v0, p0

    invoke-direct {v15, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v15}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_0
.end method
