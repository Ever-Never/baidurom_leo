.class public final Lcom/baidu/launcher/ui/animation/ObjectAnimator;
.super Lcom/baidu/launcher/ui/animation/ValueAnimator;
.source "ObjectAnimator.java"


# static fields
.field private static final DBG:Z


# instance fields
.field private mProperty:Lcom/baidu/launcher/ui/animation/Property;

.field private mPropertyName:Ljava/lang/String;

.field private mTarget:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/baidu/launcher/ui/animation/ValueAnimator;-><init>()V

    .line 136
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Lcom/baidu/launcher/ui/animation/Property;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/baidu/launcher/ui/animation/Property",
            "<TT;*>;)V"
        }
    .end annotation

    .prologue
    .line 158
    .local p1, target:Ljava/lang/Object;,"TT;"
    .local p2, property:Lcom/baidu/launcher/ui/animation/Property;,"Lcom/baidu/launcher/ui/animation/Property<TT;*>;"
    invoke-direct {p0}, Lcom/baidu/launcher/ui/animation/ValueAnimator;-><init>()V

    .line 159
    iput-object p1, p0, Lcom/baidu/launcher/ui/animation/ObjectAnimator;->mTarget:Ljava/lang/Object;

    .line 160
    invoke-virtual {p0, p2}, Lcom/baidu/launcher/ui/animation/ObjectAnimator;->setProperty(Lcom/baidu/launcher/ui/animation/Property;)V

    .line 161
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .parameter "target"
    .parameter "propertyName"

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/baidu/launcher/ui/animation/ValueAnimator;-><init>()V

    .line 148
    iput-object p1, p0, Lcom/baidu/launcher/ui/animation/ObjectAnimator;->mTarget:Ljava/lang/Object;

    .line 149
    invoke-virtual {p0, p2}, Lcom/baidu/launcher/ui/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method public static varargs ofFloat(Ljava/lang/Object;Lcom/baidu/launcher/ui/animation/Property;[F)Lcom/baidu/launcher/ui/animation/ObjectAnimator;
    .locals 1
    .parameter
    .parameter
    .parameter "values"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/baidu/launcher/ui/animation/Property",
            "<TT;",
            "Ljava/lang/Float;",
            ">;[F)",
            "Lcom/baidu/launcher/ui/animation/ObjectAnimator;"
        }
    .end annotation

    .prologue
    .line 235
    .local p0, target:Ljava/lang/Object;,"TT;"
    .local p1, property:Lcom/baidu/launcher/ui/animation/Property;,"Lcom/baidu/launcher/ui/animation/Property<TT;Ljava/lang/Float;>;"
    new-instance v0, Lcom/baidu/launcher/ui/animation/ObjectAnimator;

    invoke-direct {v0, p0, p1}, Lcom/baidu/launcher/ui/animation/ObjectAnimator;-><init>(Ljava/lang/Object;Lcom/baidu/launcher/ui/animation/Property;)V

    .line 236
    .local v0, anim:Lcom/baidu/launcher/ui/animation/ObjectAnimator;
    invoke-virtual {v0, p2}, Lcom/baidu/launcher/ui/animation/ObjectAnimator;->setFloatValues([F)V

    .line 237
    return-object v0
.end method

.method public static varargs ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/baidu/launcher/ui/animation/ObjectAnimator;
    .locals 1
    .parameter "target"
    .parameter "propertyName"
    .parameter "values"

    .prologue
    .line 216
    new-instance v0, Lcom/baidu/launcher/ui/animation/ObjectAnimator;

    invoke-direct {v0, p0, p1}, Lcom/baidu/launcher/ui/animation/ObjectAnimator;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    .local v0, anim:Lcom/baidu/launcher/ui/animation/ObjectAnimator;
    invoke-virtual {v0, p2}, Lcom/baidu/launcher/ui/animation/ObjectAnimator;->setFloatValues([F)V

    .line 218
    return-object v0
.end method

.method public static varargs ofInt(Ljava/lang/Object;Lcom/baidu/launcher/ui/animation/Property;[I)Lcom/baidu/launcher/ui/animation/ObjectAnimator;
    .locals 1
    .parameter
    .parameter
    .parameter "values"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/baidu/launcher/ui/animation/Property",
            "<TT;",
            "Ljava/lang/Integer;",
            ">;[I)",
            "Lcom/baidu/launcher/ui/animation/ObjectAnimator;"
        }
    .end annotation

    .prologue
    .line 196
    .local p0, target:Ljava/lang/Object;,"TT;"
    .local p1, property:Lcom/baidu/launcher/ui/animation/Property;,"Lcom/baidu/launcher/ui/animation/Property<TT;Ljava/lang/Integer;>;"
    new-instance v0, Lcom/baidu/launcher/ui/animation/ObjectAnimator;

    invoke-direct {v0, p0, p1}, Lcom/baidu/launcher/ui/animation/ObjectAnimator;-><init>(Ljava/lang/Object;Lcom/baidu/launcher/ui/animation/Property;)V

    .line 197
    .local v0, anim:Lcom/baidu/launcher/ui/animation/ObjectAnimator;
    invoke-virtual {v0, p2}, Lcom/baidu/launcher/ui/animation/ObjectAnimator;->setIntValues([I)V

    .line 198
    return-object v0
.end method

.method public static varargs ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Lcom/baidu/launcher/ui/animation/ObjectAnimator;
    .locals 1
    .parameter "target"
    .parameter "propertyName"
    .parameter "values"

    .prologue
    .line 178
    new-instance v0, Lcom/baidu/launcher/ui/animation/ObjectAnimator;

    invoke-direct {v0, p0, p1}, Lcom/baidu/launcher/ui/animation/ObjectAnimator;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    .local v0, anim:Lcom/baidu/launcher/ui/animation/ObjectAnimator;
    invoke-virtual {v0, p2}, Lcom/baidu/launcher/ui/animation/ObjectAnimator;->setIntValues([I)V

    .line 180
    return-object v0
.end method

.method public static varargs ofObject(Ljava/lang/Object;Lcom/baidu/launcher/ui/animation/Property;Lcom/baidu/launcher/ui/animation/TypeEvaluator;[Ljava/lang/Object;)Lcom/baidu/launcher/ui/animation/ObjectAnimator;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/baidu/launcher/ui/animation/Property",
            "<TT;TV;>;",
            "Lcom/baidu/launcher/ui/animation/TypeEvaluator",
            "<TV;>;[TV;)",
            "Lcom/baidu/launcher/ui/animation/ObjectAnimator;"
        }
    .end annotation

    .prologue
    .line 282
    .local p0, target:Ljava/lang/Object;,"TT;"
    .local p1, property:Lcom/baidu/launcher/ui/animation/Property;,"Lcom/baidu/launcher/ui/animation/Property<TT;TV;>;"
    .local p2, evaluator:Lcom/baidu/launcher/ui/animation/TypeEvaluator;,"Lcom/baidu/launcher/ui/animation/TypeEvaluator<TV;>;"
    .local p3, values:[Ljava/lang/Object;,"[TV;"
    new-instance v0, Lcom/baidu/launcher/ui/animation/ObjectAnimator;

    invoke-direct {v0, p0, p1}, Lcom/baidu/launcher/ui/animation/ObjectAnimator;-><init>(Ljava/lang/Object;Lcom/baidu/launcher/ui/animation/Property;)V

    .line 283
    .local v0, anim:Lcom/baidu/launcher/ui/animation/ObjectAnimator;
    invoke-virtual {v0, p3}, Lcom/baidu/launcher/ui/animation/ObjectAnimator;->setObjectValues([Ljava/lang/Object;)V

    .line 284
    invoke-virtual {v0, p2}, Lcom/baidu/launcher/ui/animation/ObjectAnimator;->setEvaluator(Lcom/baidu/launcher/ui/animation/TypeEvaluator;)V

    .line 285
    return-object v0
.end method

.method public static varargs ofObject(Ljava/lang/Object;Ljava/lang/String;Lcom/baidu/launcher/ui/animation/TypeEvaluator;[Ljava/lang/Object;)Lcom/baidu/launcher/ui/animation/ObjectAnimator;
    .locals 1
    .parameter "target"
    .parameter "propertyName"
    .parameter "evaluator"
    .parameter "values"

    .prologue
    .line 259
    new-instance v0, Lcom/baidu/launcher/ui/animation/ObjectAnimator;

    invoke-direct {v0, p0, p1}, Lcom/baidu/launcher/ui/animation/ObjectAnimator;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 260
    .local v0, anim:Lcom/baidu/launcher/ui/animation/ObjectAnimator;
    invoke-virtual {v0, p3}, Lcom/baidu/launcher/ui/animation/ObjectAnimator;->setObjectValues([Ljava/lang/Object;)V

    .line 261
    invoke-virtual {v0, p2}, Lcom/baidu/launcher/ui/animation/ObjectAnimator;->setEvaluator(Lcom/baidu/launcher/ui/animation/TypeEvaluator;)V

    .line 262
    return-object v0
.end method

.method public static varargs ofPropertyValuesHolder(Ljava/lang/Object;[Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;)Lcom/baidu/launcher/ui/animation/ObjectAnimator;
    .locals 1
    .parameter "target"
    .parameter "values"

    .prologue
    .line 307
    new-instance v0, Lcom/baidu/launcher/ui/animation/ObjectAnimator;

    invoke-direct {v0}, Lcom/baidu/launcher/ui/animation/ObjectAnimator;-><init>()V

    .line 308
    .local v0, anim:Lcom/baidu/launcher/ui/animation/ObjectAnimator;
    iput-object p0, v0, Lcom/baidu/launcher/ui/animation/ObjectAnimator;->mTarget:Ljava/lang/Object;

    .line 309
    invoke-virtual {v0, p1}, Lcom/baidu/launcher/ui/animation/ObjectAnimator;->setValues([Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;)V

    .line 310
    return-object v0
.end method


# virtual methods
.method animateValue(F)V
    .locals 4
    .parameter "fraction"

    .prologue
    .line 473
    invoke-super {p0, p1}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->animateValue(F)V

    .line 474
    iget-object v2, p0, Lcom/baidu/launcher/ui/animation/ObjectAnimator;->mValues:[Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;

    array-length v1, v2

    .line 475
    .local v1, numValues:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 476
    iget-object v2, p0, Lcom/baidu/launcher/ui/animation/ObjectAnimator;->mValues:[Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/baidu/launcher/ui/animation/ObjectAnimator;->mTarget:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->setAnimatedValue(Ljava/lang/Object;)V

    .line 475
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 478
    :cond_0
    return-void
.end method

.method public bridge synthetic clone()Lcom/baidu/launcher/ui/animation/Animator;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/animation/ObjectAnimator;->clone()Lcom/baidu/launcher/ui/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/baidu/launcher/ui/animation/ObjectAnimator;
    .locals 1

    .prologue
    .line 482
    invoke-super {p0}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->clone()Lcom/baidu/launcher/ui/animation/ValueAnimator;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/animation/ObjectAnimator;

    .line 483
    .local v0, anim:Lcom/baidu/launcher/ui/animation/ObjectAnimator;
    return-object v0
.end method

.method public bridge synthetic clone()Lcom/baidu/launcher/ui/animation/ValueAnimator;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/animation/ObjectAnimator;->clone()Lcom/baidu/launcher/ui/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/animation/ObjectAnimator;->clone()Lcom/baidu/launcher/ui/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method public getPropertyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/baidu/launcher/ui/animation/ObjectAnimator;->mPropertyName:Ljava/lang/String;

    return-object v0
.end method

.method public getTarget()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/baidu/launcher/ui/animation/ObjectAnimator;->mTarget:Ljava/lang/Object;

    return-object v0
.end method

.method initAnimation()V
    .locals 4

    .prologue
    .line 387
    iget-boolean v2, p0, Lcom/baidu/launcher/ui/animation/ObjectAnimator;->mInitialized:Z

    if-nez v2, :cond_1

    .line 390
    iget-object v2, p0, Lcom/baidu/launcher/ui/animation/ObjectAnimator;->mValues:[Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;

    array-length v1, v2

    .line 391
    .local v1, numValues:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 392
    iget-object v2, p0, Lcom/baidu/launcher/ui/animation/ObjectAnimator;->mValues:[Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/baidu/launcher/ui/animation/ObjectAnimator;->mTarget:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->setupSetterAndGetter(Ljava/lang/Object;)V

    .line 391
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 394
    :cond_0
    invoke-super {p0}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->initAnimation()V

    .line 396
    .end local v0           #i:I
    .end local v1           #numValues:I
    :cond_1
    return-void
.end method

.method public bridge synthetic setDuration(J)Lcom/baidu/launcher/ui/animation/Animator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/baidu/launcher/ui/animation/ObjectAnimator;->setDuration(J)Lcom/baidu/launcher/ui/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method public setDuration(J)Lcom/baidu/launcher/ui/animation/ObjectAnimator;
    .locals 0
    .parameter "duration"

    .prologue
    .line 409
    invoke-super {p0, p1, p2}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->setDuration(J)Lcom/baidu/launcher/ui/animation/ValueAnimator;

    .line 410
    return-object p0
.end method

.method public bridge synthetic setDuration(J)Lcom/baidu/launcher/ui/animation/ValueAnimator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/baidu/launcher/ui/animation/ObjectAnimator;->setDuration(J)Lcom/baidu/launcher/ui/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method public varargs setFloatValues([F)V
    .locals 3
    .parameter "values"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 330
    iget-object v0, p0, Lcom/baidu/launcher/ui/animation/ObjectAnimator;->mValues:[Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/launcher/ui/animation/ObjectAnimator;->mValues:[Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;

    array-length v0, v0

    if-nez v0, :cond_2

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/animation/ObjectAnimator;->mProperty:Lcom/baidu/launcher/ui/animation/Property;

    if-eqz v0, :cond_1

    .line 334
    new-array v0, v1, [Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;

    iget-object v1, p0, Lcom/baidu/launcher/ui/animation/ObjectAnimator;->mProperty:Lcom/baidu/launcher/ui/animation/Property;

    invoke-static {v1, p1}, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->ofFloat(Lcom/baidu/launcher/ui/animation/Property;[F)Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/animation/ObjectAnimator;->setValues([Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;)V

    .line 341
    :goto_0
    return-void

    .line 336
    :cond_1
    new-array v0, v1, [Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;

    iget-object v1, p0, Lcom/baidu/launcher/ui/animation/ObjectAnimator;->mPropertyName:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/animation/ObjectAnimator;->setValues([Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;)V

    goto :goto_0

    .line 339
    :cond_2
    invoke-super {p0, p1}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->setFloatValues([F)V

    goto :goto_0
.end method

.method public varargs setIntValues([I)V
    .locals 3
    .parameter "values"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 315
    iget-object v0, p0, Lcom/baidu/launcher/ui/animation/ObjectAnimator;->mValues:[Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/launcher/ui/animation/ObjectAnimator;->mValues:[Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;

    array-length v0, v0

    if-nez v0, :cond_2

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/animation/ObjectAnimator;->mProperty:Lcom/baidu/launcher/ui/animation/Property;

    if-eqz v0, :cond_1

    .line 319
    new-array v0, v1, [Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;

    iget-object v1, p0, Lcom/baidu/launcher/ui/animation/ObjectAnimator;->mProperty:Lcom/baidu/launcher/ui/animation/Property;

    invoke-static {v1, p1}, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->ofInt(Lcom/baidu/launcher/ui/animation/Property;[I)Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/animation/ObjectAnimator;->setValues([Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;)V

    .line 326
    :goto_0
    return-void

    .line 321
    :cond_1
    new-array v0, v1, [Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;

    iget-object v1, p0, Lcom/baidu/launcher/ui/animation/ObjectAnimator;->mPropertyName:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/animation/ObjectAnimator;->setValues([Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;)V

    goto :goto_0

    .line 324
    :cond_2
    invoke-super {p0, p1}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->setIntValues([I)V

    goto :goto_0
.end method

.method public varargs setObjectValues([Ljava/lang/Object;)V
    .locals 4
    .parameter "values"

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 345
    iget-object v1, p0, Lcom/baidu/launcher/ui/animation/ObjectAnimator;->mValues:[Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/launcher/ui/animation/ObjectAnimator;->mValues:[Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;

    array-length v1, v1

    if-nez v1, :cond_2

    .line 348
    :cond_0
    iget-object v1, p0, Lcom/baidu/launcher/ui/animation/ObjectAnimator;->mProperty:Lcom/baidu/launcher/ui/animation/Property;

    if-eqz v1, :cond_1

    .line 349
    new-array v1, v2, [Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;

    iget-object v2, p0, Lcom/baidu/launcher/ui/animation/ObjectAnimator;->mProperty:Lcom/baidu/launcher/ui/animation/Property;

    check-cast v0, Lcom/baidu/launcher/ui/animation/TypeEvaluator;

    invoke-static {v2, v0, p1}, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->ofObject(Lcom/baidu/launcher/ui/animation/Property;Lcom/baidu/launcher/ui/animation/TypeEvaluator;[Ljava/lang/Object;)Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;

    move-result-object v0

    aput-object v0, v1, v3

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/animation/ObjectAnimator;->setValues([Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;)V

    .line 356
    :goto_0
    return-void

    .line 351
    :cond_1
    new-array v1, v2, [Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;

    iget-object v2, p0, Lcom/baidu/launcher/ui/animation/ObjectAnimator;->mPropertyName:Ljava/lang/String;

    check-cast v0, Lcom/baidu/launcher/ui/animation/TypeEvaluator;

    invoke-static {v2, v0, p1}, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Lcom/baidu/launcher/ui/animation/TypeEvaluator;[Ljava/lang/Object;)Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;

    move-result-object v0

    aput-object v0, v1, v3

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/animation/ObjectAnimator;->setValues([Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;)V

    goto :goto_0

    .line 354
    :cond_2
    invoke-super {p0, p1}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setProperty(Lcom/baidu/launcher/ui/animation/Property;)V
    .locals 5
    .parameter "property"

    .prologue
    const/4 v4, 0x0

    .line 103
    iget-object v2, p0, Lcom/baidu/launcher/ui/animation/ObjectAnimator;->mValues:[Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;

    if-eqz v2, :cond_0

    .line 104
    iget-object v2, p0, Lcom/baidu/launcher/ui/animation/ObjectAnimator;->mValues:[Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;

    aget-object v1, v2, v4

    .line 105
    .local v1, valuesHolder:Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;
    invoke-virtual {v1}, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, oldName:Ljava/lang/String;
    invoke-virtual {v1, p1}, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->setProperty(Lcom/baidu/launcher/ui/animation/Property;)V

    .line 107
    iget-object v2, p0, Lcom/baidu/launcher/ui/animation/ObjectAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v2, p0, Lcom/baidu/launcher/ui/animation/ObjectAnimator;->mValuesMap:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/baidu/launcher/ui/animation/ObjectAnimator;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .end local v0           #oldName:Ljava/lang/String;
    .end local v1           #valuesHolder:Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;
    :cond_0
    iget-object v2, p0, Lcom/baidu/launcher/ui/animation/ObjectAnimator;->mProperty:Lcom/baidu/launcher/ui/animation/Property;

    if-eqz v2, :cond_1

    .line 111
    invoke-virtual {p1}, Lcom/baidu/launcher/ui/animation/Property;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/launcher/ui/animation/ObjectAnimator;->mPropertyName:Ljava/lang/String;

    .line 113
    :cond_1
    iput-object p1, p0, Lcom/baidu/launcher/ui/animation/ObjectAnimator;->mProperty:Lcom/baidu/launcher/ui/animation/Property;

    .line 115
    iput-boolean v4, p0, Lcom/baidu/launcher/ui/animation/ObjectAnimator;->mInitialized:Z

    .line 116
    return-void
.end method

.method public setPropertyName(Ljava/lang/String;)V
    .locals 4
    .parameter "propertyName"

    .prologue
    const/4 v3, 0x0

    .line 81
    iget-object v2, p0, Lcom/baidu/launcher/ui/animation/ObjectAnimator;->mValues:[Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;

    if-eqz v2, :cond_0

    .line 82
    iget-object v2, p0, Lcom/baidu/launcher/ui/animation/ObjectAnimator;->mValues:[Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;

    aget-object v1, v2, v3

    .line 83
    .local v1, valuesHolder:Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;
    invoke-virtual {v1}, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, oldName:Ljava/lang/String;
    invoke-virtual {v1, p1}, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->setPropertyName(Ljava/lang/String;)V

    .line 85
    iget-object v2, p0, Lcom/baidu/launcher/ui/animation/ObjectAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v2, p0, Lcom/baidu/launcher/ui/animation/ObjectAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .end local v0           #oldName:Ljava/lang/String;
    .end local v1           #valuesHolder:Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;
    :cond_0
    iput-object p1, p0, Lcom/baidu/launcher/ui/animation/ObjectAnimator;->mPropertyName:Ljava/lang/String;

    .line 90
    iput-boolean v3, p0, Lcom/baidu/launcher/ui/animation/ObjectAnimator;->mInitialized:Z

    .line 91
    return-void
.end method

.method public setTarget(Ljava/lang/Object;)V
    .locals 3
    .parameter "target"

    .prologue
    .line 430
    iget-object v1, p0, Lcom/baidu/launcher/ui/animation/ObjectAnimator;->mTarget:Ljava/lang/Object;

    if-eq v1, p1, :cond_0

    .line 431
    iget-object v0, p0, Lcom/baidu/launcher/ui/animation/ObjectAnimator;->mTarget:Ljava/lang/Object;

    .line 432
    .local v0, oldTarget:Ljava/lang/Object;
    iput-object p1, p0, Lcom/baidu/launcher/ui/animation/ObjectAnimator;->mTarget:Ljava/lang/Object;

    .line 433
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 439
    .end local v0           #oldTarget:Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 437
    .restart local v0       #oldTarget:Ljava/lang/Object;
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/baidu/launcher/ui/animation/ObjectAnimator;->mInitialized:Z

    goto :goto_0
.end method

.method public setupEndValues()V
    .locals 4

    .prologue
    .line 452
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/animation/ObjectAnimator;->initAnimation()V

    .line 453
    iget-object v2, p0, Lcom/baidu/launcher/ui/animation/ObjectAnimator;->mValues:[Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;

    array-length v1, v2

    .line 454
    .local v1, numValues:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 455
    iget-object v2, p0, Lcom/baidu/launcher/ui/animation/ObjectAnimator;->mValues:[Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/baidu/launcher/ui/animation/ObjectAnimator;->mTarget:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->setupEndValue(Ljava/lang/Object;)V

    .line 454
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 457
    :cond_0
    return-void
.end method

.method public setupStartValues()V
    .locals 4

    .prologue
    .line 443
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/animation/ObjectAnimator;->initAnimation()V

    .line 444
    iget-object v2, p0, Lcom/baidu/launcher/ui/animation/ObjectAnimator;->mValues:[Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;

    array-length v1, v2

    .line 445
    .local v1, numValues:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 446
    iget-object v2, p0, Lcom/baidu/launcher/ui/animation/ObjectAnimator;->mValues:[Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/baidu/launcher/ui/animation/ObjectAnimator;->mTarget:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->setupStartValue(Ljava/lang/Object;)V

    .line 445
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 448
    :cond_0
    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    .line 370
    invoke-super {p0}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->start()V

    .line 371
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 488
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ObjectAnimator@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", target "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/launcher/ui/animation/ObjectAnimator;->mTarget:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 490
    .local v1, returnVal:Ljava/lang/String;
    iget-object v2, p0, Lcom/baidu/launcher/ui/animation/ObjectAnimator;->mValues:[Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;

    if-eqz v2, :cond_0

    .line 491
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/baidu/launcher/ui/animation/ObjectAnimator;->mValues:[Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 492
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/launcher/ui/animation/ObjectAnimator;->mValues:[Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 491
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 495
    .end local v0           #i:I
    :cond_0
    return-object v1
.end method
