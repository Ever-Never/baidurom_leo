.class Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;
.super Ljava/lang/Object;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/homeview/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemConfiguration"
.end annotation


# instance fields
.field dragViewSpanX:I

.field dragViewSpanY:I

.field dragViewX:I

.field dragViewY:I

.field isSolution:Z

.field map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/baidu/launcher/ui/homeview/CellLayout$CellAndSpan;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/baidu/launcher/ui/homeview/CellLayout;


# direct methods
.method private constructor <init>(Lcom/baidu/launcher/ui/homeview/CellLayout;)V
    .locals 1
    .parameter

    .prologue
    .line 3417
    iput-object p1, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;->this$0:Lcom/baidu/launcher/ui/homeview/CellLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3418
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    .line 3419
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;->isSolution:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/launcher/ui/homeview/CellLayout;Lcom/baidu/launcher/ui/homeview/CellLayout$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3417
    invoke-direct {p0, p1}, Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;-><init>(Lcom/baidu/launcher/ui/homeview/CellLayout;)V

    return-void
.end method


# virtual methods
.method area()I
    .locals 2

    .prologue
    .line 3423
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;->dragViewSpanX:I

    iget v1, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$ItemConfiguration;->dragViewSpanY:I

    mul-int/2addr v0, v1

    return v0
.end method
