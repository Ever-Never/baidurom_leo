.class public Lcom/baidu/launcher/ui/common/GridLayout$Spec;
.super Ljava/lang/Object;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/common/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Spec"
.end annotation


# static fields
.field static final UNDEFINED:Lcom/baidu/launcher/ui/common/GridLayout$Spec;


# instance fields
.field final alignment:Lcom/baidu/launcher/ui/common/GridLayout$Alignment;

.field final span:Lcom/baidu/launcher/ui/common/GridLayout$Interval;

.field final startDefined:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2161
    const/high16 v0, -0x8000

    invoke-static {v0}, Lcom/baidu/launcher/ui/common/GridLayout;->spec(I)Lcom/baidu/launcher/ui/common/GridLayout$Spec;

    move-result-object v0

    sput-object v0, Lcom/baidu/launcher/ui/common/GridLayout$Spec;->UNDEFINED:Lcom/baidu/launcher/ui/common/GridLayout$Spec;

    return-void
.end method

.method private constructor <init>(ZIILcom/baidu/launcher/ui/common/GridLayout$Alignment;)V
    .locals 2
    .parameter "startDefined"
    .parameter "start"
    .parameter "size"
    .parameter "alignment"

    .prologue
    .line 2174
    new-instance v0, Lcom/baidu/launcher/ui/common/GridLayout$Interval;

    add-int v1, p2, p3

    invoke-direct {v0, p2, v1}, Lcom/baidu/launcher/ui/common/GridLayout$Interval;-><init>(II)V

    invoke-direct {p0, p1, v0, p4}, Lcom/baidu/launcher/ui/common/GridLayout$Spec;-><init>(ZLcom/baidu/launcher/ui/common/GridLayout$Interval;Lcom/baidu/launcher/ui/common/GridLayout$Alignment;)V

    .line 2175
    return-void
.end method

.method synthetic constructor <init>(ZIILcom/baidu/launcher/ui/common/GridLayout$Alignment;Lcom/baidu/launcher/ui/common/GridLayout$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 2160
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/baidu/launcher/ui/common/GridLayout$Spec;-><init>(ZIILcom/baidu/launcher/ui/common/GridLayout$Alignment;)V

    return-void
.end method

.method private constructor <init>(ZLcom/baidu/launcher/ui/common/GridLayout$Interval;Lcom/baidu/launcher/ui/common/GridLayout$Alignment;)V
    .locals 0
    .parameter "startDefined"
    .parameter "span"
    .parameter "alignment"

    .prologue
    .line 2167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2168
    iput-boolean p1, p0, Lcom/baidu/launcher/ui/common/GridLayout$Spec;->startDefined:Z

    .line 2169
    iput-object p2, p0, Lcom/baidu/launcher/ui/common/GridLayout$Spec;->span:Lcom/baidu/launcher/ui/common/GridLayout$Interval;

    .line 2170
    iput-object p3, p0, Lcom/baidu/launcher/ui/common/GridLayout$Spec;->alignment:Lcom/baidu/launcher/ui/common/GridLayout$Alignment;

    .line 2171
    return-void
.end method


# virtual methods
.method final copyWriteAlignment(Lcom/baidu/launcher/ui/common/GridLayout$Alignment;)Lcom/baidu/launcher/ui/common/GridLayout$Spec;
    .locals 3
    .parameter "alignment"

    .prologue
    .line 2182
    new-instance v0, Lcom/baidu/launcher/ui/common/GridLayout$Spec;

    iget-boolean v1, p0, Lcom/baidu/launcher/ui/common/GridLayout$Spec;->startDefined:Z

    iget-object v2, p0, Lcom/baidu/launcher/ui/common/GridLayout$Spec;->span:Lcom/baidu/launcher/ui/common/GridLayout$Interval;

    invoke-direct {v0, v1, v2, p1}, Lcom/baidu/launcher/ui/common/GridLayout$Spec;-><init>(ZLcom/baidu/launcher/ui/common/GridLayout$Interval;Lcom/baidu/launcher/ui/common/GridLayout$Alignment;)V

    return-object v0
.end method

.method final copyWriteSpan(Lcom/baidu/launcher/ui/common/GridLayout$Interval;)Lcom/baidu/launcher/ui/common/GridLayout$Spec;
    .locals 3
    .parameter "span"

    .prologue
    .line 2178
    new-instance v0, Lcom/baidu/launcher/ui/common/GridLayout$Spec;

    iget-boolean v1, p0, Lcom/baidu/launcher/ui/common/GridLayout$Spec;->startDefined:Z

    iget-object v2, p0, Lcom/baidu/launcher/ui/common/GridLayout$Spec;->alignment:Lcom/baidu/launcher/ui/common/GridLayout$Alignment;

    invoke-direct {v0, v1, p1, v2}, Lcom/baidu/launcher/ui/common/GridLayout$Spec;-><init>(ZLcom/baidu/launcher/ui/common/GridLayout$Interval;Lcom/baidu/launcher/ui/common/GridLayout$Alignment;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "that"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2201
    if-ne p0, p1, :cond_1

    .line 2218
    :cond_0
    :goto_0
    return v1

    .line 2204
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 2205
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 2208
    check-cast v0, Lcom/baidu/launcher/ui/common/GridLayout$Spec;

    .line 2210
    .local v0, spec:Lcom/baidu/launcher/ui/common/GridLayout$Spec;
    iget-object v3, p0, Lcom/baidu/launcher/ui/common/GridLayout$Spec;->alignment:Lcom/baidu/launcher/ui/common/GridLayout$Alignment;

    iget-object v4, v0, Lcom/baidu/launcher/ui/common/GridLayout$Spec;->alignment:Lcom/baidu/launcher/ui/common/GridLayout$Alignment;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    .line 2211
    goto :goto_0

    .line 2214
    :cond_4
    iget-object v3, p0, Lcom/baidu/launcher/ui/common/GridLayout$Spec;->span:Lcom/baidu/launcher/ui/common/GridLayout$Interval;

    iget-object v4, v0, Lcom/baidu/launcher/ui/common/GridLayout$Spec;->span:Lcom/baidu/launcher/ui/common/GridLayout$Interval;

    invoke-virtual {v3, v4}, Lcom/baidu/launcher/ui/common/GridLayout$Interval;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 2215
    goto :goto_0
.end method

.method final getFlexibility()I
    .locals 2

    .prologue
    .line 2186
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/GridLayout$Spec;->alignment:Lcom/baidu/launcher/ui/common/GridLayout$Alignment;

    sget-object v1, Lcom/baidu/launcher/ui/common/GridLayout;->UNDEFINED_ALIGNMENT:Lcom/baidu/launcher/ui/common/GridLayout$Alignment;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 2223
    iget-object v1, p0, Lcom/baidu/launcher/ui/common/GridLayout$Spec;->span:Lcom/baidu/launcher/ui/common/GridLayout$Interval;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/common/GridLayout$Interval;->hashCode()I

    move-result v0

    .line 2224
    .local v0, result:I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/baidu/launcher/ui/common/GridLayout$Spec;->alignment:Lcom/baidu/launcher/ui/common/GridLayout$Alignment;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 2225
    return v0
.end method
