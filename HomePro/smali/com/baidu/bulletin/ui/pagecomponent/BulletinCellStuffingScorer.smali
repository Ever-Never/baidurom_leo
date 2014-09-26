.class public Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellStuffingScorer;
.super Ljava/lang/Object;
.source "BulletinCellStuffingScorer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellStuffingScorer$Score;
    }
.end annotation


# static fields
.field public static final MAX_SCORE:I = 0x3e8


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public static score(Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;Lcom/baidu/bulletin/entity/ChannelItem;)Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellStuffingScorer$Score;
    .locals 8
    .parameter "cell"
    .parameter "data"

    .prologue
    const/4 v7, 0x0

    .line 26
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 27
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;->getMeasuredWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v3, v4

    .line 28
    .local v3, w:F
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;->getMeasuredHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v0, v4

    .line 29
    .local v0, h:F
    const-string v4, "BulletinCellStuffingScorer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "w = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", h = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    cmpl-float v4, v3, v7

    if-lez v4, :cond_2

    cmpl-float v4, v0, v7

    if-lez v4, :cond_2

    .line 31
    new-instance v1, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellStuffingScorer$Score;

    invoke-direct {v1}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellStuffingScorer$Score;-><init>()V

    .line 32
    .local v1, score:Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellStuffingScorer$Score;
    invoke-virtual {p1}, Lcom/baidu/bulletin/entity/ChannelItem;->getImgWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1}, Lcom/baidu/bulletin/entity/ChannelItem;->getImgHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v3, v0, v4, v5}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellStuffingScorer;->scoreImg(FFFF)I

    move-result v4

    iput v4, v1, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellStuffingScorer$Score;->imgScore:I

    .line 34
    iget-object v4, p1, Lcom/baidu/bulletin/entity/ChannelItem;->title:Ljava/lang/String;

    if-nez v4, :cond_0

    const/4 v2, 0x0

    .line 35
    .local v2, txtLength:I
    :goto_0
    invoke-static {v3, v0, v2}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellStuffingScorer;->scoreTxt(FFI)I

    move-result v4

    iput v4, v1, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellStuffingScorer$Score;->txtScore:I

    .line 43
    .end local v0           #h:F
    .end local v1           #score:Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellStuffingScorer$Score;
    .end local v2           #txtLength:I
    .end local v3           #w:F
    :goto_1
    return-object v1

    .line 34
    .restart local v0       #h:F
    .restart local v1       #score:Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellStuffingScorer$Score;
    .restart local v3       #w:F
    :cond_0
    iget-object v4, p1, Lcom/baidu/bulletin/entity/ChannelItem;->title:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_0

    .line 40
    .end local v0           #h:F
    .end local v1           #score:Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellStuffingScorer$Score;
    .end local v3           #w:F
    :cond_1
    const-string v4, "BulletinCellStuffingScorer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cell = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", data = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static scoreImg(FFFF)I
    .locals 8
    .parameter "w"
    .parameter "h"
    .parameter "imgW"
    .parameter "imgH"

    .prologue
    const/4 v7, 0x0

    .line 52
    cmpl-float v6, p2, v7

    if-lez v6, :cond_2

    cmpl-float v6, p3, v7

    if-lez v6, :cond_2

    .line 55
    div-float v2, p0, p1

    .line 56
    .local v2, ratio:F
    div-float v0, p2, p3

    .line 57
    .local v0, imgRatio:F
    cmpg-float v6, v2, v0

    if-gez v6, :cond_0

    div-float v3, v2, v0

    .line 60
    .local v3, shapeScoreRatio:F
    :goto_0
    mul-float v4, p0, p1

    .line 61
    .local v4, size:F
    mul-float v1, p2, p3

    .line 62
    .local v1, imgSize:F
    cmpg-float v6, v4, v1

    if-gez v6, :cond_1

    div-float v5, v4, v1

    .line 64
    .local v5, sizeScoreRatio:F
    :goto_1
    const/high16 v6, 0x447a

    mul-float/2addr v6, v3

    mul-float/2addr v6, v5

    float-to-int v6, v6

    .line 66
    .end local v0           #imgRatio:F
    .end local v1           #imgSize:F
    .end local v2           #ratio:F
    .end local v3           #shapeScoreRatio:F
    .end local v4           #size:F
    .end local v5           #sizeScoreRatio:F
    :goto_2
    return v6

    .line 57
    .restart local v0       #imgRatio:F
    .restart local v2       #ratio:F
    :cond_0
    div-float v3, v0, v2

    goto :goto_0

    .line 62
    .restart local v1       #imgSize:F
    .restart local v3       #shapeScoreRatio:F
    .restart local v4       #size:F
    :cond_1
    div-float v5, v1, v4

    goto :goto_1

    .line 66
    .end local v0           #imgRatio:F
    .end local v1           #imgSize:F
    .end local v2           #ratio:F
    .end local v3           #shapeScoreRatio:F
    .end local v4           #size:F
    :cond_2
    const/4 v6, 0x0

    goto :goto_2
.end method

.method private static scoreTxt(FFI)I
    .locals 8
    .parameter "w"
    .parameter "h"
    .parameter "txtLength"

    .prologue
    .line 76
    const/16 v0, 0xf

    .line 77
    .local v0, charW:I
    const/4 v2, 0x3

    .line 79
    .local v2, maxLineNum:I
    mul-int/lit8 v5, p2, 0xf

    int-to-float v4, v5

    .line 80
    .local v4, textW:F
    div-float v1, v4, p0

    .line 81
    .local v1, lineNum:F
    const/high16 v5, 0x447a

    const/high16 v6, 0x3f80

    const/high16 v7, 0x4040

    div-float v7, v1, v7

    sub-float/2addr v6, v7

    mul-float v3, v5, v6

    .line 82
    .local v3, score:F
    const/4 v5, 0x0

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    float-to-int v5, v5

    return v5
.end method
