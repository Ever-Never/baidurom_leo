.class Lcom/inveno/newpiflow/model/PiData$Column;
.super Ljava/lang/Object;
.source "PiData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inveno/newpiflow/model/PiData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Column"
.end annotation


# instance fields
.field bottom:I

.field height:I

.field private index:I

.field items:Landroid/util/SparseIntArray;

.field left:I

.field size:I

.field final synthetic this$0:Lcom/inveno/newpiflow/model/PiData;


# direct methods
.method public constructor <init>(Lcom/inveno/newpiflow/model/PiData;I)V
    .locals 2
    .parameter
    .parameter "index"

    .prologue
    .line 891
    iput-object p1, p0, Lcom/inveno/newpiflow/model/PiData$Column;->this$0:Lcom/inveno/newpiflow/model/PiData;

    .line 892
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 893
    iput p2, p0, Lcom/inveno/newpiflow/model/PiData$Column;->index:I

    .line 894
    new-instance v0, Landroid/util/SparseIntArray;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/inveno/newpiflow/model/PiData$Column;->items:Landroid/util/SparseIntArray;

    .line 895
    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .prologue
    .line 898
    iget v0, p0, Lcom/inveno/newpiflow/model/PiData$Column;->index:I

    return v0
.end method
