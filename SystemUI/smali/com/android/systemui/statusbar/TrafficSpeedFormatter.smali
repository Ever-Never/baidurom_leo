.class public final Lcom/android/systemui/statusbar/TrafficSpeedFormatter;
.super Ljava/lang/Object;
.source "TrafficSpeedFormatter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatFileSize(Landroid/content/Context;JZ)Ljava/lang/String;
    .locals 12
    .parameter "context"
    .parameter "number"
    .parameter "speed"

    .prologue
    const/4 v11, 0x2

    const/high16 v8, 0x4480

    const/high16 v7, 0x4461

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 36
    if-nez p0, :cond_0

    .line 37
    const-string v6, ""

    .line 90
    :goto_0
    return-object v6

    .line 40
    :cond_0
    long-to-float v3, p1

    .line 41
    .local v3, result:F
    const v4, 0x104006c

    .line 42
    .local v4, suffix:I
    cmpl-float v6, v3, v7

    if-lez v6, :cond_1

    .line 43
    const v4, 0x104006d

    .line 44
    div-float/2addr v3, v8

    .line 46
    :cond_1
    cmpl-float v6, v3, v7

    if-lez v6, :cond_2

    .line 47
    const v4, 0x104006e

    .line 48
    div-float/2addr v3, v8

    .line 50
    :cond_2
    cmpl-float v6, v3, v7

    if-lez v6, :cond_3

    .line 51
    const v4, 0x104006f

    .line 52
    div-float/2addr v3, v8

    .line 54
    :cond_3
    cmpl-float v6, v3, v7

    if-lez v6, :cond_4

    .line 55
    const v4, 0x1040070

    .line 56
    div-float/2addr v3, v8

    .line 58
    :cond_4
    cmpl-float v6, v3, v7

    if-lez v6, :cond_5

    .line 59
    const v4, 0x1040071

    .line 60
    div-float/2addr v3, v8

    .line 63
    :cond_5
    const/high16 v6, 0x3f80

    cmpg-float v6, v3, v6

    if-gez v6, :cond_6

    .line 64
    const-string v6, "%.2f"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 73
    .local v5, value:Ljava/lang/String;
    :goto_1
    if-nez p3, :cond_9

    .line 75
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1040072

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v5, v8, v9

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 65
    .end local v5           #value:Ljava/lang/String;
    :cond_6
    const/high16 v6, 0x4120

    cmpg-float v6, v3, v6

    if-gez v6, :cond_7

    .line 66
    const-string v6, "%.2f"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #value:Ljava/lang/String;
    goto :goto_1

    .line 67
    .end local v5           #value:Ljava/lang/String;
    :cond_7
    const/high16 v6, 0x42c8

    cmpg-float v6, v3, v6

    if-gez v6, :cond_8

    .line 68
    const-string v6, "%.1f"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #value:Ljava/lang/String;
    goto :goto_1

    .line 70
    .end local v5           #value:Ljava/lang/String;
    :cond_8
    const-string v6, "%.0f"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #value:Ljava/lang/String;
    goto :goto_1

    .line 79
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1040072

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v5, v8, v9

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 85
    .local v2, len:I
    add-int/lit8 v6, v2, -0x2

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    .line 86
    .local v1, c:C
    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 87
    add-int/lit8 v6, v2, -0x1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 89
    :cond_a
    const-string v6, "/s"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0
.end method
