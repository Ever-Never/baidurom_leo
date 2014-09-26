.class public Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;
.super Ljava/lang/Object;
.source "PropertyValuesHolder.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$1;,
        Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$FloatPropertyValuesHolder;,
        Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$IntPropertyValuesHolder;
    }
.end annotation


# static fields
.field private static DOUBLE_VARIANTS:[Ljava/lang/Class;

.field private static FLOAT_VARIANTS:[Ljava/lang/Class;

.field private static INTEGER_VARIANTS:[Ljava/lang/Class;

.field private static final sFloatEvaluator:Lcom/baidu/launcher/ui/animation/TypeEvaluator;

.field private static final sGetterPropertyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sIntEvaluator:Lcom/baidu/launcher/ui/animation/TypeEvaluator;

.field private static final sSetterPropertyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mAnimatedValue:Ljava/lang/Object;

.field private mEvaluator:Lcom/baidu/launcher/ui/animation/TypeEvaluator;

.field private mGetter:Ljava/lang/reflect/Method;

.field mKeyframeSet:Lcom/baidu/launcher/ui/animation/KeyframeSet;

.field protected mProperty:Lcom/baidu/launcher/ui/animation/Property;

.field final mPropertyMapLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field mPropertyName:Ljava/lang/String;

.field mSetter:Ljava/lang/reflect/Method;

.field final mTmpValueArray:[Ljava/lang/Object;

.field mValueType:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 78
    new-instance v0, Lcom/baidu/launcher/ui/animation/IntEvaluator;

    invoke-direct {v0}, Lcom/baidu/launcher/ui/animation/IntEvaluator;-><init>()V

    sput-object v0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->sIntEvaluator:Lcom/baidu/launcher/ui/animation/TypeEvaluator;

    .line 79
    new-instance v0, Lcom/baidu/launcher/ui/animation/FloatEvaluator;

    invoke-direct {v0}, Lcom/baidu/launcher/ui/animation/FloatEvaluator;-><init>()V

    sput-object v0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->sFloatEvaluator:Lcom/baidu/launcher/ui/animation/TypeEvaluator;

    .line 88
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/Float;

    aput-object v1, v0, v4

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v5

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v6

    const-class v1, Ljava/lang/Double;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    sput-object v0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->FLOAT_VARIANTS:[Ljava/lang/Class;

    .line 90
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/Integer;

    aput-object v1, v0, v4

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v5

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v6

    const-class v1, Ljava/lang/Float;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-class v2, Ljava/lang/Double;

    aput-object v2, v0, v1

    sput-object v0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->INTEGER_VARIANTS:[Ljava/lang/Class;

    .line 92
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/Double;

    aput-object v1, v0, v4

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v5

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v6

    const-class v1, Ljava/lang/Float;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    sput-object v0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->DOUBLE_VARIANTS:[Ljava/lang/Class;

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->sSetterPropertyMap:Ljava/util/HashMap;

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->sGetterPropertyMap:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Lcom/baidu/launcher/ui/animation/Property;)V
    .locals 1
    .parameter "property"

    .prologue
    const/4 v0, 0x0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object v0, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    .line 63
    iput-object v0, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    .line 74
    iput-object v0, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->mKeyframeSet:Lcom/baidu/launcher/ui/animation/KeyframeSet;

    .line 105
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->mPropertyMapLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 108
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->mTmpValueArray:[Ljava/lang/Object;

    .line 138
    iput-object p1, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->mProperty:Lcom/baidu/launcher/ui/animation/Property;

    .line 139
    if-eqz p1, :cond_0

    .line 140
    invoke-virtual {p1}, Lcom/baidu/launcher/ui/animation/Property;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    .line 142
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/launcher/ui/animation/Property;Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;-><init>(Lcom/baidu/launcher/ui/animation/Property;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "propertyName"

    .prologue
    const/4 v0, 0x0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object v0, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    .line 63
    iput-object v0, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    .line 74
    iput-object v0, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->mKeyframeSet:Lcom/baidu/launcher/ui/animation/KeyframeSet;

    .line 105
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->mPropertyMapLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 108
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->mTmpValueArray:[Ljava/lang/Object;

    .line 130
    iput-object p1, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    .line 131
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Ljava/lang/Object;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 34
    invoke-static {p0, p1, p2}, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->nCallIntMethod(Ljava/lang/Object;II)V

    return-void
.end method

.method static synthetic access$300(Ljava/lang/Class;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-static {p0, p1}, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->nGetIntMethod(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Ljava/lang/Object;IF)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 34
    invoke-static {p0, p1, p2}, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->nCallFloatMethod(Ljava/lang/Object;IF)V

    return-void
.end method

.method static synthetic access$500(Ljava/lang/Class;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-static {p0, p1}, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->nGetFloatMethod(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static getMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "prefix"
    .parameter "propertyName"

    .prologue
    .line 723
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 729
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 727
    .restart local p0
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    .line 728
    .local v0, firstLetter:C
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 729
    .local v1, theRest:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private getPropertyFunction(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 13
    .parameter "targetClass"
    .parameter "prefix"
    .parameter "valueType"

    .prologue
    .line 379
    const/4 v6, 0x0

    .line 380
    .local v6, returnVal:Ljava/lang/reflect/Method;
    iget-object v10, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-static {p2, v10}, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->getMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 381
    .local v5, methodName:Ljava/lang/String;
    const/4 v0, 0x0

    .line 382
    .local v0, args:[Ljava/lang/Class;
    if-nez p3, :cond_0

    .line 384
    :try_start_0
    invoke-virtual {p1, v5, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    :goto_0
    move-object v7, v6

    .line 419
    .end local v6           #returnVal:Ljava/lang/reflect/Method;
    .local v7, returnVal:Ljava/lang/reflect/Method;
    :goto_1
    return-object v7

    .line 385
    .end local v7           #returnVal:Ljava/lang/reflect/Method;
    .restart local v6       #returnVal:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    .line 386
    .local v2, e:Ljava/lang/NoSuchMethodException;
    const-string v10, "PropertyValuesHolder"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Couldn\'t find no-arg method for property "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v2}, Lcom/baidu/launcher/utils/LogEx;->debugErro(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 390
    .end local v2           #e:Ljava/lang/NoSuchMethodException;
    :cond_0
    const/4 v10, 0x1

    new-array v0, v10, [Ljava/lang/Class;

    .line 392
    iget-object v10, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    const-class v11, Ljava/lang/Float;

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 393
    sget-object v9, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->FLOAT_VARIANTS:[Ljava/lang/Class;

    .line 402
    .local v9, typeVariants:[Ljava/lang/Class;
    :goto_2
    move-object v1, v9

    .local v1, arr$:[Ljava/lang/Class;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_3
    if-ge v3, v4, :cond_4

    aget-object v8, v1, v3

    .line 403
    .local v8, typeVariant:Ljava/lang/Class;
    const/4 v10, 0x0

    aput-object v8, v0, v10

    .line 405
    :try_start_1
    invoke-virtual {p1, v5, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 407
    iput-object v8, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v7, v6

    .line 408
    .end local v6           #returnVal:Ljava/lang/reflect/Method;
    .restart local v7       #returnVal:Ljava/lang/reflect/Method;
    goto :goto_1

    .line 394
    .end local v1           #arr$:[Ljava/lang/Class;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v7           #returnVal:Ljava/lang/reflect/Method;
    .end local v8           #typeVariant:Ljava/lang/Class;
    .end local v9           #typeVariants:[Ljava/lang/Class;
    .restart local v6       #returnVal:Ljava/lang/reflect/Method;
    :cond_1
    iget-object v10, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    const-class v11, Ljava/lang/Integer;

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 395
    sget-object v9, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->INTEGER_VARIANTS:[Ljava/lang/Class;

    .restart local v9       #typeVariants:[Ljava/lang/Class;
    goto :goto_2

    .line 396
    .end local v9           #typeVariants:[Ljava/lang/Class;
    :cond_2
    iget-object v10, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    const-class v11, Ljava/lang/Double;

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 397
    sget-object v9, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->DOUBLE_VARIANTS:[Ljava/lang/Class;

    .restart local v9       #typeVariants:[Ljava/lang/Class;
    goto :goto_2

    .line 399
    .end local v9           #typeVariants:[Ljava/lang/Class;
    :cond_3
    const/4 v10, 0x1

    new-array v9, v10, [Ljava/lang/Class;

    .line 400
    .restart local v9       #typeVariants:[Ljava/lang/Class;
    const/4 v10, 0x0

    iget-object v11, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    aput-object v11, v9, v10

    goto :goto_2

    .line 409
    .restart local v1       #arr$:[Ljava/lang/Class;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    .restart local v8       #typeVariant:Ljava/lang/Class;
    :catch_1
    move-exception v10

    .line 402
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 414
    .end local v8           #typeVariant:Ljava/lang/Class;
    :cond_4
    const-string v10, "PropertyValuesHolder"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Couldn\'t find setter/getter for property "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " with value type "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static native nCallFloatMethod(Ljava/lang/Object;IF)V
.end method

.method private static native nCallIntMethod(Ljava/lang/Object;II)V
.end method

.method private static nGetFloatMethod(Ljava/lang/Class;Ljava/lang/String;)I
    .locals 1
    .parameter "targetClass"
    .parameter "methodName"

    .prologue
    .line 1009
    const/4 v0, 0x0

    return v0
.end method

.method private static nGetIntMethod(Ljava/lang/Class;Ljava/lang/String;)I
    .locals 1
    .parameter "targetClass"
    .parameter "methodName"

    .prologue
    .line 1006
    const/4 v0, 0x0

    return v0
.end method

.method public static varargs ofFloat(Lcom/baidu/launcher/ui/animation/Property;[F)Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;
    .locals 1
    .parameter
    .parameter "values"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/launcher/ui/animation/Property",
            "<*",
            "Ljava/lang/Float;",
            ">;[F)",
            "Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;"
        }
    .end annotation

    .prologue
    .line 185
    .local p0, property:Lcom/baidu/launcher/ui/animation/Property;,"Lcom/baidu/launcher/ui/animation/Property<*Ljava/lang/Float;>;"
    new-instance v0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$FloatPropertyValuesHolder;

    invoke-direct {v0, p0, p1}, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$FloatPropertyValuesHolder;-><init>(Lcom/baidu/launcher/ui/animation/Property;[F)V

    return-object v0
.end method

.method public static varargs ofFloat(Ljava/lang/String;[F)Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;
    .locals 1
    .parameter "propertyName"
    .parameter "values"

    .prologue
    .line 174
    new-instance v0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$FloatPropertyValuesHolder;

    invoke-direct {v0, p0, p1}, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$FloatPropertyValuesHolder;-><init>(Ljava/lang/String;[F)V

    return-object v0
.end method

.method public static varargs ofInt(Lcom/baidu/launcher/ui/animation/Property;[I)Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;
    .locals 1
    .parameter
    .parameter "values"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/launcher/ui/animation/Property",
            "<*",
            "Ljava/lang/Integer;",
            ">;[I)",
            "Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;"
        }
    .end annotation

    .prologue
    .line 163
    .local p0, property:Lcom/baidu/launcher/ui/animation/Property;,"Lcom/baidu/launcher/ui/animation/Property<*Ljava/lang/Integer;>;"
    new-instance v0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$IntPropertyValuesHolder;

    invoke-direct {v0, p0, p1}, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$IntPropertyValuesHolder;-><init>(Lcom/baidu/launcher/ui/animation/Property;[I)V

    return-object v0
.end method

.method public static varargs ofInt(Ljava/lang/String;[I)Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;
    .locals 1
    .parameter "propertyName"
    .parameter "values"

    .prologue
    .line 152
    new-instance v0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$IntPropertyValuesHolder;

    invoke-direct {v0, p0, p1}, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$IntPropertyValuesHolder;-><init>(Ljava/lang/String;[I)V

    return-object v0
.end method

.method public static varargs ofKeyframe(Lcom/baidu/launcher/ui/animation/Property;[Lcom/baidu/launcher/ui/animation/Keyframe;)Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;
    .locals 3
    .parameter "property"
    .parameter "values"

    .prologue
    .line 279
    invoke-static {p1}, Lcom/baidu/launcher/ui/animation/KeyframeSet;->ofKeyframe([Lcom/baidu/launcher/ui/animation/Keyframe;)Lcom/baidu/launcher/ui/animation/KeyframeSet;

    move-result-object v0

    .line 280
    .local v0, keyframeSet:Lcom/baidu/launcher/ui/animation/KeyframeSet;
    instance-of v2, v0, Lcom/baidu/launcher/ui/animation/IntKeyframeSet;

    if-eqz v2, :cond_0

    .line 281
    new-instance v1, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$IntPropertyValuesHolder;

    check-cast v0, Lcom/baidu/launcher/ui/animation/IntKeyframeSet;

    .end local v0           #keyframeSet:Lcom/baidu/launcher/ui/animation/KeyframeSet;
    invoke-direct {v1, p0, v0}, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$IntPropertyValuesHolder;-><init>(Lcom/baidu/launcher/ui/animation/Property;Lcom/baidu/launcher/ui/animation/IntKeyframeSet;)V

    .line 289
    :goto_0
    return-object v1

    .line 282
    .restart local v0       #keyframeSet:Lcom/baidu/launcher/ui/animation/KeyframeSet;
    :cond_0
    instance-of v2, v0, Lcom/baidu/launcher/ui/animation/FloatKeyframeSet;

    if-eqz v2, :cond_1

    .line 283
    new-instance v1, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$FloatPropertyValuesHolder;

    check-cast v0, Lcom/baidu/launcher/ui/animation/FloatKeyframeSet;

    .end local v0           #keyframeSet:Lcom/baidu/launcher/ui/animation/KeyframeSet;
    invoke-direct {v1, p0, v0}, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$FloatPropertyValuesHolder;-><init>(Lcom/baidu/launcher/ui/animation/Property;Lcom/baidu/launcher/ui/animation/FloatKeyframeSet;)V

    goto :goto_0

    .line 286
    .restart local v0       #keyframeSet:Lcom/baidu/launcher/ui/animation/KeyframeSet;
    :cond_1
    new-instance v1, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;

    invoke-direct {v1, p0}, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;-><init>(Lcom/baidu/launcher/ui/animation/Property;)V

    .line 287
    .local v1, pvh:Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;
    iput-object v0, v1, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->mKeyframeSet:Lcom/baidu/launcher/ui/animation/KeyframeSet;

    .line 288
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/animation/Keyframe;->getType()Ljava/lang/Class;

    move-result-object v2

    iput-object v2, v1, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    goto :goto_0
.end method

.method public static varargs ofKeyframe(Ljava/lang/String;[Lcom/baidu/launcher/ui/animation/Keyframe;)Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;
    .locals 3
    .parameter "propertyName"
    .parameter "values"

    .prologue
    .line 248
    invoke-static {p1}, Lcom/baidu/launcher/ui/animation/KeyframeSet;->ofKeyframe([Lcom/baidu/launcher/ui/animation/Keyframe;)Lcom/baidu/launcher/ui/animation/KeyframeSet;

    move-result-object v0

    .line 249
    .local v0, keyframeSet:Lcom/baidu/launcher/ui/animation/KeyframeSet;
    instance-of v2, v0, Lcom/baidu/launcher/ui/animation/IntKeyframeSet;

    if-eqz v2, :cond_0

    .line 250
    new-instance v1, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$IntPropertyValuesHolder;

    check-cast v0, Lcom/baidu/launcher/ui/animation/IntKeyframeSet;

    .end local v0           #keyframeSet:Lcom/baidu/launcher/ui/animation/KeyframeSet;
    invoke-direct {v1, p0, v0}, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$IntPropertyValuesHolder;-><init>(Ljava/lang/String;Lcom/baidu/launcher/ui/animation/IntKeyframeSet;)V

    .line 258
    :goto_0
    return-object v1

    .line 251
    .restart local v0       #keyframeSet:Lcom/baidu/launcher/ui/animation/KeyframeSet;
    :cond_0
    instance-of v2, v0, Lcom/baidu/launcher/ui/animation/FloatKeyframeSet;

    if-eqz v2, :cond_1

    .line 252
    new-instance v1, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$FloatPropertyValuesHolder;

    check-cast v0, Lcom/baidu/launcher/ui/animation/FloatKeyframeSet;

    .end local v0           #keyframeSet:Lcom/baidu/launcher/ui/animation/KeyframeSet;
    invoke-direct {v1, p0, v0}, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder$FloatPropertyValuesHolder;-><init>(Ljava/lang/String;Lcom/baidu/launcher/ui/animation/FloatKeyframeSet;)V

    goto :goto_0

    .line 255
    .restart local v0       #keyframeSet:Lcom/baidu/launcher/ui/animation/KeyframeSet;
    :cond_1
    new-instance v1, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;

    invoke-direct {v1, p0}, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;)V

    .line 256
    .local v1, pvh:Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;
    iput-object v0, v1, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->mKeyframeSet:Lcom/baidu/launcher/ui/animation/KeyframeSet;

    .line 257
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/animation/Keyframe;->getType()Ljava/lang/Class;

    move-result-object v2

    iput-object v2, v1, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    goto :goto_0
.end method

.method public static varargs ofObject(Lcom/baidu/launcher/ui/animation/Property;Lcom/baidu/launcher/ui/animation/TypeEvaluator;[Ljava/lang/Object;)Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;
    .locals 1
    .parameter "property"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/baidu/launcher/ui/animation/Property;",
            "Lcom/baidu/launcher/ui/animation/TypeEvaluator",
            "<TV;>;[TV;)",
            "Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;"
        }
    .end annotation

    .prologue
    .line 222
    .local p1, evaluator:Lcom/baidu/launcher/ui/animation/TypeEvaluator;,"Lcom/baidu/launcher/ui/animation/TypeEvaluator<TV;>;"
    .local p2, values:[Ljava/lang/Object;,"[TV;"
    new-instance v0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;-><init>(Lcom/baidu/launcher/ui/animation/Property;)V

    .line 223
    .local v0, pvh:Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;
    invoke-virtual {v0, p2}, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->setObjectValues([Ljava/lang/Object;)V

    .line 224
    invoke-virtual {v0, p1}, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->setEvaluator(Lcom/baidu/launcher/ui/animation/TypeEvaluator;)V

    .line 225
    return-object v0
.end method

.method public static varargs ofObject(Ljava/lang/String;Lcom/baidu/launcher/ui/animation/TypeEvaluator;[Ljava/lang/Object;)Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;
    .locals 1
    .parameter "propertyName"
    .parameter "evaluator"
    .parameter "values"

    .prologue
    .line 202
    new-instance v0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;)V

    .line 203
    .local v0, pvh:Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;
    invoke-virtual {v0, p2}, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->setObjectValues([Ljava/lang/Object;)V

    .line 204
    invoke-virtual {v0, p1}, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->setEvaluator(Lcom/baidu/launcher/ui/animation/TypeEvaluator;)V

    .line 205
    return-object v0
.end method

.method private setupGetter(Ljava/lang/Class;)V
    .locals 3
    .parameter "targetClass"

    .prologue
    .line 472
    sget-object v0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->sGetterPropertyMap:Ljava/util/HashMap;

    const-string v1, "get"

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->setupSetterOrGetter(Ljava/lang/Class;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    .line 473
    return-void
.end method

.method private setupSetterOrGetter(Ljava/lang/Class;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 5
    .parameter "targetClass"
    .parameter
    .parameter "prefix"
    .parameter "valueType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 436
    .local p2, propertyMapMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Class;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;>;"
    const/4 v2, 0x0

    .line 441
    .local v2, setterOrGetter:Ljava/lang/reflect/Method;
    :try_start_0
    iget-object v3, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->mPropertyMapLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 442
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 443
    .local v1, propertyMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    if-eqz v1, :cond_0

    .line 444
    iget-object v3, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/reflect/Method;

    move-object v2, v0

    .line 446
    :cond_0
    if-nez v2, :cond_2

    .line 447
    invoke-direct {p0, p1, p3, p4}, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->getPropertyFunction(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 448
    if-nez v1, :cond_1

    .line 449
    new-instance v1, Ljava/util/HashMap;

    .end local v1           #propertyMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 450
    .restart local v1       #propertyMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    invoke-virtual {p2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    :cond_1
    iget-object v3, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 455
    :cond_2
    iget-object v3, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->mPropertyMapLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 457
    return-object v2

    .line 455
    .end local v1           #propertyMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->mPropertyMapLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v3
.end method

.method private setupValue(Ljava/lang/Object;Lcom/baidu/launcher/ui/animation/Keyframe;)V
    .locals 4
    .parameter "target"
    .parameter "kf"

    .prologue
    .line 530
    iget-object v2, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->mProperty:Lcom/baidu/launcher/ui/animation/Property;

    if-eqz v2, :cond_0

    .line 531
    iget-object v2, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->mProperty:Lcom/baidu/launcher/ui/animation/Property;

    invoke-virtual {v2, p1}, Lcom/baidu/launcher/ui/animation/Property;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/baidu/launcher/ui/animation/Keyframe;->setValue(Ljava/lang/Object;)V

    .line 534
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    if-nez v2, :cond_1

    .line 535
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 536
    .local v1, targetClass:Ljava/lang/Class;
    invoke-direct {p0, v1}, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->setupGetter(Ljava/lang/Class;)V

    .line 538
    .end local v1           #targetClass:Ljava/lang/Class;
    :cond_1
    iget-object v2, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/baidu/launcher/ui/animation/Keyframe;->setValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 544
    :goto_0
    return-void

    .line 539
    :catch_0
    move-exception v0

    .line 540
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    const-string v2, "PropertyValuesHolder"

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/baidu/launcher/utils/LogEx;->debugErro(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 541
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 542
    .local v0, e:Ljava/lang/IllegalAccessException;
    const-string v2, "PropertyValuesHolder"

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/baidu/launcher/utils/LogEx;->debugErro(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method calculateValue(F)V
    .locals 1
    .parameter "fraction"

    .prologue
    .line 649
    iget-object v0, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->mKeyframeSet:Lcom/baidu/launcher/ui/animation/KeyframeSet;

    invoke-virtual {v0, p1}, Lcom/baidu/launcher/ui/animation/KeyframeSet;->getValue(F)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->mAnimatedValue:Ljava/lang/Object;

    .line 650
    return-void
.end method

.method public clone()Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;
    .locals 3

    .prologue
    .line 573
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;

    .line 574
    .local v1, newPVH:Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;
    iget-object v2, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    iput-object v2, v1, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    .line 575
    iget-object v2, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->mProperty:Lcom/baidu/launcher/ui/animation/Property;

    iput-object v2, v1, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->mProperty:Lcom/baidu/launcher/ui/animation/Property;

    .line 576
    iget-object v2, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->mKeyframeSet:Lcom/baidu/launcher/ui/animation/KeyframeSet;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/animation/KeyframeSet;->clone()Lcom/baidu/launcher/ui/animation/KeyframeSet;

    move-result-object v2

    iput-object v2, v1, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->mKeyframeSet:Lcom/baidu/launcher/ui/animation/KeyframeSet;

    .line 577
    iget-object v2, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->mEvaluator:Lcom/baidu/launcher/ui/animation/TypeEvaluator;

    iput-object v2, v1, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->mEvaluator:Lcom/baidu/launcher/ui/animation/TypeEvaluator;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 581
    .end local v1           #newPVH:Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;
    :goto_0
    return-object v1

    .line 579
    :catch_0
    move-exception v0

    .line 581
    .local v0, e:Ljava/lang/CloneNotSupportedException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->clone()Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;

    move-result-object v0

    return-object v0
.end method

.method getAnimatedValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 701
    iget-object v0, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->mAnimatedValue:Ljava/lang/Object;

    return-object v0
.end method

.method public getPropertyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 692
    iget-object v0, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    return-object v0
.end method

.method init()V
    .locals 2

    .prologue
    .line 613
    iget-object v0, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->mEvaluator:Lcom/baidu/launcher/ui/animation/TypeEvaluator;

    if-nez v0, :cond_0

    .line 616
    iget-object v0, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->sIntEvaluator:Lcom/baidu/launcher/ui/animation/TypeEvaluator;

    :goto_0
    iput-object v0, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->mEvaluator:Lcom/baidu/launcher/ui/animation/TypeEvaluator;

    .line 620
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->mEvaluator:Lcom/baidu/launcher/ui/animation/TypeEvaluator;

    if-eqz v0, :cond_1

    .line 623
    iget-object v0, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->mKeyframeSet:Lcom/baidu/launcher/ui/animation/KeyframeSet;

    iget-object v1, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->mEvaluator:Lcom/baidu/launcher/ui/animation/TypeEvaluator;

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/animation/KeyframeSet;->setEvaluator(Lcom/baidu/launcher/ui/animation/TypeEvaluator;)V

    .line 625
    :cond_1
    return-void

    .line 616
    :cond_2
    iget-object v0, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    const-class v1, Ljava/lang/Float;

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->sFloatEvaluator:Lcom/baidu/launcher/ui/animation/TypeEvaluator;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setAnimatedValue(Ljava/lang/Object;)V
    .locals 4
    .parameter "target"

    .prologue
    .line 593
    iget-object v1, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->mProperty:Lcom/baidu/launcher/ui/animation/Property;

    if-eqz v1, :cond_0

    .line 594
    iget-object v1, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->mProperty:Lcom/baidu/launcher/ui/animation/Property;

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/baidu/launcher/ui/animation/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 596
    :cond_0
    iget-object v1, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    .line 598
    :try_start_0
    iget-object v1, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->mTmpValueArray:[Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    .line 599
    iget-object v1, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->mTmpValueArray:[Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 606
    :cond_1
    :goto_0
    return-void

    .line 600
    :catch_0
    move-exception v0

    .line 601
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    const-string v1, "PropertyValuesHolder"

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/baidu/launcher/utils/LogEx;->debugErro(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 602
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 603
    .local v0, e:Ljava/lang/IllegalAccessException;
    const-string v1, "PropertyValuesHolder"

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/baidu/launcher/utils/LogEx;->debugErro(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setEvaluator(Lcom/baidu/launcher/ui/animation/TypeEvaluator;)V
    .locals 1
    .parameter "evaluator"

    .prologue
    .line 638
    iput-object p1, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->mEvaluator:Lcom/baidu/launcher/ui/animation/TypeEvaluator;

    .line 639
    iget-object v0, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->mKeyframeSet:Lcom/baidu/launcher/ui/animation/KeyframeSet;

    invoke-virtual {v0, p1}, Lcom/baidu/launcher/ui/animation/KeyframeSet;->setEvaluator(Lcom/baidu/launcher/ui/animation/TypeEvaluator;)V

    .line 640
    return-void
.end method

.method public varargs setFloatValues([F)V
    .locals 1
    .parameter "values"

    .prologue
    .line 325
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    .line 326
    invoke-static {p1}, Lcom/baidu/launcher/ui/animation/KeyframeSet;->ofFloat([F)Lcom/baidu/launcher/ui/animation/KeyframeSet;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->mKeyframeSet:Lcom/baidu/launcher/ui/animation/KeyframeSet;

    .line 327
    return-void
.end method

.method public varargs setIntValues([I)V
    .locals 1
    .parameter "values"

    .prologue
    .line 307
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    .line 308
    invoke-static {p1}, Lcom/baidu/launcher/ui/animation/KeyframeSet;->ofInt([I)Lcom/baidu/launcher/ui/animation/KeyframeSet;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->mKeyframeSet:Lcom/baidu/launcher/ui/animation/KeyframeSet;

    .line 309
    return-void
.end method

.method public varargs setKeyframes([Lcom/baidu/launcher/ui/animation/Keyframe;)V
    .locals 4
    .parameter "values"

    .prologue
    .line 335
    array-length v2, p1

    .line 336
    .local v2, numKeyframes:I
    const/4 v3, 0x2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    new-array v1, v3, [Lcom/baidu/launcher/ui/animation/Keyframe;

    .line 337
    .local v1, keyframes:[Lcom/baidu/launcher/ui/animation/Keyframe;
    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {v3}, Lcom/baidu/launcher/ui/animation/Keyframe;->getType()Ljava/lang/Class;

    move-result-object v3

    iput-object v3, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    .line 338
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 339
    aget-object v3, p1, v0

    aput-object v3, v1, v0

    .line 338
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 341
    :cond_0
    new-instance v3, Lcom/baidu/launcher/ui/animation/KeyframeSet;

    invoke-direct {v3, v1}, Lcom/baidu/launcher/ui/animation/KeyframeSet;-><init>([Lcom/baidu/launcher/ui/animation/Keyframe;)V

    iput-object v3, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->mKeyframeSet:Lcom/baidu/launcher/ui/animation/KeyframeSet;

    .line 342
    return-void
.end method

.method public varargs setObjectValues([Ljava/lang/Object;)V
    .locals 1
    .parameter "values"

    .prologue
    .line 358
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    .line 359
    invoke-static {p1}, Lcom/baidu/launcher/ui/animation/KeyframeSet;->ofObject([Ljava/lang/Object;)Lcom/baidu/launcher/ui/animation/KeyframeSet;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->mKeyframeSet:Lcom/baidu/launcher/ui/animation/KeyframeSet;

    .line 360
    return-void
.end method

.method public setProperty(Lcom/baidu/launcher/ui/animation/Property;)V
    .locals 0
    .parameter "property"

    .prologue
    .line 680
    iput-object p1, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->mProperty:Lcom/baidu/launcher/ui/animation/Property;

    .line 681
    return-void
.end method

.method public setPropertyName(Ljava/lang/String;)V
    .locals 0
    .parameter "propertyName"

    .prologue
    .line 668
    iput-object p1, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    .line 669
    return-void
.end method

.method setupEndValue(Ljava/lang/Object;)V
    .locals 2
    .parameter "target"

    .prologue
    .line 567
    iget-object v0, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->mKeyframeSet:Lcom/baidu/launcher/ui/animation/KeyframeSet;

    iget-object v0, v0, Lcom/baidu/launcher/ui/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->mKeyframeSet:Lcom/baidu/launcher/ui/animation/KeyframeSet;

    iget-object v1, v1, Lcom/baidu/launcher/ui/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/animation/Keyframe;

    invoke-direct {p0, p1, v0}, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->setupValue(Ljava/lang/Object;Lcom/baidu/launcher/ui/animation/Keyframe;)V

    .line 568
    return-void
.end method

.method setupSetter(Ljava/lang/Class;)V
    .locals 3
    .parameter "targetClass"

    .prologue
    .line 465
    sget-object v0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->sSetterPropertyMap:Ljava/util/HashMap;

    const-string v1, "set"

    iget-object v2, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->setupSetterOrGetter(Ljava/lang/Class;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    .line 466
    return-void
.end method

.method setupSetterAndGetter(Ljava/lang/Object;)V
    .locals 8
    .parameter "target"

    .prologue
    .line 486
    iget-object v5, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->mProperty:Lcom/baidu/launcher/ui/animation/Property;

    if-eqz v5, :cond_1

    .line 489
    :try_start_0
    iget-object v5, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->mProperty:Lcom/baidu/launcher/ui/animation/Property;

    invoke-virtual {v5, p1}, Lcom/baidu/launcher/ui/animation/Property;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 490
    .local v4, testValue:Ljava/lang/Object;
    iget-object v5, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->mKeyframeSet:Lcom/baidu/launcher/ui/animation/KeyframeSet;

    iget-object v5, v5, Lcom/baidu/launcher/ui/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/ui/animation/Keyframe;

    .line 491
    .local v2, kf:Lcom/baidu/launcher/ui/animation/Keyframe;
    invoke-virtual {v2}, Lcom/baidu/launcher/ui/animation/Keyframe;->hasValue()Z

    move-result v5

    if-nez v5, :cond_0

    .line 492
    iget-object v5, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->mProperty:Lcom/baidu/launcher/ui/animation/Property;

    invoke-virtual {v5, p1}, Lcom/baidu/launcher/ui/animation/Property;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/baidu/launcher/ui/animation/Keyframe;->setValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 496
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #kf:Lcom/baidu/launcher/ui/animation/Keyframe;
    .end local v4           #testValue:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 497
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v5, "PropertyValuesHolder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No such property ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->mProperty:Lcom/baidu/launcher/ui/animation/Property;

    invoke-virtual {v7}, Lcom/baidu/launcher/ui/animation/Property;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") on target object "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ". Trying reflection instead"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lcom/baidu/launcher/utils/LogEx;->debugErro(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 499
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->mProperty:Lcom/baidu/launcher/ui/animation/Property;

    .line 502
    .end local v0           #e:Ljava/lang/ClassCastException;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 503
    .local v3, targetClass:Ljava/lang/Class;
    iget-object v5, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    if-nez v5, :cond_2

    .line 504
    invoke-virtual {p0, v3}, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->setupSetter(Ljava/lang/Class;)V

    .line 506
    :cond_2
    iget-object v5, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->mKeyframeSet:Lcom/baidu/launcher/ui/animation/KeyframeSet;

    iget-object v5, v5, Lcom/baidu/launcher/ui/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/ui/animation/Keyframe;

    .line 507
    .restart local v2       #kf:Lcom/baidu/launcher/ui/animation/Keyframe;
    invoke-virtual {v2}, Lcom/baidu/launcher/ui/animation/Keyframe;->hasValue()Z

    move-result v5

    if-nez v5, :cond_3

    .line 508
    iget-object v5, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    if-nez v5, :cond_4

    .line 509
    invoke-direct {p0, v3}, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->setupGetter(Ljava/lang/Class;)V

    .line 512
    :cond_4
    :try_start_1
    iget-object v5, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v5, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/baidu/launcher/ui/animation/Keyframe;->setValue(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 513
    :catch_1
    move-exception v0

    .line 514
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    const-string v5, "PropertyValuesHolder"

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lcom/baidu/launcher/utils/LogEx;->debugErro(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 515
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v0

    .line 516
    .local v0, e:Ljava/lang/IllegalAccessException;
    const-string v5, "PropertyValuesHolder"

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lcom/baidu/launcher/utils/LogEx;->debugErro(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 520
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    .end local v2           #kf:Lcom/baidu/launcher/ui/animation/Keyframe;
    .end local v3           #targetClass:Ljava/lang/Class;
    :cond_5
    return-void
.end method

.method setupStartValue(Ljava/lang/Object;)V
    .locals 2
    .parameter "target"

    .prologue
    .line 555
    iget-object v0, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->mKeyframeSet:Lcom/baidu/launcher/ui/animation/KeyframeSet;

    iget-object v0, v0, Lcom/baidu/launcher/ui/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/animation/Keyframe;

    invoke-direct {p0, p1, v0}, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->setupValue(Ljava/lang/Object;Lcom/baidu/launcher/ui/animation/Keyframe;)V

    .line 556
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 706
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/ui/animation/PropertyValuesHolder;->mKeyframeSet:Lcom/baidu/launcher/ui/animation/KeyframeSet;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/animation/KeyframeSet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
