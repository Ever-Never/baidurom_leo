.class public Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;
.super Landroid/widget/TextView;
.source "MyFirstWordSinkTextView.java"


# instance fields
.field protected charLeft:I

.field protected charLocation:I

.field protected charRight:I

.field protected charline:I

.field protected charlineNum:I

.field protected firstLineChars:I

.field protected firstTextLines:I

.field protected height:F

.field protected lineChars:I

.field protected lineCounts:I

.field protected lineHeight:I

.field protected lineSpace:I

.field protected lineWidth:I

.field protected max:I

.field protected maxLines:I

.field private mcontext:Landroid/content/Context;

.field protected paddingBottom:I

.field protected paddingLeft:I

.field protected paddingRight:I

.field protected paddingTop:I

.field protected paint:Landroid/graphics/Paint;

.field protected secondLineChars:I

.field protected singleCharWidth:I

.field protected spaceing:I

.field private spaceingList1:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private spaceingList2:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field protected text:Ljava/lang/String;

.field private textColor:I

.field private textShowWidth:F

.field protected textSize:I

.field protected textchars:[C

.field protected topHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2
    .parameter "context"
    .parameter "width"
    .parameter "height"

    .prologue
    const/16 v1, 0x1e

    const/16 v0, 0x14

    .line 67
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 29
    iput v0, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->paddingLeft:I

    .line 30
    iput v0, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->paddingRight:I

    .line 31
    iput v0, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->paddingTop:I

    .line 32
    iput v0, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->paddingBottom:I

    .line 33
    const/16 v0, 0x140

    iput v0, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->lineWidth:I

    .line 34
    iput v1, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->lineHeight:I

    .line 36
    iput v1, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->textSize:I

    .line 37
    iput v1, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->lineSpace:I

    .line 38
    const/4 v0, 0x5

    iput v0, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->spaceing:I

    .line 39
    const/4 v0, 0x2

    iput v0, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->firstTextLines:I

    .line 46
    const/4 v0, 0x1

    iput v0, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->charLocation:I

    .line 53
    const/4 v0, 0x7

    iput v0, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->max:I

    .line 56
    const-string v0, " "

    iput-object v0, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->text:Ljava/lang/String;

    .line 68
    invoke-direct {p0}, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->init()V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const/16 v8, 0x14

    iput v8, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->paddingLeft:I

    .line 30
    const/16 v8, 0x14

    iput v8, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->paddingRight:I

    .line 31
    const/16 v8, 0x14

    iput v8, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->paddingTop:I

    .line 32
    const/16 v8, 0x14

    iput v8, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->paddingBottom:I

    .line 33
    const/16 v8, 0x140

    iput v8, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->lineWidth:I

    .line 34
    const/16 v8, 0x1e

    iput v8, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->lineHeight:I

    .line 36
    const/16 v8, 0x1e

    iput v8, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->textSize:I

    .line 37
    const/16 v8, 0x1e

    iput v8, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->lineSpace:I

    .line 38
    const/4 v8, 0x5

    iput v8, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->spaceing:I

    .line 39
    const/4 v8, 0x2

    iput v8, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->firstTextLines:I

    .line 46
    const/4 v8, 0x1

    iput v8, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->charLocation:I

    .line 53
    const/4 v8, 0x7

    iput v8, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->max:I

    .line 56
    const-string v8, " "

    iput-object v8, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->text:Ljava/lang/String;

    .line 74
    iput-object p1, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->mcontext:Landroid/content/Context;

    .line 75
    sget-object v8, Lcom/baidu/home2/R$styleable;->MyFirstWordSinkTextView:[I

    invoke-virtual {p1, p2, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 78
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 79
    .local v5, mText:Ljava/lang/String;
    const/4 v8, 0x2

    const/4 v9, 0x2

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    .line 80
    .local v2, mFirstTextLines:I
    const/4 v8, 0x3

    const/4 v9, 0x1

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    .line 81
    .local v1, mCharLocation:I
    const/4 v8, 0x4

    const/16 v9, 0x14

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    .line 82
    .local v6, mTextSize:I
    const/4 v8, 0x5

    const/16 v9, 0xa

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    .line 83
    .local v3, mLineSpace:I
    const/4 v8, 0x6

    const/4 v9, 0x5

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    .line 84
    .local v4, mSpaceing:I
    const/4 v8, 0x1

    const/4 v9, -0x1

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    .line 86
    .local v7, textColor:I
    const-string v8, "hui"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "--textColor-22---"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->setText(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0, v2}, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->setFirstTextLines(I)V

    .line 89
    invoke-virtual {p0, v1}, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->setCharLocation(I)V

    .line 90
    invoke-virtual {p0, v6}, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->setTextSize(I)V

    .line 91
    invoke-virtual {p0, v3}, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->setLineSpace(I)V

    .line 92
    invoke-virtual {p0, v4}, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->setSpaceing(I)V

    .line 93
    invoke-virtual {p0, v7}, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->setTextColor(I)V

    .line 94
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 97
    invoke-direct {p0}, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->init()V

    .line 99
    return-void
.end method

.method private autoSplit(Ljava/lang/String;Landroid/graphics/Paint;FF)Ljava/util/ArrayList;
    .locals 9
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
    const/4 v8, 0x1

    .line 321
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 324
    .local v2, length:I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 325
    .local v3, spaceinglist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Float;>;"
    if-lez v2, :cond_3

    .line 326
    const/4 v4, 0x0

    .local v4, start:I
    const/4 v0, 0x1

    .local v0, end:I
    const/4 v1, 0x0

    .line 327
    .local v1, i:I
    if-eqz v1, :cond_0

    if-ne v1, v8, :cond_4

    .line 328
    :cond_0
    move v5, p4

    .line 332
    .local v5, textWidth:F
    :goto_0
    if-ge v4, v2, :cond_3

    .line 333
    if-eqz v1, :cond_1

    if-ne v1, v8, :cond_5

    .line 334
    :cond_1
    move v5, p4

    .line 338
    :goto_1
    invoke-virtual {p2, p1, v4, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v6

    cmpl-float v6, v6, v5

    if-lez v6, :cond_2

    .line 340
    add-int/lit8 v6, v0, -0x1

    invoke-virtual {p2, p1, v4, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v6

    sub-float v6, v5, v6

    add-int/lit8 v7, v0, -0x1

    sub-int/2addr v7, v4

    add-int/lit8 v7, v7, -0x1

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    add-int/lit8 v4, v0, -0x1

    .line 342
    add-int/lit8 v0, v0, -0x1

    .line 343
    add-int/lit8 v1, v1, 0x1

    .line 345
    :cond_2
    if-ne v0, v2, :cond_6

    .line 347
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    .end local v0           #end:I
    .end local v1           #i:I
    .end local v4           #start:I
    .end local v5           #textWidth:F
    :cond_3
    return-object v3

    .line 330
    .restart local v0       #end:I
    .restart local v1       #i:I
    .restart local v4       #start:I
    :cond_4
    move v5, p3

    .restart local v5       #textWidth:F
    goto :goto_0

    .line 336
    :cond_5
    move v5, p3

    goto :goto_1

    .line 350
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private autoSplit2(Ljava/lang/String;Landroid/graphics/Paint;F)Ljava/util/ArrayList;
    .locals 8
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
    .line 423
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 425
    .local v2, length:I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 426
    .local v3, spaceinglist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Float;>;"
    if-lez v2, :cond_1

    .line 427
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    .line 428
    .local v5, textWidth:F
    const/4 v4, 0x0

    .local v4, start:I
    const/4 v0, 0x1

    .local v0, end:I
    const/4 v1, 0x0

    .line 429
    .local v1, i:I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 430
    invoke-virtual {p2, p1, v4, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v6

    cmpl-float v6, v6, p3

    if-lez v6, :cond_0

    .line 432
    add-int/lit8 v6, v0, -0x1

    invoke-virtual {p2, p1, v4, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v6

    sub-float v6, p3, v6

    add-int/lit8 v7, v0, -0x1

    sub-int/2addr v7, v4

    add-int/lit8 v7, v7, -0x1

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    add-int/lit8 v4, v0, -0x1

    .line 434
    add-int/lit8 v0, v0, -0x1

    .line 437
    :cond_0
    if-ne v0, v2, :cond_2

    .line 439
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    .end local v0           #end:I
    .end local v1           #i:I
    .end local v4           #start:I
    .end local v5           #textWidth:F
    :cond_1
    return-object v3

    .line 442
    .restart local v0       #end:I
    .restart local v1       #i:I
    .restart local v4       #start:I
    .restart local v5       #textWidth:F
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private checkFirstText(Ljava/lang/String;)Z
    .locals 6
    .parameter "content"

    .prologue
    .line 363
    const/4 v1, 0x0

    .line 365
    .local v1, flag:Z
    :try_start_0
    invoke-static {p1}, Lcom/inveno/flyshare/utils/StringTools;->removeHtmlTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 367
    invoke-static {p1}, Lcom/inveno/flyshare/utils/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 368
    const-string v4, "[\u4e00-\u9fa5]+$"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 369
    .local v3, p:Ljava/util/regex/Pattern;
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 370
    .local v2, m:Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 375
    .end local v2           #m:Ljava/util/regex/Matcher;
    .end local v3           #p:Ljava/util/regex/Pattern;
    :cond_0
    :goto_0
    return v1

    .line 372
    :catch_0
    move-exception v0

    .line 373
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 102
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->text:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    :goto_0
    return-void

    .line 106
    :cond_0
    invoke-virtual {p0}, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->paint:Landroid/graphics/Paint;

    .line 107
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->textColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 108
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 109
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->textSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 110
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto :goto_0
.end method


# virtual methods
.method public getFirstTextSize()I
    .locals 3

    .prologue
    .line 191
    iget v0, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->textSize:I

    iget v1, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->firstTextLines:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->firstTextLines:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->lineSpace:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public getFirstTextWidthOrHeight()I
    .locals 3

    .prologue
    .line 183
    iget v0, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->textSize:I

    iget v1, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->firstTextLines:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->firstTextLines:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->lineSpace:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->text:Ljava/lang/String;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .parameter "canvas"

    .prologue
    const/4 v5, 0x3

    const/4 v3, 0x1

    .line 249
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 250
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->text:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->text:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->checkFirstText(Ljava/lang/String;)Z

    move-result v11

    .line 255
    .local v11, values:Z
    if-nez v11, :cond_2

    .line 256
    invoke-virtual {p0, p1}, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->showText(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 258
    :cond_2
    const/4 v10, 0x0

    .line 259
    .local v10, lineCount:I
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->paint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->textSize:I

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 261
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->text:Ljava/lang/String;

    iget-object v4, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->text:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 262
    .local v1, textCharArray:[C
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->spaceingList1:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v5, :cond_3

    iget v0, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->max:I

    if-gt v0, v5, :cond_4

    .line 263
    :cond_3
    invoke-virtual {p0, p1}, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->showText(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 265
    :cond_4
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->getFirstTextSize()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 266
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->text:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget v4, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->paddingLeft:I

    int-to-float v4, v4

    iget v5, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->paddingTop:I

    invoke-virtual {p0}, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->getFirstTextWidthOrHeight()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->lineSpace:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 267
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->paint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->textSize:I

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 269
    const/4 v9, 0x0

    .line 270
    .local v9, drawedWidth:F
    const/4 v8, 0x0

    .line 272
    .local v8, drawWidth:F
    if-eqz v10, :cond_5

    if-ne v10, v3, :cond_8

    .line 273
    :cond_5
    invoke-virtual {p0}, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->getFirstTextWidthOrHeight()I

    move-result v0

    int-to-float v9, v0

    .line 274
    invoke-virtual {p0}, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->getFirstTextWidthOrHeight()I

    move-result v0

    int-to-float v8, v0

    .line 279
    :goto_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    array-length v0, v1

    if-ge v2, v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v7

    .line 283
    .local v7, charWidth:F
    iget v0, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->textShowWidth:F

    sub-float/2addr v0, v8

    cmpg-float v0, v0, v7

    if-gez v0, :cond_7

    .line 284
    add-int/lit8 v10, v10, 0x1

    .line 285
    const/4 v9, 0x0

    .line 286
    const/4 v8, 0x0

    .line 287
    if-eqz v10, :cond_6

    if-ne v10, v3, :cond_9

    .line 288
    :cond_6
    invoke-virtual {p0}, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->getFirstTextWidthOrHeight()I

    move-result v0

    int-to-float v9, v0

    .line 289
    invoke-virtual {p0}, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->getFirstTextWidthOrHeight()I

    move-result v0

    int-to-float v8, v0

    .line 295
    :cond_7
    :goto_3
    iget v0, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->max:I

    add-int/lit8 v0, v0, -0x1

    if-ne v10, v0, :cond_a

    iget-object v0, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->mcontext:Landroid/content/Context;

    const/high16 v4, 0x42a0

    invoke-static {v0, v4}, Lcom/inveno/newpiflow/tools/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v9, v0

    if-ltz v0, :cond_a

    .line 296
    const-string v0, "..."

    iget v3, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->paddingLeft:I

    int-to-float v3, v3

    add-float/2addr v3, v9

    iget v4, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->paddingTop:I

    add-int/lit8 v5, v10, 0x1

    iget v6, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->textSize:I

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    iget v5, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->lineSpace:I

    mul-int/2addr v5, v10

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 276
    .end local v2           #i:I
    .end local v7           #charWidth:F
    :cond_8
    const/4 v9, 0x0

    .line 277
    const/4 v8, 0x0

    goto :goto_1

    .line 291
    .restart local v2       #i:I
    .restart local v7       #charWidth:F
    :cond_9
    const/4 v9, 0x0

    .line 292
    const/4 v8, 0x0

    goto :goto_3

    .line 300
    :cond_a
    iget v0, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->paddingLeft:I

    int-to-float v0, v0

    add-float v4, v0, v9

    iget v0, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->paddingTop:I

    add-int/lit8 v5, v10, 0x1

    iget v6, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->textSize:I

    mul-int/2addr v5, v6

    add-int/2addr v0, v5

    iget v5, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->lineSpace:I

    mul-int/2addr v5, v10

    add-int/2addr v0, v5

    int-to-float v5, v0

    iget-object v6, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 302
    add-float/2addr v8, v7

    .line 303
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->spaceingList2:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    add-float/2addr v0, v7

    add-float/2addr v9, v0

    .line 279
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 11
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v10, 0x3

    const/4 v6, 0x0

    .line 198
    invoke-direct {p0}, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->init()V

    .line 199
    iget-object v5, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->text:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 201
    invoke-virtual {p0, v6, v6}, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->setMeasuredDimension(II)V

    .line 244
    :goto_0
    return-void

    .line 204
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    iget v6, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->paddingLeft:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->paddingRight:I

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->lineWidth:I

    .line 205
    iget v5, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->lineWidth:I

    int-to-float v5, v5

    iput v5, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->textShowWidth:F

    .line 206
    const/4 v0, -0x1

    .line 207
    .local v0, maxLines:I
    iget-object v5, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->text:Ljava/lang/String;

    iget-object v6, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->paint:Landroid/graphics/Paint;

    iget v7, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->lineWidth:I

    int-to-float v7, v7

    invoke-direct {p0, v5, v6, v7}, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->autoSplit2(Ljava/lang/String;Landroid/graphics/Paint;F)Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->spaceingList1:Ljava/util/ArrayList;

    .line 208
    iget-object v5, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->text:Ljava/lang/String;

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->text:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->paint:Landroid/graphics/Paint;

    iget v7, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->lineWidth:I

    int-to-float v7, v7

    iget v8, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->lineWidth:I

    invoke-virtual {p0}, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->getFirstTextWidthOrHeight()I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->autoSplit(Ljava/lang/String;Landroid/graphics/Paint;FF)Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->spaceingList2:Ljava/util/ArrayList;

    .line 209
    iget-object v5, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->spaceingList1:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget v6, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->max:I

    if-ge v5, v6, :cond_1

    iget-object v5, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->spaceingList2:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget v6, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->max:I

    if-lt v5, v6, :cond_4

    .line 210
    :cond_1
    iget v5, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->max:I

    iput v5, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->lineCounts:I

    .line 217
    :cond_2
    :goto_1
    if-lez v0, :cond_6

    iget v5, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->lineCounts:I

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 218
    :goto_2
    iget v5, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->textSize:I

    iput v5, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->lineHeight:I

    .line 219
    const/4 v1, 0x0

    .line 220
    .local v1, measuredHeight:I
    if-lez v0, :cond_3

    .line 222
    iget v5, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->paddingTop:I

    iget v6, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->paddingBottom:I

    add-int/2addr v5, v6

    add-int/2addr v1, v5

    .line 223
    add-int/lit8 v5, v0, -0x1

    iget v6, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->lineSpace:I

    mul-int/2addr v5, v6

    add-int/2addr v1, v5

    .line 224
    iget v5, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->lineHeight:I

    mul-int/2addr v5, v0

    add-int/2addr v1, v5

    .line 226
    :cond_3
    move v2, v1

    .line 227
    .local v2, result:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 228
    .local v3, specMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 229
    .local v4, specSize:I
    sparse-switch v3, :sswitch_data_0

    .line 243
    :goto_3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    invoke-virtual {p0, v5, v2}, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->setMeasuredDimension(II)V

    goto/16 :goto_0

    .line 211
    .end local v1           #measuredHeight:I
    .end local v2           #result:I
    .end local v3           #specMode:I
    .end local v4           #specSize:I
    :cond_4
    iget-object v5, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->spaceingList1:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v10, :cond_5

    .line 213
    iget-object v5, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->spaceingList2:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    iput v5, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->lineCounts:I

    goto :goto_1

    .line 214
    :cond_5
    iget-object v5, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->spaceingList1:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gt v5, v10, :cond_2

    .line 215
    iget-object v5, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->spaceingList1:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    iput v5, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->lineCounts:I

    goto :goto_1

    .line 217
    :cond_6
    iget v0, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->lineCounts:I

    goto :goto_2

    .line 231
    .restart local v1       #measuredHeight:I
    .restart local v2       #result:I
    .restart local v3       #specMode:I
    .restart local v4       #specSize:I
    :sswitch_0
    move v2, v1

    .line 232
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-----1----"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 235
    :sswitch_1
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 236
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-----2----"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 239
    :sswitch_2
    move v2, v4

    .line 240
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-----3----"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 229
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method public setCharLocation(I)V
    .locals 0
    .parameter "charLocation"

    .prologue
    .line 171
    iput p1, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->charLocation:I

    .line 172
    return-void
.end method

.method public setFirstTextLines(I)V
    .locals 0
    .parameter "firstTextLines"

    .prologue
    .line 150
    iput p1, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->firstTextLines:I

    .line 151
    return-void
.end method

.method public setHeight(F)V
    .locals 0
    .parameter "height"

    .prologue
    .line 175
    iput p1, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->height:F

    .line 176
    return-void
.end method

.method public setLineSpace(I)V
    .locals 2
    .parameter "lineSpace"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->mcontext:Landroid/content/Context;

    int-to-float v1, p1

    invoke-static {v0, v1}, Lcom/inveno/newpiflow/tools/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->lineSpace:I

    .line 135
    return-void
.end method

.method public setMax(I)V
    .locals 0
    .parameter "max"

    .prologue
    .line 118
    iput p1, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->max:I

    .line 119
    return-void
.end method

.method public setSpaceing(I)V
    .locals 0
    .parameter "spaceing"

    .prologue
    .line 141
    iput p1, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->spaceing:I

    .line 142
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 159
    iput-object p1, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->text:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .parameter "textColor"

    .prologue
    .line 114
    iput p1, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->textColor:I

    .line 115
    return-void
.end method

.method public setTextSize(I)V
    .locals 2
    .parameter "textSize"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->mcontext:Landroid/content/Context;

    int-to-float v1, p1

    invoke-static {v0, v1}, Lcom/inveno/newpiflow/tools/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->textSize:I

    .line 126
    return-void
.end method

.method public showText(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    const/4 v3, 0x1

    .line 379
    const/4 v10, 0x0

    .line 380
    .local v10, lineCount:I
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 383
    .local v1, textCharArray:[C
    const/4 v9, 0x0

    .line 384
    .local v9, drawedWidth:F
    const/4 v8, 0x0

    .line 386
    .local v8, drawWidth:F
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v0, v1

    if-ge v2, v0, :cond_2

    .line 387
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v7

    .line 388
    .local v7, charWidth:F
    aget-char v0, v1, v2

    const/16 v4, 0xa

    if-ne v0, v4, :cond_0

    .line 389
    add-int/lit8 v10, v10, 0x1

    .line 390
    const/4 v9, 0x0

    .line 391
    const/4 v8, 0x0

    .line 386
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 394
    :cond_0
    iget v0, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->textShowWidth:F

    sub-float/2addr v0, v8

    cmpg-float v0, v0, v7

    if-gez v0, :cond_1

    .line 395
    add-int/lit8 v10, v10, 0x1

    .line 396
    const/4 v9, 0x0

    .line 397
    const/4 v8, 0x0

    .line 399
    :cond_1
    iget v0, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->max:I

    add-int/lit8 v0, v0, -0x1

    if-ne v10, v0, :cond_3

    iget-object v0, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->mcontext:Landroid/content/Context;

    const/high16 v4, 0x42a0

    invoke-static {v0, v4}, Lcom/inveno/newpiflow/tools/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v9, v0

    if-ltz v0, :cond_3

    .line 400
    const-string v0, "..."

    iget v3, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->paddingLeft:I

    int-to-float v3, v3

    add-float/2addr v3, v9

    iget v4, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->paddingTop:I

    add-int/lit8 v5, v10, 0x1

    iget v6, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->textSize:I

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    iget v5, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->lineSpace:I

    mul-int/2addr v5, v10

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 409
    .end local v7           #charWidth:F
    :cond_2
    return-void

    .line 404
    .restart local v7       #charWidth:F
    :cond_3
    iget v0, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->paddingLeft:I

    int-to-float v0, v0

    add-float v4, v0, v9

    iget v0, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->paddingTop:I

    add-int/lit8 v5, v10, 0x1

    iget v6, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->textSize:I

    mul-int/2addr v5, v6

    add-int/2addr v0, v5

    iget v5, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->lineSpace:I

    mul-int/2addr v5, v10

    add-int/2addr v0, v5

    int-to-float v5, v0

    iget-object v6, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 406
    add-float/2addr v8, v7

    .line 407
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/MyFirstWordSinkTextView;->spaceingList1:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    add-float/2addr v0, v7

    add-float/2addr v9, v0

    goto :goto_1
.end method
