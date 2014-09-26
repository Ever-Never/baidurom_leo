.class public Lcom/inveno/newpiflow/tools/GetTextLinesUtil;
.super Ljava/lang/Object;
.source "GetTextLinesUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static autoSplit(Ljava/lang/String;Landroid/graphics/Paint;F)Ljava/util/ArrayList;
    .locals 10
    .parameter "content"
    .parameter "p"
    .parameter "width"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/graphics/Paint;",
            "F)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 71
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 72
    .local v2, length:I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .local v3, listString:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .local v4, spaceinglist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Float;>;"
    if-lez v2, :cond_0

    .line 75
    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    .line 76
    .local v6, textWidth:F
    const/4 v5, 0x0

    .local v5, start:I
    const/4 v0, 0x1

    .local v0, end:I
    const/4 v1, 0x0

    .line 77
    .local v1, i:I
    :goto_0
    if-ge v5, v2, :cond_0

    cmpl-float v7, p2, v9

    if-gtz v7, :cond_1

    .line 96
    .end local v0           #end:I
    .end local v1           #i:I
    .end local v5           #start:I
    .end local v6           #textWidth:F
    :cond_0
    :goto_1
    return-object v4

    .line 78
    .restart local v0       #end:I
    .restart local v1       #i:I
    .restart local v5       #start:I
    .restart local v6       #textWidth:F
    :cond_1
    invoke-virtual {p1, p0, v5, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v7

    cmpl-float v7, v7, p2

    if-lez v7, :cond_2

    .line 79
    add-int/lit8 v7, v0, -0x1

    invoke-virtual {p0, v5, v7}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    add-int/lit8 v7, v0, -0x1

    invoke-virtual {p1, p0, v5, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v7

    sub-float v7, p2, v7

    add-int/lit8 v8, v0, -0x1

    sub-int/2addr v8, v5

    add-int/lit8 v8, v8, -0x1

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    add-int/lit8 v5, v0, -0x1

    .line 82
    add-int/lit8 v0, v0, -0x1

    .line 85
    :cond_2
    const/4 v7, 0x7

    if-gt v1, v7, :cond_0

    .line 88
    if-lt v0, v2, :cond_3

    .line 89
    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 93
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static sinkAutoSplit(Ljava/lang/String;Landroid/graphics/Paint;FF)Ljava/util/ArrayList;
    .locals 11
    .parameter "content"
    .parameter "p"
    .parameter "width"
    .parameter "width1"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/graphics/Paint;",
            "FF)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 21
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 23
    .local v2, length:I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .local v3, listString:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .local v4, spaceinglist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Float;>;"
    if-lez v2, :cond_1

    cmpl-float v7, p2, v9

    if-lez v7, :cond_1

    cmpl-float v7, p3, v9

    if-lez v7, :cond_1

    .line 26
    const/4 v5, 0x0

    .local v5, start:I
    const/4 v0, 0x1

    .local v0, end:I
    const/4 v1, 0x0

    .line 27
    .local v1, i:I
    if-eqz v1, :cond_0

    if-ne v1, v10, :cond_2

    .line 28
    :cond_0
    move v6, p3

    .line 32
    .local v6, textWidth:F
    :goto_0
    if-lt v5, v2, :cond_3

    .line 56
    .end local v0           #end:I
    .end local v1           #i:I
    .end local v5           #start:I
    .end local v6           #textWidth:F
    :cond_1
    :goto_1
    return-object v4

    .line 30
    .restart local v0       #end:I
    .restart local v1       #i:I
    .restart local v5       #start:I
    :cond_2
    move v6, p2

    .line 32
    .restart local v6       #textWidth:F
    goto :goto_0

    .line 33
    :cond_3
    if-eqz v1, :cond_4

    if-ne v1, v10, :cond_6

    .line 34
    :cond_4
    move v6, p3

    .line 38
    :goto_2
    invoke-virtual {p1, p0, v5, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v7

    cmpl-float v7, v7, v6

    if-lez v7, :cond_5

    .line 39
    add-int/lit8 v7, v0, -0x1

    invoke-virtual {p0, v5, v7}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    add-int/lit8 v7, v0, -0x1

    invoke-virtual {p1, p0, v5, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v7

    sub-float v7, v6, v7

    add-int/lit8 v8, v0, -0x1

    sub-int/2addr v8, v5

    add-int/lit8 v8, v8, -0x1

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    add-int/lit8 v5, v0, -0x1

    .line 42
    add-int/lit8 v0, v0, -0x1

    .line 43
    add-int/lit8 v1, v1, 0x1

    .line 45
    :cond_5
    const/4 v7, 0x7

    if-gt v1, v7, :cond_1

    .line 48
    if-lt v0, v2, :cond_7

    .line 49
    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 36
    :cond_6
    move v6, p2

    goto :goto_2

    .line 53
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
