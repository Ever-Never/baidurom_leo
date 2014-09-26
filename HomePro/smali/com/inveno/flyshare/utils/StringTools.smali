.class public Lcom/inveno/flyshare/utils/StringTools;
.super Ljava/lang/Object;
.source "StringTools.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add0(II)Ljava/lang/String;
    .locals 6
    .parameter "v"
    .parameter "l"

    .prologue
    .line 242
    const-wide/high16 v2, 0x4024

    int-to-double v4, p1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-long v0, v2

    .line 243
    .local v0, lv:J
    int-to-long v2, p0

    add-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static bytesToHexString([B)Ljava/lang/String;
    .locals 5
    .parameter "bytes"

    .prologue
    .line 679
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 680
    .local v2, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, p0

    if-lt v1, v3, :cond_0

    .line 687
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 681
    :cond_0
    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 682
    .local v0, hex:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 683
    const/16 v3, 0x30

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 685
    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static checkEmail(Ljava/lang/String;)Z
    .locals 5
    .parameter "email"

    .prologue
    .line 579
    const/4 v2, 0x0

    .line 581
    .local v2, flag:Z
    :try_start_0
    const-string v0, "^([a-z0-9A-Z]+[-|\\.]?)+[a-z0-9A-Z]@([a-z0-9A-Z]+(-[a-z0-9A-Z]+)?\\.)+[a-zA-Z]{2,}$"

    .line 582
    .local v0, check:Ljava/lang/String;
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 583
    .local v4, regex:Ljava/util/regex/Pattern;
    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 584
    .local v3, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 588
    .end local v0           #check:Ljava/lang/String;
    .end local v3           #matcher:Ljava/util/regex/Matcher;
    .end local v4           #regex:Ljava/util/regex/Pattern;
    :goto_0
    return v2

    .line 585
    :catch_0
    move-exception v1

    .line 586
    .local v1, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static checkInput(Ljava/lang/String;)Z
    .locals 5
    .parameter "content"

    .prologue
    .line 713
    const/4 v1, 0x0

    .line 715
    .local v1, flag:Z
    :try_start_0
    const-string v4, "^[a-zA-Z0-9_\u4e00-\u9fa5]+$"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 716
    .local v3, p:Ljava/util/regex/Pattern;
    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 717
    .local v2, m:Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 721
    .end local v2           #m:Ljava/util/regex/Matcher;
    .end local v3           #p:Ljava/util/regex/Pattern;
    :goto_0
    return v1

    .line 718
    :catch_0
    move-exception v0

    .line 719
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static checkMobile(Ljava/lang/String;)Z
    .locals 5
    .parameter "mobiles"

    .prologue
    .line 599
    const/4 v1, 0x0

    .line 602
    .local v1, flag:Z
    :try_start_0
    const-string v4, "^((13[0-9])|(15[^4,\\D])|(18[0-9]))\\d{8}$"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 603
    .local v3, p:Ljava/util/regex/Pattern;
    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 604
    .local v2, m:Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 608
    .end local v2           #m:Ljava/util/regex/Matcher;
    .end local v3           #p:Ljava/util/regex/Pattern;
    :goto_0
    return v1

    .line 605
    :catch_0
    move-exception v0

    .line 606
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static checkPwd(Ljava/lang/String;)Z
    .locals 5
    .parameter "pwd"

    .prologue
    .line 619
    const/4 v1, 0x0

    .line 621
    .local v1, flag:Z
    :try_start_0
    const-string v4, "^[a-z0-9A-Z]{6,13}$"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 622
    .local v3, p:Ljava/util/regex/Pattern;
    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 623
    .local v2, m:Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 627
    .end local v2           #m:Ljava/util/regex/Matcher;
    .end local v3           #p:Ljava/util/regex/Pattern;
    :goto_0
    return v1

    .line 624
    :catch_0
    move-exception v0

    .line 625
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static checkPwdCharacter(Ljava/lang/String;)Z
    .locals 7
    .parameter "pwd"

    .prologue
    .line 638
    const/4 v1, 0x0

    .line 641
    .local v1, flag:Z
    :try_start_0
    const-string v4, "^[a-z0-9A-Z]+$"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 642
    .local v3, p:Ljava/util/regex/Pattern;
    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 644
    .local v2, m:Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    .line 646
    const-string v4, "lhc"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "checkPwdCharacter m.matches:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/inveno/flyshare/utils/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 650
    .end local v2           #m:Ljava/util/regex/Matcher;
    .end local v3           #p:Ljava/util/regex/Pattern;
    :goto_0
    return v1

    .line 647
    :catch_0
    move-exception v0

    .line 648
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static commentTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .parameter "time"

    .prologue
    .line 450
    invoke-static {p0}, Lcom/inveno/flyshare/utils/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 452
    :try_start_0
    new-instance v8, Ljava/text/SimpleDateFormat;

    .line 453
    const-string v11, "yyyy-MM-dd HH:mm:ss"

    .line 452
    invoke-direct {v8, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 454
    .local v8, sdf:Ljava/text/SimpleDateFormat;
    invoke-virtual {v8, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 455
    .local v2, date:Ljava/util/Date;
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    .line 456
    .local v9, theTime:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 457
    .local v0, currentTime:J
    sub-long v5, v0, v9

    .line 458
    .local v5, differTime:J
    const-wide/16 v3, 0x0

    .line 459
    .local v3, differ:J
    const-wide/32 v11, 0xea60

    div-long v3, v5, v11

    const-wide/16 v11, 0x3c

    cmp-long v11, v3, v11

    if-gez v11, :cond_1

    .line 460
    const-wide/16 v11, 0x0

    cmp-long v11, v3, v11

    if-nez v11, :cond_0

    const-wide/16 v3, 0x1

    .line 461
    :cond_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "\u5206\u949f\u524d"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 477
    .end local v0           #currentTime:J
    .end local v2           #date:Ljava/util/Date;
    .end local v3           #differ:J
    .end local v5           #differTime:J
    .end local v8           #sdf:Ljava/text/SimpleDateFormat;
    .end local v9           #theTime:J
    :goto_0
    return-object v11

    .line 463
    .restart local v0       #currentTime:J
    .restart local v2       #date:Ljava/util/Date;
    .restart local v3       #differ:J
    .restart local v5       #differTime:J
    .restart local v8       #sdf:Ljava/text/SimpleDateFormat;
    .restart local v9       #theTime:J
    :cond_1
    const-wide/32 v11, 0x36ee80

    div-long v3, v5, v11

    const-wide/16 v11, 0x18

    cmp-long v11, v3, v11

    if-gez v11, :cond_2

    .line 464
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "\u5c0f\u65f6\u524d"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    .line 466
    :cond_2
    const-wide/32 v11, 0x5265c00

    div-long v3, v5, v11

    const-wide/16 v11, 0x1

    cmp-long v11, v3, v11

    if-ltz v11, :cond_3

    .line 467
    const-wide/32 v11, 0x5265c00

    div-long v3, v5, v11

    const-wide/16 v11, 0x3

    cmp-long v11, v3, v11

    if-gtz v11, :cond_3

    .line 468
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "\u5929\u524d"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    .line 469
    :cond_3
    const-wide/32 v11, 0x5265c00

    div-long v3, v5, v11

    const-wide/16 v11, 0x3

    cmp-long v11, v3, v11

    if-lez v11, :cond_4

    .line 470
    const/4 v11, 0x5

    const-string v12, "-"

    invoke-virtual {p0, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v12

    add-int/lit8 v12, v12, 0x3

    invoke-virtual {p0, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    goto :goto_0

    .line 472
    .end local v0           #currentTime:J
    .end local v2           #date:Ljava/util/Date;
    .end local v3           #differ:J
    .end local v5           #differTime:J
    .end local v8           #sdf:Ljava/text/SimpleDateFormat;
    .end local v9           #theTime:J
    :catch_0
    move-exception v7

    .line 473
    .local v7, e:Ljava/text/ParseException;
    invoke-virtual {v7}, Ljava/text/ParseException;->printStackTrace()V

    .line 477
    .end local v7           #e:Ljava/text/ParseException;
    :cond_4
    const-string v11, ""

    goto :goto_0
.end method

.method public static convert88591Toutf8(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "strSrc"

    .prologue
    .line 326
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "ISO-8859-1"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const-string v3, "utf-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    :goto_0
    return-object v1

    .line 327
    :catch_0
    move-exception v0

    .line 328
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static convertNullValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "val"

    .prologue
    .line 286
    if-nez p0, :cond_0

    .line 287
    const-string p0, ""

    .line 288
    .end local p0
    :cond_0
    return-object p0
.end method

.method public static decodingFromISO8858_1(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "str"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 140
    invoke-static {p0}, Lcom/inveno/flyshare/utils/StringTools;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    const-string v0, ""

    .line 142
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "ISO8859-1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public static differTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .parameter "time"

    .prologue
    const-wide/16 v13, 0x3

    .line 413
    invoke-static {p0}, Lcom/inveno/flyshare/utils/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 415
    :try_start_0
    new-instance v8, Ljava/text/SimpleDateFormat;

    .line 416
    const-string v11, "yyyy-MM-dd HH:mm:ss"

    .line 415
    invoke-direct {v8, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 417
    .local v8, sdf:Ljava/text/SimpleDateFormat;
    invoke-virtual {v8, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 418
    .local v2, date:Ljava/util/Date;
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    .line 419
    .local v9, theTime:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 420
    .local v0, currentTime:J
    sub-long v5, v0, v9

    .line 421
    .local v5, differTime:J
    const-wide/16 v3, 0x0

    .line 422
    .local v3, differ:J
    const-wide/32 v11, 0xea60

    div-long v3, v5, v11

    const-wide/16 v11, 0x3c

    cmp-long v11, v3, v11

    if-gez v11, :cond_0

    .line 423
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "\u5206\u949f\u524d"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 439
    .end local v0           #currentTime:J
    .end local v2           #date:Ljava/util/Date;
    .end local v3           #differ:J
    .end local v5           #differTime:J
    .end local v8           #sdf:Ljava/text/SimpleDateFormat;
    .end local v9           #theTime:J
    :goto_0
    return-object v11

    .line 425
    .restart local v0       #currentTime:J
    .restart local v2       #date:Ljava/util/Date;
    .restart local v3       #differ:J
    .restart local v5       #differTime:J
    .restart local v8       #sdf:Ljava/text/SimpleDateFormat;
    .restart local v9       #theTime:J
    :cond_0
    const-wide/32 v11, 0x36ee80

    div-long v3, v5, v11

    const-wide/16 v11, 0x18

    cmp-long v11, v3, v11

    if-gez v11, :cond_1

    .line 426
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "\u5c0f\u65f6\u524d"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    .line 428
    :cond_1
    const-wide/32 v11, 0x5265c00

    div-long v3, v5, v11

    const-wide/16 v11, 0x1

    cmp-long v11, v3, v11

    if-ltz v11, :cond_2

    .line 429
    const-wide/32 v11, 0x5265c00

    div-long v3, v5, v11

    cmp-long v11, v3, v13

    if-gtz v11, :cond_2

    .line 430
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "\u5929\u524d"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    .line 431
    :cond_2
    const-wide/32 v11, 0x5265c00

    div-long v3, v5, v11

    cmp-long v11, v3, v13

    if-lez v11, :cond_3

    .line 432
    const/4 v11, 0x5

    const-string v12, "-"

    invoke-virtual {p0, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v12

    add-int/lit8 v12, v12, 0x3

    invoke-virtual {p0, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    goto :goto_0

    .line 434
    .end local v0           #currentTime:J
    .end local v2           #date:Ljava/util/Date;
    .end local v3           #differ:J
    .end local v5           #differTime:J
    .end local v8           #sdf:Ljava/text/SimpleDateFormat;
    .end local v9           #theTime:J
    :catch_0
    move-exception v7

    .line 435
    .local v7, e:Ljava/text/ParseException;
    invoke-virtual {v7}, Ljava/text/ParseException;->printStackTrace()V

    .line 439
    .end local v7           #e:Ljava/text/ParseException;
    :cond_3
    const-string v11, ""

    goto :goto_0
.end method

.method public static encodeUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "imgUrl"

    .prologue
    .line 546
    invoke-static {p0}, Lcom/inveno/flyshare/utils/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 547
    move-object v4, p0

    .line 548
    .local v4, encodeUrl:Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    const/4 v7, 0x5

    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 549
    .local v2, chs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Character;>;"
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v5, v7, :cond_0

    .line 557
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_2

    .line 568
    .end local v2           #chs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Character;>;"
    .end local v4           #encodeUrl:Ljava/lang/String;
    .end local v5           #i:I
    :goto_2
    return-object v4

    .line 550
    .restart local v2       #chs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Character;>;"
    .restart local v4       #encodeUrl:Ljava/lang/String;
    .restart local v5       #i:I
    :cond_0
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 551
    .local v0, ch:C
    move v6, v0

    .line 552
    .local v6, v:I
    const/16 v7, 0x4e00

    if-lt v6, v7, :cond_1

    const v7, 0x29fa5

    if-gt v6, v7, :cond_1

    .line 553
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 549
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 557
    .end local v0           #ch:C
    .end local v6           #v:I
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Character;

    .line 559
    .local v1, character:Ljava/lang/Character;
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v8

    .line 560
    invoke-virtual {v1}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "utf-8"

    invoke-static {v9, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 559
    invoke-virtual {v4, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_1

    .line 561
    :catch_0
    move-exception v3

    .line 562
    .local v3, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 568
    .end local v1           #character:Ljava/lang/Character;
    .end local v2           #chs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Character;>;"
    .end local v3           #e:Ljava/io/UnsupportedEncodingException;
    .end local v4           #encodeUrl:Ljava/lang/String;
    .end local v5           #i:I
    :cond_3
    const-string v4, ""

    goto :goto_2
.end method

.method public static formatNumber(Ljava/lang/String;J)Ljava/lang/String;
    .locals 2
    .parameter "pattern"
    .parameter "number"

    .prologue
    .line 134
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0, p0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 135
    .local v0, df:Ljava/text/DecimalFormat;
    invoke-virtual {v0, p1, p2}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static generator(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "key"

    .prologue
    .line 663
    :try_start_0
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 664
    .local v2, mDigest:Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 665
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    invoke-static {v3}, Lcom/inveno/flyshare/utils/StringTools;->bytesToHexString([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 669
    .end local v2           #mDigest:Ljava/security/MessageDigest;
    .local v0, cacheKey:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 666
    .end local v0           #cacheKey:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 667
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #cacheKey:Ljava/lang/String;
    goto :goto_0
.end method

.method public static getFileNameFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "url"

    .prologue
    .line 755
    const-string v0, "apk"

    .line 758
    .local v0, extName:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/inveno/flyshare/utils/StringTools;->hashKeyForDisk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 759
    .local v1, filename:Ljava/lang/String;
    return-object v1
.end method

.method public static getJsonString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "path"

    .prologue
    const/4 v4, 0x0

    .line 1030
    const-string v3, ""

    .line 1031
    .local v3, jsonStr:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1033
    .local v0, br:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1034
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v3

    .line 1039
    if-eqz v1, :cond_2

    .line 1040
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    move-object v4, v3

    .line 1045
    :goto_1
    return-object v4

    .line 1035
    :catch_0
    move-exception v2

    .line 1036
    .local v2, e:Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1039
    if-eqz v0, :cond_0

    .line 1040
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 1041
    :catch_1
    move-exception v2

    .line 1042
    .local v2, e:Ljava/io/IOException;
    goto :goto_1

    .line 1037
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 1039
    :goto_3
    if-eqz v0, :cond_1

    .line 1040
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 1044
    :cond_1
    throw v5

    .line 1041
    :catch_2
    move-exception v2

    .line 1042
    .restart local v2       #e:Ljava/io/IOException;
    goto :goto_1

    .line 1041
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #e:Ljava/io/IOException;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catch_3
    move-exception v2

    .restart local v2       #e:Ljava/io/IOException;
    move-object v0, v1

    .line 1042
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_1

    .line 1037
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #e:Ljava/io/IOException;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_3

    .line 1035
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catch_4
    move-exception v2

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_2

    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :cond_2
    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_0
.end method

.method public static getLineSeparator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 298
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLinkString([Ljava/lang/Object;)Ljava/lang/String;
    .locals 8
    .parameter "array"

    .prologue
    const/4 v4, 0x0

    .line 69
    const-string v2, ""

    .line 70
    .local v2, str:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .local v1, sb:Ljava/lang/StringBuilder;
    if-eqz p0, :cond_0

    array-length v3, p0

    if-lez v3, :cond_0

    .line 72
    array-length v5, p0

    move v3, v4

    :goto_0
    if-lt v3, v5, :cond_2

    .line 75
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 77
    :cond_0
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_1

    .line 78
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 80
    :cond_1
    return-object v2

    .line 72
    :cond_2
    aget-object v0, p0, v3

    .line 73
    .local v0, s:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static getLinkString([Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "array"

    .prologue
    const/4 v4, 0x0

    .line 45
    const-string v2, ""

    .line 46
    .local v2, str:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .local v1, sb:Ljava/lang/StringBuilder;
    if-eqz p0, :cond_0

    array-length v3, p0

    if-lez v3, :cond_0

    .line 48
    array-length v5, p0

    move v3, v4

    :goto_0
    if-lt v3, v5, :cond_2

    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 53
    :cond_0
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_1

    .line 54
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 56
    :cond_1
    return-object v2

    .line 48
    :cond_2
    aget-object v0, p0, v3

    .line 49
    .local v0, s:Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static getMillisFromMin(Ljava/lang/String;)J
    .locals 2
    .parameter "minTime"

    .prologue
    .line 358
    invoke-static {p0}, Lcom/inveno/flyshare/utils/StringTools;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    const-wide/16 v0, 0x0

    .line 361
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const v1, 0xea60

    mul-int/2addr v0, v1

    int-to-long v0, v0

    goto :goto_0
.end method

.method public static getNameFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "url"

    .prologue
    .line 372
    const-string v1, ""

    .line 374
    .local v1, name:Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Lcom/inveno/flyshare/utils/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 375
    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    move-object v2, v1

    .line 381
    :goto_0
    return-object v2

    .line 378
    :catch_0
    move-exception v0

    .line 379
    .local v0, e:Ljava/lang/Exception;
    const-string v2, ""

    goto :goto_0
.end method

.method public static getNameFromUrlWithoutPostfix(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "url"

    .prologue
    .line 392
    const-string v1, ""

    .line 394
    .local v1, name:Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Lcom/inveno/flyshare/utils/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 396
    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 397
    const-string v3, "."

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 396
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    move-object v2, v1

    .line 402
    :goto_0
    return-object v2

    .line 399
    :catch_0
    move-exception v0

    .line 400
    .local v0, e:Ljava/lang/Exception;
    const-string v2, ""

    goto :goto_0
.end method

.method public static getNewString(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 731
    .local p0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, ""

    .line 732
    .local v2, str:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 733
    .local v1, sb:Ljava/lang/StringBuilder;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 734
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 737
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 739
    :cond_0
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 740
    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 742
    :cond_1
    return-object v2

    .line 734
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 735
    .local v0, s:Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static getSDPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 1009
    const/4 v1, 0x0

    .line 1010
    .local v1, sdDir:Ljava/io/File;
    invoke-static {}, Lcom/inveno/flyshare/utils/StringTools;->sdCardExist()Z

    move-result v0

    .line 1011
    .local v0, sdCardExist:Z
    if-eqz v0, :cond_0

    .line 1012
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 1016
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1014
    :cond_0
    const-string v2, "flyCache"

    invoke-static {p0, v2}, Lcom/inveno/flyshare/utils/BitmapTools;->getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    goto :goto_0
.end method

.method public static getSqlInClauseByList([Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "strArray"

    .prologue
    const/4 v4, 0x0

    .line 93
    const-string v2, ""

    .line 94
    .local v2, str:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 95
    .local v1, sb:Ljava/lang/StringBuffer;
    if-eqz p0, :cond_0

    array-length v3, p0

    if-lez v3, :cond_0

    .line 96
    array-length v5, p0

    move v3, v4

    :goto_0
    if-lt v3, v5, :cond_2

    .line 102
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 104
    :cond_0
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_1

    .line 105
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 107
    :cond_1
    return-object v2

    .line 96
    :cond_2
    aget-object v0, p0, v3

    .line 97
    .local v0, s:Ljava/lang/String;
    const-string v6, "\'"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    const-string v6, "\'"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    const-string v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 96
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static getSysTime(J)Ljava/lang/String;
    .locals 10
    .parameter "m"

    .prologue
    .line 505
    move-wide v6, p0

    .line 506
    .local v6, theTime:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 507
    .local v0, currentTime:J
    sub-long v4, v0, v6

    .line 508
    .local v4, differTime:J
    const-wide/16 v2, 0x0

    .line 509
    .local v2, differ:J
    const-wide/32 v8, 0xea60

    div-long v2, v4, v8

    const-wide/16 v8, 0x3c

    cmp-long v8, v2, v8

    if-gez v8, :cond_0

    .line 510
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "\u5206\u949f\u524d"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 516
    :goto_0
    return-object v8

    .line 511
    :cond_0
    const-wide/32 v8, 0x36ee80

    div-long v2, v4, v8

    const-wide/16 v8, 0x18

    cmp-long v8, v2, v8

    if-gez v8, :cond_1

    .line 512
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "\u5c0f\u65f6\u524d"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 513
    :cond_1
    const-wide/32 v8, 0x5265c00

    div-long v2, v4, v8

    const-wide/16 v8, 0x1

    cmp-long v8, v2, v8

    if-ltz v8, :cond_2

    .line 514
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "\u5929\u524d"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 516
    :cond_2
    const-string v8, ""

    goto :goto_0
.end method

.method public static getUrlString([Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "strs"

    .prologue
    .line 339
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 340
    .local v2, strBuffer:Ljava/lang/StringBuffer;
    if-eqz p0, :cond_1

    .line 341
    array-length v1, p0

    .line 342
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 345
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 348
    .end local v0           #i:I
    .end local v1           #len:I
    :goto_1
    return-object v3

    .line 343
    .restart local v0       #i:I
    .restart local v1       #len:I
    :cond_0
    aget-object v3, p0, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 342
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 348
    .end local v0           #i:I
    .end local v1           #len:I
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static getWeatherHighTemp(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "temp"

    .prologue
    .line 526
    const-string v1, ""

    .line 527
    .local v1, str:Ljava/lang/String;
    invoke-static {p0}, Lcom/inveno/flyshare/utils/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 529
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "~"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 530
    const-string v3, "\u00b0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 529
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 535
    :cond_0
    :goto_0
    return-object v1

    .line 531
    :catch_0
    move-exception v0

    .line 532
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static hashKeyForDisk(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "key"

    .prologue
    .line 768
    :try_start_0
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 769
    .local v2, mDigest:Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 770
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    invoke-static {v3}, Lcom/inveno/flyshare/utils/StringTools;->bytesToHexString([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 774
    .end local v2           #mDigest:Ljava/security/MessageDigest;
    .local v0, cacheKey:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 771
    .end local v0           #cacheKey:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 772
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #cacheKey:Ljava/lang/String;
    goto :goto_0
.end method

.method public static httpJudge(Ljava/lang/String;)Z
    .locals 3
    .parameter "http"

    .prologue
    .line 813
    const-string v2, "http://(([a-zA-z0-9]|-){1,}\\.){1,}[a-zA-z0-9]{1,}-*"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 814
    .local v1, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 815
    .local v0, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 816
    const/4 v2, 0x1

    .line 818
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .locals 1
    .parameter "src"

    .prologue
    .line 112
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 113
    :cond_0
    const/4 v0, 0x1

    .line 115
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNotEmpty(Ljava/lang/String;)Z
    .locals 1
    .parameter "src"

    .prologue
    .line 120
    invoke-static {p0}, Lcom/inveno/flyshare/utils/StringTools;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isNumber(Ljava/lang/String;)Z
    .locals 2
    .parameter "val"

    .prologue
    .line 312
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    const/4 v1, 0x1

    .line 315
    :goto_0
    return v1

    .line 314
    :catch_0
    move-exception v0

    .line 315
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static removeHtmlCssForTts(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "htmlstr"

    .prologue
    .line 787
    const-string v3, ""

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz p0, :cond_0

    .line 788
    const-string v3, "\\s*<.*?>\\s*"

    const/16 v4, 0x2a

    invoke-static {v3, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 790
    .local v1, pat:Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 792
    .local v0, m:Ljava/util/regex/Matcher;
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 793
    .local v2, rs:Ljava/lang/String;
    const-string v3, "&nbsp"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 794
    const-string v3, "&lt;"

    const-string v4, "<"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 795
    const-string v3, "&gt;"

    const-string v4, ">"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 796
    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x7

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 797
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 800
    .end local v0           #m:Ljava/util/regex/Matcher;
    .end local v1           #pat:Ljava/util/regex/Pattern;
    .end local v2           #rs:Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_0
    const-string v2, ""

    goto :goto_0
.end method

.method public static removeHtmlFlow(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "htmlstr"

    .prologue
    .line 173
    const-string v3, ""

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz p0, :cond_0

    .line 174
    const-string v3, "<p>\\s+</p>"

    const/16 v4, 0x2a

    invoke-static {v3, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 176
    .local v1, pat:Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 178
    .local v0, m:Ljava/util/regex/Matcher;
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 179
    .local v2, rs:Ljava/lang/String;
    const-string v3, "&nbsp;"

    const-string v4, " "

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 184
    .end local v0           #m:Ljava/util/regex/Matcher;
    .end local v1           #pat:Ljava/util/regex/Pattern;
    .end local v2           #rs:Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_0
    const-string v2, ""

    goto :goto_0
.end method

.method public static removeHtmlTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "htmlstr"

    .prologue
    .line 155
    const-string v3, ""

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz p0, :cond_0

    .line 156
    const-string v3, "\\s*<.*?>\\s*"

    const/16 v4, 0x2a

    invoke-static {v3, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 158
    .local v1, pat:Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 160
    .local v0, m:Ljava/util/regex/Matcher;
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 161
    .local v2, rs:Ljava/lang/String;
    const-string v3, "&nbsp;"

    const-string v4, " "

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 162
    const-string v3, "&lt;"

    const-string v4, "<"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 163
    const-string v3, "&gt;"

    const-string v4, ">"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 166
    .end local v0           #m:Ljava/util/regex/Matcher;
    .end local v1           #pat:Ljava/util/regex/Pattern;
    .end local v2           #rs:Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_0
    const-string v2, ""

    goto :goto_0
.end method

.method public static replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "s"
    .parameter "oldS"
    .parameter "newS"

    .prologue
    .line 203
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 204
    .local v0, buf:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .line 207
    .local v1, i:I
    :cond_0
    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 209
    .local v2, pos:I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 222
    :goto_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 224
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 213
    :cond_1
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 214
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 215
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int v1, v2, v3

    .line 217
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v1, v3, :cond_0

    goto :goto_0
.end method

.method public static declared-synchronized saveJsonStrToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .parameter "jsonStr"
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 961
    const-class v6, Lcom/inveno/flyshare/utils/StringTools;

    monitor-enter v6

    :try_start_0
    invoke-static {}, Lcom/inveno/flyshare/utils/StringTools;->sdCardExist()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {p1}, Lcom/inveno/flyshare/utils/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 965
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    .line 964
    invoke-static {v5}, Lcom/inveno/flyshare/utils/BitmapTools;->getUsableSpace(Ljava/io/File;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v7

    .line 965
    const-wide/16 v9, 0x0

    .line 964
    cmp-long v5, v7, v9

    if-nez v5, :cond_1

    .line 991
    :cond_0
    :goto_0
    monitor-exit v6

    return-void

    .line 968
    :cond_1
    :try_start_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 970
    .local v3, file:Ljava/io/File;
    new-instance v4, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 971
    .local v4, fileTemp:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    .line 972
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 974
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 976
    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-eqz v5, :cond_0

    .line 977
    const/4 v0, 0x0

    .line 979
    .local v0, bw:Ljava/io/BufferedWriter;
    :try_start_2
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/FileWriter;

    invoke-direct {v5, p1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 980
    .end local v0           #bw:Ljava/io/BufferedWriter;
    .local v1, bw:Ljava/io/BufferedWriter;
    :try_start_3
    invoke-virtual {v1, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 984
    if-eqz v1, :cond_0

    .line 985
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 961
    .end local v1           #bw:Ljava/io/BufferedWriter;
    .end local v3           #file:Ljava/io/File;
    .end local v4           #fileTemp:Ljava/io/File;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 981
    .restart local v0       #bw:Ljava/io/BufferedWriter;
    .restart local v3       #file:Ljava/io/File;
    .restart local v4       #fileTemp:Ljava/io/File;
    :catch_0
    move-exception v2

    .line 982
    .local v2, e:Ljava/lang/Exception;
    :goto_1
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 984
    if-eqz v0, :cond_0

    .line 985
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    goto :goto_0

    .line 983
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v5

    .line 984
    :goto_2
    if-eqz v0, :cond_3

    .line 985
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 986
    :cond_3
    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 983
    .end local v0           #bw:Ljava/io/BufferedWriter;
    .restart local v1       #bw:Ljava/io/BufferedWriter;
    :catchall_2
    move-exception v5

    move-object v0, v1

    .end local v1           #bw:Ljava/io/BufferedWriter;
    .restart local v0       #bw:Ljava/io/BufferedWriter;
    goto :goto_2

    .line 981
    .end local v0           #bw:Ljava/io/BufferedWriter;
    .restart local v1       #bw:Ljava/io/BufferedWriter;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1           #bw:Ljava/io/BufferedWriter;
    .restart local v0       #bw:Ljava/io/BufferedWriter;
    goto :goto_1
.end method

.method public static sdCardExist()Z
    .locals 2

    .prologue
    .line 999
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 1000
    const-string v1, "mounted"

    .line 999
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static setSizetoDoble(D)Ljava/lang/String;
    .locals 4
    .parameter "num"

    .prologue
    .line 700
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, p0, p1}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v2, 0x2

    .line 701
    const/4 v3, 0x4

    .line 700
    invoke-virtual {v1, v2, v3}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    .line 702
    .local v0, mData:Ljava/math/BigDecimal;
    invoke-virtual {v0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static splitStringComma(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .parameter "str"

    .prologue
    .line 487
    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/String;

    .line 489
    .local v1, strs:[Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Lcom/inveno/flyshare/utils/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 490
    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 495
    :cond_0
    :goto_0
    return-object v1

    .line 492
    :catch_0
    move-exception v0

    .line 493
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static urlDecode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "src"

    .prologue
    .line 255
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {p0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 257
    :goto_0
    return-object v1

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const-string v1, ""

    goto :goto_0
.end method

.method public static urlEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "src"

    .prologue
    .line 270
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {p0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 272
    :goto_0
    return-object v1

    .line 271
    :catch_0
    move-exception v0

    .line 272
    .local v0, e:Ljava/lang/Exception;
    const-string v1, ""

    goto :goto_0
.end method

.method public static waterwallTime(J)Ljava/lang/String;
    .locals 8
    .parameter "time"

    .prologue
    .line 830
    const-wide/16 v6, 0x0

    cmp-long v6, p0, v6

    if-nez v6, :cond_0

    .line 831
    const-string v6, ""

    .line 856
    :goto_0
    return-object v6

    .line 832
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 833
    .local v0, currentTime:J
    sub-long v4, v0, p0

    .line 834
    .local v4, differTime:J
    const-wide/16 v2, 0x0

    .line 836
    .local v2, differ:J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_5

    .line 838
    const-wide/32 v6, 0xea60

    div-long v2, v4, v6

    const-wide/16 v6, 0x3c

    cmp-long v6, v2, v6

    if-gez v6, :cond_2

    .line 839
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-nez v6, :cond_1

    const-wide/16 v2, 0x1

    .line 840
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\u5206\u949f\u524d"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 842
    :cond_2
    const-wide/32 v6, 0x36ee80

    div-long v2, v4, v6

    const-wide/16 v6, 0x18

    cmp-long v6, v2, v6

    if-gez v6, :cond_3

    .line 843
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\u5c0f\u65f6\u524d"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 845
    :cond_3
    const-wide/32 v6, 0x5265c00

    div-long v2, v4, v6

    const-wide/16 v6, 0x1

    cmp-long v6, v2, v6

    if-ltz v6, :cond_4

    .line 846
    const-wide/32 v6, 0x5265c00

    div-long v2, v4, v6

    const-wide/16 v6, 0x3

    cmp-long v6, v2, v6

    if-gtz v6, :cond_4

    .line 847
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\u5929\u524d"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 848
    :cond_4
    const-wide/32 v6, 0x5265c00

    div-long v2, v4, v6

    const-wide/16 v6, 0x3

    cmp-long v6, v2, v6

    if-lez v6, :cond_6

    .line 850
    const-string v6, ""

    goto/16 :goto_0

    .line 853
    :cond_5
    const-string v6, ""

    goto/16 :goto_0

    .line 856
    :cond_6
    const-string v6, ""

    goto/16 :goto_0
.end method

.method public static waterwallTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "time"

    .prologue
    .line 867
    invoke-static {p0}, Lcom/inveno/flyshare/utils/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 869
    :try_start_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd HH:mm"

    invoke-direct {v2, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 870
    .local v2, sdf:Ljava/text/SimpleDateFormat;
    invoke-virtual {v2, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 871
    .local v0, date:Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    .line 872
    .local v3, theTime:J
    invoke-static {v3, v4}, Lcom/inveno/flyshare/utils/StringTools;->waterwallTime(J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 878
    .end local v0           #date:Ljava/util/Date;
    .end local v2           #sdf:Ljava/text/SimpleDateFormat;
    .end local v3           #theTime:J
    :goto_0
    return-object v5

    .line 873
    :catch_0
    move-exception v1

    .line 874
    .local v1, e:Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    .line 878
    .end local v1           #e:Ljava/text/ParseException;
    :cond_0
    const-string v5, ""

    goto :goto_0
.end method

.method public static waterwallTimeForWeibo(J)Ljava/lang/String;
    .locals 14
    .parameter "time"

    .prologue
    const-wide/16 v12, 0x3

    const-wide/16 v6, 0x1

    const-wide/32 v10, 0x5265c00

    .line 928
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 929
    .local v0, currentTime:J
    sub-long v4, v0, p0

    .line 931
    .local v4, differTime:J
    const-wide/16 v2, 0x0

    .line 932
    .local v2, differ:J
    const-wide/32 v8, 0xea60

    div-long v2, v4, v8

    const-wide/16 v8, 0x3c

    cmp-long v8, v2, v8

    if-gez v8, :cond_1

    .line 933
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-nez v8, :cond_0

    move-wide v2, v6

    .line 934
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\u5206\u949f\u524d"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 947
    :goto_0
    return-object v6

    .line 936
    :cond_1
    const-wide/32 v8, 0x36ee80

    div-long v2, v4, v8

    const-wide/16 v8, 0x18

    cmp-long v8, v2, v8

    if-gez v8, :cond_2

    .line 937
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\u5c0f\u65f6\u524d"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 939
    :cond_2
    div-long v2, v4, v10

    cmp-long v6, v2, v6

    if-ltz v6, :cond_3

    .line 940
    div-long v2, v4, v10

    cmp-long v6, v2, v12

    if-gtz v6, :cond_3

    .line 941
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\u5929\u524d"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 942
    :cond_3
    div-long v2, v4, v10

    cmp-long v6, v2, v12

    if-lez v6, :cond_4

    .line 944
    const-string v6, ""

    goto :goto_0

    .line 947
    :cond_4
    const-string v6, ""

    goto :goto_0
.end method

.method public static waterwallTimeForWeibo(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .parameter "time"

    .prologue
    .line 889
    invoke-static {p0}, Lcom/inveno/flyshare/utils/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 891
    :try_start_0
    new-instance v8, Ljava/text/SimpleDateFormat;

    .line 892
    const-string v11, "EEE MMM dd HH:mm:ss Z yyyy"

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 891
    invoke-direct {v8, v11, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 893
    .local v8, sdf:Ljava/text/SimpleDateFormat;
    invoke-virtual {v8, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 894
    .local v2, date:Ljava/util/Date;
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    .line 895
    .local v9, theTime:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 896
    .local v0, currentTime:J
    sub-long v5, v0, v9

    .line 897
    .local v5, differTime:J
    const-wide/16 v3, 0x0

    .line 898
    .local v3, differ:J
    const-wide/32 v11, 0xea60

    div-long v3, v5, v11

    const-wide/16 v11, 0x3c

    cmp-long v11, v3, v11

    if-gez v11, :cond_1

    .line 899
    const-wide/16 v11, 0x0

    cmp-long v11, v3, v11

    if-nez v11, :cond_0

    const-wide/16 v3, 0x1

    .line 900
    :cond_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "\u5206\u949f\u524d"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 917
    .end local v0           #currentTime:J
    .end local v2           #date:Ljava/util/Date;
    .end local v3           #differ:J
    .end local v5           #differTime:J
    .end local v8           #sdf:Ljava/text/SimpleDateFormat;
    .end local v9           #theTime:J
    :goto_0
    return-object v11

    .line 902
    .restart local v0       #currentTime:J
    .restart local v2       #date:Ljava/util/Date;
    .restart local v3       #differ:J
    .restart local v5       #differTime:J
    .restart local v8       #sdf:Ljava/text/SimpleDateFormat;
    .restart local v9       #theTime:J
    :cond_1
    const-wide/32 v11, 0x36ee80

    div-long v3, v5, v11

    const-wide/16 v11, 0x18

    cmp-long v11, v3, v11

    if-gez v11, :cond_2

    .line 903
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "\u5c0f\u65f6\u524d"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    .line 905
    :cond_2
    const-wide/32 v11, 0x5265c00

    div-long v3, v5, v11

    const-wide/16 v11, 0x1

    cmp-long v11, v3, v11

    if-ltz v11, :cond_3

    .line 906
    const-wide/32 v11, 0x5265c00

    div-long v3, v5, v11

    const-wide/16 v11, 0x3

    cmp-long v11, v3, v11

    if-gtz v11, :cond_3

    .line 907
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "\u5929\u524d"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    .line 908
    :cond_3
    const-wide/32 v11, 0x5265c00

    div-long v3, v5, v11
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v11, 0x3

    cmp-long v11, v3, v11

    if-lez v11, :cond_4

    .line 910
    const-string v11, ""

    goto :goto_0

    .line 912
    .end local v0           #currentTime:J
    .end local v2           #date:Ljava/util/Date;
    .end local v3           #differ:J
    .end local v5           #differTime:J
    .end local v8           #sdf:Ljava/text/SimpleDateFormat;
    .end local v9           #theTime:J
    :catch_0
    move-exception v7

    .line 913
    .local v7, e:Ljava/text/ParseException;
    invoke-virtual {v7}, Ljava/text/ParseException;->printStackTrace()V

    .line 917
    .end local v7           #e:Ljava/text/ParseException;
    :cond_4
    const-string v11, ""

    goto :goto_0
.end method
