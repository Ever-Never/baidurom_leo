.class final Lcom/baidu/launcher/ui/common/GridLayout$Axis;
.super Ljava/lang/Object;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/common/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Axis"
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final COMPLETE:I = 0x2

.field private static final NEW:I = 0x0

.field private static final PENDING:I = 0x1


# instance fields
.field public arcs:[Lcom/baidu/launcher/ui/common/GridLayout$Arc;

.field public arcsValid:Z

.field backwardLinks:Lcom/baidu/launcher/ui/common/GridLayout$PackedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/baidu/launcher/ui/common/GridLayout$PackedMap",
            "<",
            "Lcom/baidu/launcher/ui/common/GridLayout$Interval;",
            "Lcom/baidu/launcher/ui/common/GridLayout$MutableInt;",
            ">;"
        }
    .end annotation
.end field

.field public backwardLinksValid:Z

.field public definedCount:I

.field forwardLinks:Lcom/baidu/launcher/ui/common/GridLayout$PackedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/baidu/launcher/ui/common/GridLayout$PackedMap",
            "<",
            "Lcom/baidu/launcher/ui/common/GridLayout$Interval;",
            "Lcom/baidu/launcher/ui/common/GridLayout$MutableInt;",
            ">;"
        }
    .end annotation
.end field

.field public forwardLinksValid:Z

.field groupBounds:Lcom/baidu/launcher/ui/common/GridLayout$PackedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/baidu/launcher/ui/common/GridLayout$PackedMap",
            "<",
            "Lcom/baidu/launcher/ui/common/GridLayout$Spec;",
            "Lcom/baidu/launcher/ui/common/GridLayout$Bounds;",
            ">;"
        }
    .end annotation
.end field

.field public groupBoundsValid:Z

.field public final horizontal:Z

.field public leadingMargins:[I

.field public leadingMarginsValid:Z

.field public locations:[I

.field public locationsValid:Z

.field private maxIndex:I

.field orderPreserved:Z

.field private parentMax:Lcom/baidu/launcher/ui/common/GridLayout$MutableInt;

.field private parentMin:Lcom/baidu/launcher/ui/common/GridLayout$MutableInt;

.field final synthetic this$0:Lcom/baidu/launcher/ui/common/GridLayout;

.field public trailingMargins:[I

.field public trailingMarginsValid:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1049
    const-class v0, Lcom/baidu/launcher/ui/common/GridLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lcom/baidu/launcher/ui/common/GridLayout;Z)V
    .locals 2
    .parameter
    .parameter "horizontal"

    .prologue
    const/high16 v0, -0x8000

    const/4 v1, 0x0

    .line 1085
    iput-object p1, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->this$0:Lcom/baidu/launcher/ui/common/GridLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1056
    iput v0, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->definedCount:I

    .line 1057
    iput v0, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->maxIndex:I

    .line 1060
    iput-boolean v1, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->groupBoundsValid:Z

    .line 1063
    iput-boolean v1, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->forwardLinksValid:Z

    .line 1066
    iput-boolean v1, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->backwardLinksValid:Z

    .line 1069
    iput-boolean v1, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->leadingMarginsValid:Z

    .line 1072
    iput-boolean v1, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->trailingMarginsValid:Z

    .line 1075
    iput-boolean v1, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->arcsValid:Z

    .line 1078
    iput-boolean v1, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->locationsValid:Z

    .line 1080
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->orderPreserved:Z

    .line 1082
    new-instance v0, Lcom/baidu/launcher/ui/common/GridLayout$MutableInt;

    invoke-direct {v0, v1}, Lcom/baidu/launcher/ui/common/GridLayout$MutableInt;-><init>(I)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->parentMin:Lcom/baidu/launcher/ui/common/GridLayout$MutableInt;

    .line 1083
    new-instance v0, Lcom/baidu/launcher/ui/common/GridLayout$MutableInt;

    const v1, -0x186a0

    invoke-direct {v0, v1}, Lcom/baidu/launcher/ui/common/GridLayout$MutableInt;-><init>(I)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->parentMax:Lcom/baidu/launcher/ui/common/GridLayout$MutableInt;

    .line 1086
    iput-boolean p2, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->horizontal:Z

    .line 1087
    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/launcher/ui/common/GridLayout;ZLcom/baidu/launcher/ui/common/GridLayout$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 1049
    invoke-direct {p0, p1, p2}, Lcom/baidu/launcher/ui/common/GridLayout$Axis;-><init>(Lcom/baidu/launcher/ui/common/GridLayout;Z)V

    return-void
.end method

.method private addComponentSizes(Ljava/util/List;Lcom/baidu/launcher/ui/common/GridLayout$PackedMap;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/launcher/ui/common/GridLayout$Arc;",
            ">;",
            "Lcom/baidu/launcher/ui/common/GridLayout$PackedMap",
            "<",
            "Lcom/baidu/launcher/ui/common/GridLayout$Interval;",
            "Lcom/baidu/launcher/ui/common/GridLayout$MutableInt;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1305
    .local p1, result:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/launcher/ui/common/GridLayout$Arc;>;"
    .local p2, links:Lcom/baidu/launcher/ui/common/GridLayout$PackedMap;,"Lcom/baidu/launcher/ui/common/GridLayout$PackedMap<Lcom/baidu/launcher/ui/common/GridLayout$Interval;Lcom/baidu/launcher/ui/common/GridLayout$MutableInt;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p2, Lcom/baidu/launcher/ui/common/GridLayout$PackedMap;->keys:[Ljava/lang/Object;

    check-cast v2, [Lcom/baidu/launcher/ui/common/GridLayout$Interval;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 1306
    iget-object v2, p2, Lcom/baidu/launcher/ui/common/GridLayout$PackedMap;->keys:[Ljava/lang/Object;

    check-cast v2, [Lcom/baidu/launcher/ui/common/GridLayout$Interval;

    aget-object v1, v2, v0

    .line 1307
    .local v1, key:Lcom/baidu/launcher/ui/common/GridLayout$Interval;
    iget-object v2, p2, Lcom/baidu/launcher/ui/common/GridLayout$PackedMap;->values:[Ljava/lang/Object;

    check-cast v2, [Lcom/baidu/launcher/ui/common/GridLayout$MutableInt;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->include(Ljava/util/List;Lcom/baidu/launcher/ui/common/GridLayout$Interval;Lcom/baidu/launcher/ui/common/GridLayout$MutableInt;Z)V

    .line 1305
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1309
    .end local v1           #key:Lcom/baidu/launcher/ui/common/GridLayout$Interval;
    :cond_0
    return-void
.end method

.method private arcsToString(Ljava/util/List;)Ljava/lang/String;
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/launcher/ui/common/GridLayout$Arc;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1379
    .local p1, arcs:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/launcher/ui/common/GridLayout$Arc;>;"
    iget-boolean v8, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->horizontal:Z

    if-eqz v8, :cond_0

    const-string v7, "x"

    .line 1380
    .local v7, var:Ljava/lang/String;
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1381
    .local v4, result:Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    .line 1382
    .local v2, first:Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/common/GridLayout$Arc;

    .line 1383
    .local v0, arc:Lcom/baidu/launcher/ui/common/GridLayout$Arc;
    if-eqz v2, :cond_1

    .line 1384
    const/4 v2, 0x0

    .line 1388
    :goto_2
    iget-object v8, v0, Lcom/baidu/launcher/ui/common/GridLayout$Arc;->span:Lcom/baidu/launcher/ui/common/GridLayout$Interval;

    iget v5, v8, Lcom/baidu/launcher/ui/common/GridLayout$Interval;->min:I

    .line 1389
    .local v5, src:I
    iget-object v8, v0, Lcom/baidu/launcher/ui/common/GridLayout$Arc;->span:Lcom/baidu/launcher/ui/common/GridLayout$Interval;

    iget v1, v8, Lcom/baidu/launcher/ui/common/GridLayout$Interval;->max:I

    .line 1390
    .local v1, dst:I
    iget-object v8, v0, Lcom/baidu/launcher/ui/common/GridLayout$Arc;->value:Lcom/baidu/launcher/ui/common/GridLayout$MutableInt;

    iget v6, v8, Lcom/baidu/launcher/ui/common/GridLayout$MutableInt;->value:I

    .line 1391
    .local v6, value:I
    if-ge v5, v1, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " > "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_3
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1379
    .end local v0           #arc:Lcom/baidu/launcher/ui/common/GridLayout$Arc;
    .end local v1           #dst:I
    .end local v2           #first:Z
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #result:Ljava/lang/StringBuilder;
    .end local v5           #src:I
    .end local v6           #value:I
    .end local v7           #var:Ljava/lang/String;
    :cond_0
    const-string v7, "y"

    goto :goto_0

    .line 1386
    .restart local v0       #arc:Lcom/baidu/launcher/ui/common/GridLayout$Arc;
    .restart local v2       #first:Z
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #result:Ljava/lang/StringBuilder;
    .restart local v7       #var:Ljava/lang/String;
    :cond_1
    const-string v8, ", "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    goto :goto_2

    .line 1391
    .restart local v1       #dst:I
    .restart local v5       #src:I
    .restart local v6       #value:I
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " < "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    neg-int v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    .line 1396
    .end local v0           #arc:Lcom/baidu/launcher/ui/common/GridLayout$Arc;
    .end local v1           #dst:I
    .end local v5           #src:I
    .end local v6           #value:I
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method private calculateMaxIndex()I
    .locals 8

    .prologue
    .line 1091
    const/4 v4, -0x1

    .line 1092
    .local v4, result:I
    const/4 v2, 0x0

    .local v2, i:I
    iget-object v7, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->this$0:Lcom/baidu/launcher/ui/common/GridLayout;

    invoke-virtual {v7}, Lcom/baidu/launcher/ui/common/GridLayout;->getChildCount()I

    move-result v0

    .local v0, N:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1093
    iget-object v7, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->this$0:Lcom/baidu/launcher/ui/common/GridLayout;

    invoke-virtual {v7, v2}, Lcom/baidu/launcher/ui/common/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1094
    .local v1, c:Landroid/view/View;
    iget-object v7, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->this$0:Lcom/baidu/launcher/ui/common/GridLayout;

    invoke-virtual {v7, v1}, Lcom/baidu/launcher/ui/common/GridLayout;->getLayoutParams(Landroid/view/View;)Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;

    move-result-object v3

    .line 1095
    .local v3, params:Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;
    iget-boolean v7, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->horizontal:Z

    if-eqz v7, :cond_0

    iget-object v6, v3, Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;->columnSpec:Lcom/baidu/launcher/ui/common/GridLayout$Spec;

    .line 1096
    .local v6, spec:Lcom/baidu/launcher/ui/common/GridLayout$Spec;
    :goto_1
    iget-object v5, v6, Lcom/baidu/launcher/ui/common/GridLayout$Spec;->span:Lcom/baidu/launcher/ui/common/GridLayout$Interval;

    .line 1097
    .local v5, span:Lcom/baidu/launcher/ui/common/GridLayout$Interval;
    iget v7, v5, Lcom/baidu/launcher/ui/common/GridLayout$Interval;->min:I

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1098
    iget v7, v5, Lcom/baidu/launcher/ui/common/GridLayout$Interval;->max:I

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1092
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1095
    .end local v5           #span:Lcom/baidu/launcher/ui/common/GridLayout$Interval;
    .end local v6           #spec:Lcom/baidu/launcher/ui/common/GridLayout$Spec;
    :cond_0
    iget-object v6, v3, Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;->rowSpec:Lcom/baidu/launcher/ui/common/GridLayout$Spec;

    goto :goto_1

    .line 1100
    .end local v1           #c:Landroid/view/View;
    .end local v3           #params:Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;
    :cond_1
    const/4 v7, -0x1

    if-ne v4, v7, :cond_2

    const/high16 v4, -0x8000

    .end local v4           #result:I
    :cond_2
    return v4
.end method

.method private computeArcs()V
    .locals 0

    .prologue
    .line 1343
    invoke-direct {p0}, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->getForwardLinks()Lcom/baidu/launcher/ui/common/GridLayout$PackedMap;

    .line 1344
    invoke-direct {p0}, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->getBackwardLinks()Lcom/baidu/launcher/ui/common/GridLayout$PackedMap;

    .line 1345
    return-void
.end method

.method private computeGroupBounds()V
    .locals 8

    .prologue
    .line 1140
    iget-object v6, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->groupBounds:Lcom/baidu/launcher/ui/common/GridLayout$PackedMap;

    iget-object v5, v6, Lcom/baidu/launcher/ui/common/GridLayout$PackedMap;->values:[Ljava/lang/Object;

    check-cast v5, [Lcom/baidu/launcher/ui/common/GridLayout$Bounds;

    .line 1141
    .local v5, values:[Lcom/baidu/launcher/ui/common/GridLayout$Bounds;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v6, v5

    if-ge v2, v6, :cond_0

    .line 1142
    aget-object v6, v5, v2

    invoke-virtual {v6}, Lcom/baidu/launcher/ui/common/GridLayout$Bounds;->reset()V

    .line 1141
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1144
    :cond_0
    const/4 v2, 0x0

    iget-object v6, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->this$0:Lcom/baidu/launcher/ui/common/GridLayout;

    invoke-virtual {v6}, Lcom/baidu/launcher/ui/common/GridLayout;->getChildCount()I

    move-result v0

    .local v0, N:I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 1145
    iget-object v6, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->this$0:Lcom/baidu/launcher/ui/common/GridLayout;

    invoke-virtual {v6, v2}, Lcom/baidu/launcher/ui/common/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1146
    .local v1, c:Landroid/view/View;
    iget-object v6, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->this$0:Lcom/baidu/launcher/ui/common/GridLayout;

    invoke-virtual {v6, v1}, Lcom/baidu/launcher/ui/common/GridLayout;->getLayoutParams(Landroid/view/View;)Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;

    move-result-object v3

    .line 1147
    .local v3, lp:Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;
    iget-boolean v6, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->horizontal:Z

    if-eqz v6, :cond_1

    iget-object v4, v3, Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;->columnSpec:Lcom/baidu/launcher/ui/common/GridLayout$Spec;

    .line 1148
    .local v4, spec:Lcom/baidu/launcher/ui/common/GridLayout$Spec;
    :goto_2
    iget-object v6, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->groupBounds:Lcom/baidu/launcher/ui/common/GridLayout$PackedMap;

    invoke-virtual {v6, v2}, Lcom/baidu/launcher/ui/common/GridLayout$PackedMap;->getValue(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/baidu/launcher/ui/common/GridLayout$Bounds;

    iget-object v7, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->this$0:Lcom/baidu/launcher/ui/common/GridLayout;

    invoke-virtual {v6, v1, v4, v7, p0}, Lcom/baidu/launcher/ui/common/GridLayout$Bounds;->include(Landroid/view/View;Lcom/baidu/launcher/ui/common/GridLayout$Spec;Lcom/baidu/launcher/ui/common/GridLayout;Lcom/baidu/launcher/ui/common/GridLayout$Axis;)V

    .line 1144
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1147
    .end local v4           #spec:Lcom/baidu/launcher/ui/common/GridLayout$Spec;
    :cond_1
    iget-object v4, v3, Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;->rowSpec:Lcom/baidu/launcher/ui/common/GridLayout$Spec;

    goto :goto_2

    .line 1150
    .end local v1           #c:Landroid/view/View;
    .end local v3           #lp:Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;
    :cond_2
    return-void
.end method

.method private computeLinks(Lcom/baidu/launcher/ui/common/GridLayout$PackedMap;Z)V
    .locals 6
    .parameter
    .parameter "min"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/launcher/ui/common/GridLayout$PackedMap",
            "<",
            "Lcom/baidu/launcher/ui/common/GridLayout$Interval;",
            "Lcom/baidu/launcher/ui/common/GridLayout$MutableInt;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1175
    .local p1, links:Lcom/baidu/launcher/ui/common/GridLayout$PackedMap;,"Lcom/baidu/launcher/ui/common/GridLayout$PackedMap<Lcom/baidu/launcher/ui/common/GridLayout$Interval;Lcom/baidu/launcher/ui/common/GridLayout$MutableInt;>;"
    iget-object v3, p1, Lcom/baidu/launcher/ui/common/GridLayout$PackedMap;->values:[Ljava/lang/Object;

    check-cast v3, [Lcom/baidu/launcher/ui/common/GridLayout$MutableInt;

    .line 1176
    .local v3, spans:[Lcom/baidu/launcher/ui/common/GridLayout$MutableInt;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v5, v3

    if-ge v1, v5, :cond_0

    .line 1177
    aget-object v5, v3, v1

    invoke-virtual {v5}, Lcom/baidu/launcher/ui/common/GridLayout$MutableInt;->reset()V

    .line 1176
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1181
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->getGroupBounds()Lcom/baidu/launcher/ui/common/GridLayout$PackedMap;

    move-result-object v5

    iget-object v0, v5, Lcom/baidu/launcher/ui/common/GridLayout$PackedMap;->values:[Ljava/lang/Object;

    check-cast v0, [Lcom/baidu/launcher/ui/common/GridLayout$Bounds;

    .line 1182
    .local v0, bounds:[Lcom/baidu/launcher/ui/common/GridLayout$Bounds;
    const/4 v1, 0x0

    :goto_1
    array-length v5, v0

    if-ge v1, v5, :cond_2

    .line 1183
    aget-object v5, v0, v1

    invoke-virtual {v5, p2}, Lcom/baidu/launcher/ui/common/GridLayout$Bounds;->size(Z)I

    move-result v2

    .line 1184
    .local v2, size:I
    invoke-virtual {p1, v1}, Lcom/baidu/launcher/ui/common/GridLayout$PackedMap;->getValue(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/launcher/ui/common/GridLayout$MutableInt;

    .line 1186
    .local v4, valueHolder:Lcom/baidu/launcher/ui/common/GridLayout$MutableInt;
    iget v5, v4, Lcom/baidu/launcher/ui/common/GridLayout$MutableInt;->value:I

    if-eqz p2, :cond_1

    .end local v2           #size:I
    :goto_2
    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v4, Lcom/baidu/launcher/ui/common/GridLayout$MutableInt;->value:I

    .line 1182
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1186
    .restart local v2       #size:I
    :cond_1
    neg-int v2, v2

    goto :goto_2

    .line 1188
    .end local v2           #size:I
    .end local v4           #valueHolder:Lcom/baidu/launcher/ui/common/GridLayout$MutableInt;
    :cond_2
    return-void
.end method

.method private computeLocations([I)V
    .locals 4
    .parameter "a"

    .prologue
    .line 1534
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->getArcs()[Lcom/baidu/launcher/ui/common/GridLayout$Arc;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->solve([Lcom/baidu/launcher/ui/common/GridLayout$Arc;[I)V

    .line 1535
    iget-boolean v3, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->orderPreserved:Z

    if-nez v3, :cond_0

    .line 1542
    const/4 v3, 0x0

    aget v1, p1, v3

    .line 1543
    .local v1, a0:I
    const/4 v2, 0x0

    .local v2, i:I
    array-length v0, p1

    .local v0, N:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1544
    aget v3, p1, v2

    sub-int/2addr v3, v1

    aput v3, p1, v2

    .line 1543
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1547
    .end local v0           #N:I
    .end local v1           #a0:I
    .end local v2           #i:I
    :cond_0
    return-void
.end method

.method private computeMargins(Z)V
    .locals 11
    .parameter "leading"

    .prologue
    .line 1497
    if-eqz p1, :cond_0

    iget-object v5, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->leadingMargins:[I

    .line 1498
    .local v5, margins:[I
    :goto_0
    const/4 v2, 0x0

    .local v2, i:I
    iget-object v8, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->this$0:Lcom/baidu/launcher/ui/common/GridLayout;

    invoke-virtual {v8}, Lcom/baidu/launcher/ui/common/GridLayout;->getChildCount()I

    move-result v0

    .local v0, N:I
    :goto_1
    if-ge v2, v0, :cond_4

    .line 1499
    iget-object v8, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->this$0:Lcom/baidu/launcher/ui/common/GridLayout;

    invoke-virtual {v8, v2}, Lcom/baidu/launcher/ui/common/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1500
    .local v1, c:Landroid/view/View;
    iget-object v8, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->this$0:Lcom/baidu/launcher/ui/common/GridLayout;

    invoke-virtual {v8, v1}, Lcom/baidu/launcher/ui/common/GridLayout;->isGone(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1498
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1497
    .end local v0           #N:I
    .end local v1           #c:Landroid/view/View;
    .end local v2           #i:I
    .end local v5           #margins:[I
    :cond_0
    iget-object v5, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->trailingMargins:[I

    goto :goto_0

    .line 1501
    .restart local v0       #N:I
    .restart local v1       #c:Landroid/view/View;
    .restart local v2       #i:I
    .restart local v5       #margins:[I
    :cond_1
    iget-object v8, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->this$0:Lcom/baidu/launcher/ui/common/GridLayout;

    invoke-virtual {v8, v1}, Lcom/baidu/launcher/ui/common/GridLayout;->getLayoutParams(Landroid/view/View;)Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;

    move-result-object v4

    .line 1502
    .local v4, lp:Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;
    iget-boolean v8, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->horizontal:Z

    if-eqz v8, :cond_2

    iget-object v7, v4, Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;->columnSpec:Lcom/baidu/launcher/ui/common/GridLayout$Spec;

    .line 1503
    .local v7, spec:Lcom/baidu/launcher/ui/common/GridLayout$Spec;
    :goto_3
    iget-object v6, v7, Lcom/baidu/launcher/ui/common/GridLayout$Spec;->span:Lcom/baidu/launcher/ui/common/GridLayout$Interval;

    .line 1504
    .local v6, span:Lcom/baidu/launcher/ui/common/GridLayout$Interval;
    if-eqz p1, :cond_3

    iget v3, v6, Lcom/baidu/launcher/ui/common/GridLayout$Interval;->min:I

    .line 1505
    .local v3, index:I
    :goto_4
    aget v8, v5, v3

    iget-object v9, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->this$0:Lcom/baidu/launcher/ui/common/GridLayout;

    iget-boolean v10, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->horizontal:Z

    invoke-virtual {v9, v1, v10, p1}, Lcom/baidu/launcher/ui/common/GridLayout;->getMargin1(Landroid/view/View;ZZ)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    aput v8, v5, v3

    goto :goto_2

    .line 1502
    .end local v3           #index:I
    .end local v6           #span:Lcom/baidu/launcher/ui/common/GridLayout$Interval;
    .end local v7           #spec:Lcom/baidu/launcher/ui/common/GridLayout$Spec;
    :cond_2
    iget-object v7, v4, Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;->rowSpec:Lcom/baidu/launcher/ui/common/GridLayout$Spec;

    goto :goto_3

    .line 1504
    .restart local v6       #span:Lcom/baidu/launcher/ui/common/GridLayout$Interval;
    .restart local v7       #spec:Lcom/baidu/launcher/ui/common/GridLayout$Spec;
    :cond_3
    iget v3, v6, Lcom/baidu/launcher/ui/common/GridLayout$Interval;->max:I

    goto :goto_4

    .line 1507
    .end local v1           #c:Landroid/view/View;
    .end local v4           #lp:Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;
    .end local v6           #span:Lcom/baidu/launcher/ui/common/GridLayout$Interval;
    .end local v7           #spec:Lcom/baidu/launcher/ui/common/GridLayout$Spec;
    :cond_4
    return-void
.end method

.method private createArcs()[Lcom/baidu/launcher/ui/common/GridLayout$Arc;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1312
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1313
    .local v3, mins:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/launcher/ui/common/GridLayout$Arc;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1316
    .local v2, maxs:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/launcher/ui/common/GridLayout$Arc;>;"
    invoke-direct {p0}, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->getForwardLinks()Lcom/baidu/launcher/ui/common/GridLayout$PackedMap;

    move-result-object v6

    invoke-direct {p0, v3, v6}, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->addComponentSizes(Ljava/util/List;Lcom/baidu/launcher/ui/common/GridLayout$PackedMap;)V

    .line 1318
    invoke-direct {p0}, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->getBackwardLinks()Lcom/baidu/launcher/ui/common/GridLayout$PackedMap;

    move-result-object v6

    invoke-direct {p0, v2, v6}, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->addComponentSizes(Ljava/util/List;Lcom/baidu/launcher/ui/common/GridLayout$PackedMap;)V

    .line 1321
    iget-boolean v6, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->orderPreserved:Z

    if-eqz v6, :cond_0

    .line 1323
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->getCount()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 1324
    new-instance v6, Lcom/baidu/launcher/ui/common/GridLayout$Interval;

    add-int/lit8 v7, v1, 0x1

    invoke-direct {v6, v1, v7}, Lcom/baidu/launcher/ui/common/GridLayout$Interval;-><init>(II)V

    new-instance v7, Lcom/baidu/launcher/ui/common/GridLayout$MutableInt;

    invoke-direct {v7, v8}, Lcom/baidu/launcher/ui/common/GridLayout$MutableInt;-><init>(I)V

    invoke-direct {p0, v3, v6, v7}, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->include(Ljava/util/List;Lcom/baidu/launcher/ui/common/GridLayout$Interval;Lcom/baidu/launcher/ui/common/GridLayout$MutableInt;)V

    .line 1323
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1330
    .end local v1           #i:I
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->getCount()I

    move-result v0

    .line 1331
    .local v0, N:I
    new-instance v6, Lcom/baidu/launcher/ui/common/GridLayout$Interval;

    invoke-direct {v6, v8, v0}, Lcom/baidu/launcher/ui/common/GridLayout$Interval;-><init>(II)V

    iget-object v7, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->parentMin:Lcom/baidu/launcher/ui/common/GridLayout$MutableInt;

    invoke-direct {p0, v3, v6, v7, v8}, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->include(Ljava/util/List;Lcom/baidu/launcher/ui/common/GridLayout$Interval;Lcom/baidu/launcher/ui/common/GridLayout$MutableInt;Z)V

    .line 1332
    new-instance v6, Lcom/baidu/launcher/ui/common/GridLayout$Interval;

    invoke-direct {v6, v0, v8}, Lcom/baidu/launcher/ui/common/GridLayout$Interval;-><init>(II)V

    iget-object v7, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->parentMax:Lcom/baidu/launcher/ui/common/GridLayout$MutableInt;

    invoke-direct {p0, v2, v6, v7, v8}, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->include(Ljava/util/List;Lcom/baidu/launcher/ui/common/GridLayout$Interval;Lcom/baidu/launcher/ui/common/GridLayout$MutableInt;Z)V

    .line 1335
    invoke-direct {p0, v3}, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->topologicalSort(Ljava/util/List;)[Lcom/baidu/launcher/ui/common/GridLayout$Arc;

    move-result-object v5

    .line 1336
    .local v5, sMins:[Lcom/baidu/launcher/ui/common/GridLayout$Arc;
    invoke-direct {p0, v2}, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->topologicalSort(Ljava/util/List;)[Lcom/baidu/launcher/ui/common/GridLayout$Arc;

    move-result-object v4

    .line 1338
    .local v4, sMaxs:[Lcom/baidu/launcher/ui/common/GridLayout$Arc;
    invoke-static {v5, v4}, Lcom/baidu/launcher/ui/common/GridLayout;->append([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/baidu/launcher/ui/common/GridLayout$Arc;

    return-object v6
.end method

.method private createGroupBounds()Lcom/baidu/launcher/ui/common/GridLayout$PackedMap;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/baidu/launcher/ui/common/GridLayout$PackedMap",
            "<",
            "Lcom/baidu/launcher/ui/common/GridLayout$Spec;",
            "Lcom/baidu/launcher/ui/common/GridLayout$Bounds;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1128
    const-class v7, Lcom/baidu/launcher/ui/common/GridLayout$Spec;

    const-class v8, Lcom/baidu/launcher/ui/common/GridLayout$Bounds;

    invoke-static {v7, v8}, Lcom/baidu/launcher/ui/common/GridLayout$Assoc;->of(Ljava/lang/Class;Ljava/lang/Class;)Lcom/baidu/launcher/ui/common/GridLayout$Assoc;

    move-result-object v1

    .line 1129
    .local v1, assoc:Lcom/baidu/launcher/ui/common/GridLayout$Assoc;,"Lcom/baidu/launcher/ui/common/GridLayout$Assoc<Lcom/baidu/launcher/ui/common/GridLayout$Spec;Lcom/baidu/launcher/ui/common/GridLayout$Bounds;>;"
    const/4 v4, 0x0

    .local v4, i:I
    iget-object v7, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->this$0:Lcom/baidu/launcher/ui/common/GridLayout;

    invoke-virtual {v7}, Lcom/baidu/launcher/ui/common/GridLayout;->getChildCount()I

    move-result v0

    .local v0, N:I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 1130
    iget-object v7, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->this$0:Lcom/baidu/launcher/ui/common/GridLayout;

    invoke-virtual {v7, v4}, Lcom/baidu/launcher/ui/common/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1131
    .local v3, c:Landroid/view/View;
    iget-object v7, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->this$0:Lcom/baidu/launcher/ui/common/GridLayout;

    invoke-virtual {v7, v3}, Lcom/baidu/launcher/ui/common/GridLayout;->getLayoutParams(Landroid/view/View;)Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;

    move-result-object v5

    .line 1132
    .local v5, lp:Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;
    iget-boolean v7, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->horizontal:Z

    if-eqz v7, :cond_0

    iget-object v6, v5, Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;->columnSpec:Lcom/baidu/launcher/ui/common/GridLayout$Spec;

    .line 1133
    .local v6, spec:Lcom/baidu/launcher/ui/common/GridLayout$Spec;
    :goto_1
    iget-object v7, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->this$0:Lcom/baidu/launcher/ui/common/GridLayout;

    iget-object v8, v6, Lcom/baidu/launcher/ui/common/GridLayout$Spec;->alignment:Lcom/baidu/launcher/ui/common/GridLayout$Alignment;

    iget-boolean v9, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->horizontal:Z

    invoke-virtual {v7, v8, v9}, Lcom/baidu/launcher/ui/common/GridLayout;->getAlignment(Lcom/baidu/launcher/ui/common/GridLayout$Alignment;Z)Lcom/baidu/launcher/ui/common/GridLayout$Alignment;

    move-result-object v7

    invoke-virtual {v7}, Lcom/baidu/launcher/ui/common/GridLayout$Alignment;->getBounds()Lcom/baidu/launcher/ui/common/GridLayout$Bounds;

    move-result-object v2

    .line 1134
    .local v2, bounds:Lcom/baidu/launcher/ui/common/GridLayout$Bounds;
    invoke-virtual {v1, v6, v2}, Lcom/baidu/launcher/ui/common/GridLayout$Assoc;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1129
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1132
    .end local v2           #bounds:Lcom/baidu/launcher/ui/common/GridLayout$Bounds;
    .end local v6           #spec:Lcom/baidu/launcher/ui/common/GridLayout$Spec;
    :cond_0
    iget-object v6, v5, Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;->rowSpec:Lcom/baidu/launcher/ui/common/GridLayout$Spec;

    goto :goto_1

    .line 1136
    .end local v3           #c:Landroid/view/View;
    .end local v5           #lp:Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;
    :cond_1
    invoke-virtual {v1}, Lcom/baidu/launcher/ui/common/GridLayout$Assoc;->pack()Lcom/baidu/launcher/ui/common/GridLayout$PackedMap;

    move-result-object v7

    return-object v7
.end method

.method private createLinks(Z)Lcom/baidu/launcher/ui/common/GridLayout$PackedMap;
    .locals 7
    .parameter "min"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/baidu/launcher/ui/common/GridLayout$PackedMap",
            "<",
            "Lcom/baidu/launcher/ui/common/GridLayout$Interval;",
            "Lcom/baidu/launcher/ui/common/GridLayout$MutableInt;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1165
    const-class v5, Lcom/baidu/launcher/ui/common/GridLayout$Interval;

    const-class v6, Lcom/baidu/launcher/ui/common/GridLayout$MutableInt;

    invoke-static {v5, v6}, Lcom/baidu/launcher/ui/common/GridLayout$Assoc;->of(Ljava/lang/Class;Ljava/lang/Class;)Lcom/baidu/launcher/ui/common/GridLayout$Assoc;

    move-result-object v3

    .line 1166
    .local v3, result:Lcom/baidu/launcher/ui/common/GridLayout$Assoc;,"Lcom/baidu/launcher/ui/common/GridLayout$Assoc<Lcom/baidu/launcher/ui/common/GridLayout$Interval;Lcom/baidu/launcher/ui/common/GridLayout$MutableInt;>;"
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->getGroupBounds()Lcom/baidu/launcher/ui/common/GridLayout$PackedMap;

    move-result-object v5

    iget-object v2, v5, Lcom/baidu/launcher/ui/common/GridLayout$PackedMap;->keys:[Ljava/lang/Object;

    check-cast v2, [Lcom/baidu/launcher/ui/common/GridLayout$Spec;

    .line 1167
    .local v2, keys:[Lcom/baidu/launcher/ui/common/GridLayout$Spec;
    const/4 v1, 0x0

    .local v1, i:I
    array-length v0, v2

    .local v0, N:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1168
    if-eqz p1, :cond_0

    aget-object v5, v2, v1

    iget-object v4, v5, Lcom/baidu/launcher/ui/common/GridLayout$Spec;->span:Lcom/baidu/launcher/ui/common/GridLayout$Interval;

    .line 1169
    .local v4, span:Lcom/baidu/launcher/ui/common/GridLayout$Interval;
    :goto_1
    new-instance v5, Lcom/baidu/launcher/ui/common/GridLayout$MutableInt;

    invoke-direct {v5}, Lcom/baidu/launcher/ui/common/GridLayout$MutableInt;-><init>()V

    invoke-virtual {v3, v4, v5}, Lcom/baidu/launcher/ui/common/GridLayout$Assoc;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1167
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1168
    .end local v4           #span:Lcom/baidu/launcher/ui/common/GridLayout$Interval;
    :cond_0
    aget-object v5, v2, v1

    iget-object v5, v5, Lcom/baidu/launcher/ui/common/GridLayout$Spec;->span:Lcom/baidu/launcher/ui/common/GridLayout$Interval;

    invoke-virtual {v5}, Lcom/baidu/launcher/ui/common/GridLayout$Interval;->inverse()Lcom/baidu/launcher/ui/common/GridLayout$Interval;

    move-result-object v4

    goto :goto_1

    .line 1171
    :cond_1
    invoke-virtual {v3}, Lcom/baidu/launcher/ui/common/GridLayout$Assoc;->pack()Lcom/baidu/launcher/ui/common/GridLayout$PackedMap;

    move-result-object v5

    return-object v5
.end method

.method private getBackwardLinks()Lcom/baidu/launcher/ui/common/GridLayout$PackedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/baidu/launcher/ui/common/GridLayout$PackedMap",
            "<",
            "Lcom/baidu/launcher/ui/common/GridLayout$Interval;",
            "Lcom/baidu/launcher/ui/common/GridLayout$MutableInt;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1202
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->backwardLinks:Lcom/baidu/launcher/ui/common/GridLayout$PackedMap;

    if-nez v0, :cond_0

    .line 1203
    invoke-direct {p0, v1}, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->createLinks(Z)Lcom/baidu/launcher/ui/common/GridLayout$PackedMap;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->backwardLinks:Lcom/baidu/launcher/ui/common/GridLayout$PackedMap;

    .line 1205
    :cond_0
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->backwardLinksValid:Z

    if-nez v0, :cond_1

    .line 1206
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->backwardLinks:Lcom/baidu/launcher/ui/common/GridLayout$PackedMap;

    invoke-direct {p0, v0, v1}, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->computeLinks(Lcom/baidu/launcher/ui/common/GridLayout$PackedMap;Z)V

    .line 1207
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->backwardLinksValid:Z

    .line 1209
    :cond_1
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->backwardLinks:Lcom/baidu/launcher/ui/common/GridLayout$PackedMap;

    return-object v0
.end method

.method private getForwardLinks()Lcom/baidu/launcher/ui/common/GridLayout$PackedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/baidu/launcher/ui/common/GridLayout$PackedMap",
            "<",
            "Lcom/baidu/launcher/ui/common/GridLayout$Interval;",
            "Lcom/baidu/launcher/ui/common/GridLayout$MutableInt;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1191
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->forwardLinks:Lcom/baidu/launcher/ui/common/GridLayout$PackedMap;

    if-nez v0, :cond_0

    .line 1192
    invoke-direct {p0, v1}, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->createLinks(Z)Lcom/baidu/launcher/ui/common/GridLayout$PackedMap;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->forwardLinks:Lcom/baidu/launcher/ui/common/GridLayout$PackedMap;

    .line 1194
    :cond_0
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->forwardLinksValid:Z

    if-nez v0, :cond_1

    .line 1195
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->forwardLinks:Lcom/baidu/launcher/ui/common/GridLayout$PackedMap;

    invoke-direct {p0, v0, v1}, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->computeLinks(Lcom/baidu/launcher/ui/common/GridLayout$PackedMap;Z)V

    .line 1196
    iput-boolean v1, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->forwardLinksValid:Z

    .line 1198
    :cond_1
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->forwardLinks:Lcom/baidu/launcher/ui/common/GridLayout$PackedMap;

    return-object v0
.end method

.method private getMaxIndex()I
    .locals 2

    .prologue
    .line 1104
    iget v0, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->maxIndex:I

    const/high16 v1, -0x8000

    if-ne v0, v1, :cond_0

    .line 1105
    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->calculateMaxIndex()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->maxIndex:I

    .line 1107
    :cond_0
    iget v0, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->maxIndex:I

    return v0
.end method

.method private getMeasure(II)I
    .locals 1
    .parameter "min"
    .parameter "max"

    .prologue
    .line 1575
    invoke-direct {p0, p1, p2}, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->setParentConstraints(II)V

    .line 1576
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->getLocations()[I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->size([I)I

    move-result v0

    return v0
.end method

.method private include(Ljava/util/List;Lcom/baidu/launcher/ui/common/GridLayout$Interval;Lcom/baidu/launcher/ui/common/GridLayout$MutableInt;)V
    .locals 1
    .parameter
    .parameter "key"
    .parameter "size"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/launcher/ui/common/GridLayout$Arc;",
            ">;",
            "Lcom/baidu/launcher/ui/common/GridLayout$Interval;",
            "Lcom/baidu/launcher/ui/common/GridLayout$MutableInt;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1237
    .local p1, arcs:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/launcher/ui/common/GridLayout$Arc;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->include(Ljava/util/List;Lcom/baidu/launcher/ui/common/GridLayout$Interval;Lcom/baidu/launcher/ui/common/GridLayout$MutableInt;Z)V

    .line 1238
    return-void
.end method

.method private include(Ljava/util/List;Lcom/baidu/launcher/ui/common/GridLayout$Interval;Lcom/baidu/launcher/ui/common/GridLayout$MutableInt;Z)V
    .locals 4
    .parameter
    .parameter "key"
    .parameter "size"
    .parameter "ignoreIfAlreadyPresent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/launcher/ui/common/GridLayout$Arc;",
            ">;",
            "Lcom/baidu/launcher/ui/common/GridLayout$Interval;",
            "Lcom/baidu/launcher/ui/common/GridLayout$MutableInt;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 1220
    .local p1, arcs:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/launcher/ui/common/GridLayout$Arc;>;"
    invoke-virtual {p2}, Lcom/baidu/launcher/ui/common/GridLayout$Interval;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 1234
    :goto_0
    return-void

    .line 1225
    :cond_0
    if-eqz p4, :cond_2

    .line 1226
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/common/GridLayout$Arc;

    .line 1227
    .local v0, arc:Lcom/baidu/launcher/ui/common/GridLayout$Arc;
    iget-object v2, v0, Lcom/baidu/launcher/ui/common/GridLayout$Arc;->span:Lcom/baidu/launcher/ui/common/GridLayout$Interval;

    .line 1228
    .local v2, span:Lcom/baidu/launcher/ui/common/GridLayout$Interval;
    invoke-virtual {v2, p2}, Lcom/baidu/launcher/ui/common/GridLayout$Interval;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 1233
    .end local v0           #arc:Lcom/baidu/launcher/ui/common/GridLayout$Arc;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #span:Lcom/baidu/launcher/ui/common/GridLayout$Interval;
    :cond_2
    new-instance v3, Lcom/baidu/launcher/ui/common/GridLayout$Arc;

    invoke-direct {v3, p2, p3}, Lcom/baidu/launcher/ui/common/GridLayout$Arc;-><init>(Lcom/baidu/launcher/ui/common/GridLayout$Interval;Lcom/baidu/launcher/ui/common/GridLayout$MutableInt;)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private init([I)V
    .locals 1
    .parameter "locations"

    .prologue
    .line 1375
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([II)V

    .line 1376
    return-void
.end method

.method private logError(Ljava/lang/String;[Lcom/baidu/launcher/ui/common/GridLayout$Arc;[Z)V
    .locals 7
    .parameter "axisName"
    .parameter "arcs"
    .parameter "culprits0"

    .prologue
    .line 1400
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1401
    .local v2, culprits:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/launcher/ui/common/GridLayout$Arc;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1402
    .local v3, removed:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/launcher/ui/common/GridLayout$Arc;>;"
    const/4 v1, 0x0

    .local v1, c:I
    :goto_0
    array-length v4, p2

    if-ge v1, v4, :cond_2

    .line 1403
    aget-object v0, p2, v1

    .line 1404
    .local v0, arc:Lcom/baidu/launcher/ui/common/GridLayout$Arc;
    aget-boolean v4, p3, v1

    if-eqz v4, :cond_0

    .line 1405
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1407
    :cond_0
    iget-boolean v4, v0, Lcom/baidu/launcher/ui/common/GridLayout$Arc;->valid:Z

    if-nez v4, :cond_1

    .line 1408
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1402
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1411
    .end local v0           #arc:Lcom/baidu/launcher/ui/common/GridLayout$Arc;
    :cond_2
    sget-object v4, Lcom/baidu/launcher/ui/common/GridLayout;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " constraints: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, v2}, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->arcsToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " are inconsistent; "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "permanently removing: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, v3}, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->arcsToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1413
    return-void
.end method

.method private relax([ILcom/baidu/launcher/ui/common/GridLayout$Arc;)Z
    .locals 7
    .parameter "locations"
    .parameter "entry"

    .prologue
    const/4 v5, 0x0

    .line 1359
    iget-boolean v6, p2, Lcom/baidu/launcher/ui/common/GridLayout$Arc;->valid:Z

    if-nez v6, :cond_1

    .line 1371
    :cond_0
    :goto_0
    return v5

    .line 1362
    :cond_1
    iget-object v1, p2, Lcom/baidu/launcher/ui/common/GridLayout$Arc;->span:Lcom/baidu/launcher/ui/common/GridLayout$Interval;

    .line 1363
    .local v1, span:Lcom/baidu/launcher/ui/common/GridLayout$Interval;
    iget v2, v1, Lcom/baidu/launcher/ui/common/GridLayout$Interval;->min:I

    .line 1364
    .local v2, u:I
    iget v3, v1, Lcom/baidu/launcher/ui/common/GridLayout$Interval;->max:I

    .line 1365
    .local v3, v:I
    iget-object v6, p2, Lcom/baidu/launcher/ui/common/GridLayout$Arc;->value:Lcom/baidu/launcher/ui/common/GridLayout$MutableInt;

    iget v4, v6, Lcom/baidu/launcher/ui/common/GridLayout$MutableInt;->value:I

    .line 1366
    .local v4, value:I
    aget v6, p1, v2

    add-int v0, v6, v4

    .line 1367
    .local v0, candidate:I
    aget v6, p1, v3

    if-le v0, v6, :cond_0

    .line 1368
    aput v0, p1, v3

    .line 1369
    const/4 v5, 0x1

    goto :goto_0
.end method

.method private setParentConstraints(II)V
    .locals 2
    .parameter "min"
    .parameter "max"

    .prologue
    .line 1569
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->parentMin:Lcom/baidu/launcher/ui/common/GridLayout$MutableInt;

    iput p1, v0, Lcom/baidu/launcher/ui/common/GridLayout$MutableInt;->value:I

    .line 1570
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->parentMax:Lcom/baidu/launcher/ui/common/GridLayout$MutableInt;

    neg-int v1, p2

    iput v1, v0, Lcom/baidu/launcher/ui/common/GridLayout$MutableInt;->value:I

    .line 1571
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->locationsValid:Z

    .line 1572
    return-void
.end method

.method private size([I)I
    .locals 1
    .parameter "locations"

    .prologue
    .line 1565
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->getCount()I

    move-result v0

    aget v0, p1, v0

    return v0
.end method

.method private solve([Lcom/baidu/launcher/ui/common/GridLayout$Arc;[I)V
    .locals 12
    .parameter "arcs"
    .parameter "locations"

    .prologue
    .line 1450
    iget-boolean v10, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->horizontal:Z

    if-eqz v10, :cond_0

    const-string v2, "horizontal"

    .line 1451
    .local v2, axisName:Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->getCount()I

    move-result v10

    add-int/lit8 v0, v10, 0x1

    .line 1452
    .local v0, N:I
    const/4 v8, 0x0

    .line 1454
    .local v8, originalCulprits:[Z
    const/4 v9, 0x0

    .local v9, p:I
    :goto_1
    array-length v10, p1

    if-ge v9, v10, :cond_2

    .line 1455
    invoke-direct {p0, p2}, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->init([I)V

    .line 1458
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    if-ge v5, v0, :cond_4

    .line 1459
    const/4 v3, 0x0

    .line 1460
    .local v3, changed:Z
    const/4 v6, 0x0

    .local v6, j:I
    array-length v7, p1

    .local v7, length:I
    :goto_3
    if-ge v6, v7, :cond_1

    .line 1461
    aget-object v10, p1, v6

    invoke-direct {p0, p2, v10}, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->relax([ILcom/baidu/launcher/ui/common/GridLayout$Arc;)Z

    move-result v10

    or-int/2addr v3, v10

    .line 1460
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1450
    .end local v0           #N:I
    .end local v2           #axisName:Ljava/lang/String;
    .end local v3           #changed:Z
    .end local v5           #i:I
    .end local v6           #j:I
    .end local v7           #length:I
    .end local v8           #originalCulprits:[Z
    .end local v9           #p:I
    :cond_0
    const-string v2, "vertical"

    goto :goto_0

    .line 1463
    .restart local v0       #N:I
    .restart local v2       #axisName:Ljava/lang/String;
    .restart local v3       #changed:Z
    .restart local v5       #i:I
    .restart local v6       #j:I
    .restart local v7       #length:I
    .restart local v8       #originalCulprits:[Z
    .restart local v9       #p:I
    :cond_1
    if-nez v3, :cond_3

    .line 1464
    if-eqz v8, :cond_2

    .line 1465
    invoke-direct {p0, v2, p1, v8}, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->logError(Ljava/lang/String;[Lcom/baidu/launcher/ui/common/GridLayout$Arc;[Z)V

    .line 1494
    .end local v3           #changed:Z
    .end local v5           #i:I
    .end local v6           #j:I
    .end local v7           #length:I
    :cond_2
    return-void

    .line 1458
    .restart local v3       #changed:Z
    .restart local v5       #i:I
    .restart local v6       #j:I
    .restart local v7       #length:I
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1471
    .end local v3           #changed:Z
    .end local v6           #j:I
    .end local v7           #length:I
    :cond_4
    array-length v10, p1

    new-array v4, v10, [Z

    .line 1472
    .local v4, culprits:[Z
    const/4 v5, 0x0

    :goto_4
    if-ge v5, v0, :cond_6

    .line 1473
    const/4 v6, 0x0

    .restart local v6       #j:I
    array-length v7, p1

    .restart local v7       #length:I
    :goto_5
    if-ge v6, v7, :cond_5

    .line 1474
    aget-boolean v10, v4, v6

    aget-object v11, p1, v6

    invoke-direct {p0, p2, v11}, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->relax([ILcom/baidu/launcher/ui/common/GridLayout$Arc;)Z

    move-result v11

    or-int/2addr v10, v11

    aput-boolean v10, v4, v6

    .line 1473
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 1472
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 1478
    .end local v6           #j:I
    .end local v7           #length:I
    :cond_6
    if-nez v9, :cond_7

    .line 1479
    move-object v8, v4

    .line 1482
    :cond_7
    const/4 v5, 0x0

    :goto_6
    array-length v10, p1

    if-ge v5, v10, :cond_a

    .line 1483
    aget-boolean v10, v4, v5

    if-eqz v10, :cond_8

    .line 1484
    aget-object v1, p1, v5

    .line 1486
    .local v1, arc:Lcom/baidu/launcher/ui/common/GridLayout$Arc;
    iget-object v10, v1, Lcom/baidu/launcher/ui/common/GridLayout$Arc;->span:Lcom/baidu/launcher/ui/common/GridLayout$Interval;

    iget v10, v10, Lcom/baidu/launcher/ui/common/GridLayout$Interval;->min:I

    iget-object v11, v1, Lcom/baidu/launcher/ui/common/GridLayout$Arc;->span:Lcom/baidu/launcher/ui/common/GridLayout$Interval;

    iget v11, v11, Lcom/baidu/launcher/ui/common/GridLayout$Interval;->max:I

    if-ge v10, v11, :cond_9

    .line 1482
    .end local v1           #arc:Lcom/baidu/launcher/ui/common/GridLayout$Arc;
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 1489
    .restart local v1       #arc:Lcom/baidu/launcher/ui/common/GridLayout$Arc;
    :cond_9
    const/4 v10, 0x0

    iput-boolean v10, v1, Lcom/baidu/launcher/ui/common/GridLayout$Arc;->valid:Z

    .line 1454
    .end local v1           #arc:Lcom/baidu/launcher/ui/common/GridLayout$Arc;
    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_1
.end method

.method private topologicalSort(Ljava/util/List;)[Lcom/baidu/launcher/ui/common/GridLayout$Arc;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/launcher/ui/common/GridLayout$Arc;",
            ">;)[",
            "Lcom/baidu/launcher/ui/common/GridLayout$Arc;"
        }
    .end annotation

    .prologue
    .line 1301
    .local p1, arcs:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/launcher/ui/common/GridLayout$Arc;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/baidu/launcher/ui/common/GridLayout$Arc;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/launcher/ui/common/GridLayout$Arc;

    invoke-direct {p0, v0}, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->topologicalSort([Lcom/baidu/launcher/ui/common/GridLayout$Arc;)[Lcom/baidu/launcher/ui/common/GridLayout$Arc;

    move-result-object v0

    return-object v0
.end method

.method private topologicalSort([Lcom/baidu/launcher/ui/common/GridLayout$Arc;)[Lcom/baidu/launcher/ui/common/GridLayout$Arc;
    .locals 1
    .parameter "arcs"

    .prologue
    .line 1263
    new-instance v0, Lcom/baidu/launcher/ui/common/GridLayout$Axis$1;

    invoke-direct {v0, p0, p1}, Lcom/baidu/launcher/ui/common/GridLayout$Axis$1;-><init>(Lcom/baidu/launcher/ui/common/GridLayout$Axis;[Lcom/baidu/launcher/ui/common/GridLayout$Arc;)V

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/common/GridLayout$Axis$1;->sort()[Lcom/baidu/launcher/ui/common/GridLayout$Arc;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getArcs()[Lcom/baidu/launcher/ui/common/GridLayout$Arc;
    .locals 1

    .prologue
    .line 1348
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->arcs:[Lcom/baidu/launcher/ui/common/GridLayout$Arc;

    if-nez v0, :cond_0

    .line 1349
    invoke-direct {p0}, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->createArcs()[Lcom/baidu/launcher/ui/common/GridLayout$Arc;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->arcs:[Lcom/baidu/launcher/ui/common/GridLayout$Arc;

    .line 1351
    :cond_0
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->arcsValid:Z

    if-nez v0, :cond_1

    .line 1352
    invoke-direct {p0}, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->computeArcs()V

    .line 1353
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->arcsValid:Z

    .line 1355
    :cond_1
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->arcs:[Lcom/baidu/launcher/ui/common/GridLayout$Arc;

    return-object v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 1111
    iget v0, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->definedCount:I

    invoke-direct {p0}, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->getMaxIndex()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getGroupBounds()Lcom/baidu/launcher/ui/common/GridLayout$PackedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/baidu/launcher/ui/common/GridLayout$PackedMap",
            "<",
            "Lcom/baidu/launcher/ui/common/GridLayout$Spec;",
            "Lcom/baidu/launcher/ui/common/GridLayout$Bounds;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1153
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->groupBounds:Lcom/baidu/launcher/ui/common/GridLayout$PackedMap;

    if-nez v0, :cond_0

    .line 1154
    invoke-direct {p0}, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->createGroupBounds()Lcom/baidu/launcher/ui/common/GridLayout$PackedMap;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->groupBounds:Lcom/baidu/launcher/ui/common/GridLayout$PackedMap;

    .line 1156
    :cond_0
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->groupBoundsValid:Z

    if-nez v0, :cond_1

    .line 1157
    invoke-direct {p0}, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->computeGroupBounds()V

    .line 1158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->groupBoundsValid:Z

    .line 1160
    :cond_1
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->groupBounds:Lcom/baidu/launcher/ui/common/GridLayout$PackedMap;

    return-object v0
.end method

.method public getLeadingMargins()[I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1512
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->leadingMargins:[I

    if-nez v0, :cond_0

    .line 1513
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->leadingMargins:[I

    .line 1515
    :cond_0
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->leadingMarginsValid:Z

    if-nez v0, :cond_1

    .line 1516
    invoke-direct {p0, v1}, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->computeMargins(Z)V

    .line 1517
    iput-boolean v1, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->leadingMarginsValid:Z

    .line 1519
    :cond_1
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->leadingMargins:[I

    return-object v0
.end method

.method public getLocations()[I
    .locals 2

    .prologue
    .line 1550
    iget-object v1, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->locations:[I

    if-nez v1, :cond_0

    .line 1551
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->getCount()I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 1552
    .local v0, N:I
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->locations:[I

    .line 1554
    .end local v0           #N:I
    :cond_0
    iget-boolean v1, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->locationsValid:Z

    if-nez v1, :cond_1

    .line 1555
    iget-object v1, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->locations:[I

    invoke-direct {p0, v1}, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->computeLocations([I)V

    .line 1556
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->locationsValid:Z

    .line 1558
    :cond_1
    iget-object v1, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->locations:[I

    return-object v1
.end method

.method public getMeasure(I)I
    .locals 4
    .parameter "measureSpec"

    .prologue
    const/4 v2, 0x0

    .line 1580
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1581
    .local v0, mode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1582
    .local v1, size:I
    sparse-switch v0, :sswitch_data_0

    .line 1593
    sget-boolean v3, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1584
    :sswitch_0
    const v3, 0x186a0

    invoke-direct {p0, v2, v3}, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->getMeasure(II)I

    move-result v2

    .line 1594
    :cond_0
    :goto_0
    return v2

    .line 1587
    :sswitch_1
    invoke-direct {p0, v1, v1}, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->getMeasure(II)I

    move-result v2

    goto :goto_0

    .line 1590
    :sswitch_2
    invoke-direct {p0, v2, v1}, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->getMeasure(II)I

    move-result v2

    goto :goto_0

    .line 1582
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_2
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method public getTrailingMargins()[I
    .locals 1

    .prologue
    .line 1523
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->trailingMargins:[I

    if-nez v0, :cond_0

    .line 1524
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->trailingMargins:[I

    .line 1526
    :cond_0
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->trailingMarginsValid:Z

    if-nez v0, :cond_1

    .line 1527
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->computeMargins(Z)V

    .line 1528
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->trailingMarginsValid:Z

    .line 1530
    :cond_1
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->trailingMargins:[I

    return-object v0
.end method

.method groupArcsByFirstVertex([Lcom/baidu/launcher/ui/common/GridLayout$Arc;)[[Lcom/baidu/launcher/ui/common/GridLayout$Arc;
    .locals 11
    .parameter "arcs"

    .prologue
    .line 1243
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->getCount()I

    move-result v8

    add-int/lit8 v0, v8, 0x1

    .line 1244
    .local v0, N:I
    new-array v6, v0, [[Lcom/baidu/launcher/ui/common/GridLayout$Arc;

    .line 1245
    .local v6, result:[[Lcom/baidu/launcher/ui/common/GridLayout$Arc;
    new-array v7, v0, [I

    .line 1246
    .local v7, sizes:[I
    move-object v2, p1

    .local v2, arr$:[Lcom/baidu/launcher/ui/common/GridLayout$Arc;
    array-length v5, v2

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v1, v2, v4

    .line 1247
    .local v1, arc:Lcom/baidu/launcher/ui/common/GridLayout$Arc;
    iget-object v8, v1, Lcom/baidu/launcher/ui/common/GridLayout$Arc;->span:Lcom/baidu/launcher/ui/common/GridLayout$Interval;

    iget v8, v8, Lcom/baidu/launcher/ui/common/GridLayout$Interval;->min:I

    aget v9, v7, v8

    add-int/lit8 v9, v9, 0x1

    aput v9, v7, v8

    .line 1246
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1249
    .end local v1           #arc:Lcom/baidu/launcher/ui/common/GridLayout$Arc;
    :cond_0
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v8, v7

    if-ge v3, v8, :cond_1

    .line 1250
    aget v8, v7, v3

    new-array v8, v8, [Lcom/baidu/launcher/ui/common/GridLayout$Arc;

    aput-object v8, v6, v3

    .line 1249
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1253
    :cond_1
    const/4 v8, 0x0

    invoke-static {v7, v8}, Ljava/util/Arrays;->fill([II)V

    .line 1254
    move-object v2, p1

    array-length v5, v2

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v5, :cond_2

    aget-object v1, v2, v4

    .line 1255
    .restart local v1       #arc:Lcom/baidu/launcher/ui/common/GridLayout$Arc;
    iget-object v8, v1, Lcom/baidu/launcher/ui/common/GridLayout$Arc;->span:Lcom/baidu/launcher/ui/common/GridLayout$Interval;

    iget v3, v8, Lcom/baidu/launcher/ui/common/GridLayout$Interval;->min:I

    .line 1256
    aget-object v8, v6, v3

    aget v9, v7, v3

    add-int/lit8 v10, v9, 0x1

    aput v10, v7, v3

    aput-object v1, v8, v9

    .line 1254
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1259
    .end local v1           #arc:Lcom/baidu/launcher/ui/common/GridLayout$Arc;
    :cond_2
    return-object v6
.end method

.method public invalidateStructure()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1605
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->maxIndex:I

    .line 1607
    iput-object v1, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->groupBounds:Lcom/baidu/launcher/ui/common/GridLayout$PackedMap;

    .line 1608
    iput-object v1, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->forwardLinks:Lcom/baidu/launcher/ui/common/GridLayout$PackedMap;

    .line 1609
    iput-object v1, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->backwardLinks:Lcom/baidu/launcher/ui/common/GridLayout$PackedMap;

    .line 1611
    iput-object v1, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->leadingMargins:[I

    .line 1612
    iput-object v1, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->trailingMargins:[I

    .line 1613
    iput-object v1, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->arcs:[Lcom/baidu/launcher/ui/common/GridLayout$Arc;

    .line 1615
    iput-object v1, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->locations:[I

    .line 1617
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->invalidateValues()V

    .line 1618
    return-void
.end method

.method public invalidateValues()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1621
    iput-boolean v0, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->groupBoundsValid:Z

    .line 1622
    iput-boolean v0, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->forwardLinksValid:Z

    .line 1623
    iput-boolean v0, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->backwardLinksValid:Z

    .line 1625
    iput-boolean v0, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->leadingMarginsValid:Z

    .line 1626
    iput-boolean v0, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->trailingMarginsValid:Z

    .line 1627
    iput-boolean v0, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->arcsValid:Z

    .line 1629
    iput-boolean v0, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->locationsValid:Z

    .line 1630
    return-void
.end method

.method public isOrderPreserved()Z
    .locals 1

    .prologue
    .line 1119
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->orderPreserved:Z

    return v0
.end method

.method public layout(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 1600
    invoke-direct {p0, p1, p1}, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->setParentConstraints(II)V

    .line 1601
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->getLocations()[I

    .line 1602
    return-void
.end method

.method public setCount(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 1115
    iput p1, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->definedCount:I

    .line 1116
    return-void
.end method

.method public setOrderPreserved(Z)V
    .locals 0
    .parameter "orderPreserved"

    .prologue
    .line 1123
    iput-boolean p1, p0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->orderPreserved:Z

    .line 1124
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->invalidateStructure()V

    .line 1125
    return-void
.end method
