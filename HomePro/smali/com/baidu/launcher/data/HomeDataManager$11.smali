.class Lcom/baidu/launcher/data/HomeDataManager$11;
.super Ljava/lang/Object;
.source "HomeDataManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/data/HomeDataManager;->updateContentScreenFromDatabase(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/data/HomeDataManager;

.field final synthetic val$fromScrenn:I

.field final synthetic val$toScrenn:I


# direct methods
.method constructor <init>(Lcom/baidu/launcher/data/HomeDataManager;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1273
    iput-object p1, p0, Lcom/baidu/launcher/data/HomeDataManager$11;->this$0:Lcom/baidu/launcher/data/HomeDataManager;

    iput p2, p0, Lcom/baidu/launcher/data/HomeDataManager$11;->val$fromScrenn:I

    iput p3, p0, Lcom/baidu/launcher/data/HomeDataManager$11;->val$toScrenn:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/16 v4, 0xa

    .line 1275
    iget v2, p0, Lcom/baidu/launcher/data/HomeDataManager$11;->val$fromScrenn:I

    iget v3, p0, Lcom/baidu/launcher/data/HomeDataManager$11;->val$toScrenn:I

    if-le v2, v3, :cond_0

    const/4 v0, 0x1

    .line 1276
    .local v0, ascend:Z
    :goto_0
    iget-object v2, p0, Lcom/baidu/launcher/data/HomeDataManager$11;->this$0:Lcom/baidu/launcher/data/HomeDataManager;

    iget v3, p0, Lcom/baidu/launcher/data/HomeDataManager$11;->val$fromScrenn:I

    #calls: Lcom/baidu/launcher/data/HomeDataManager;->moveContentToScreen(II)V
    invoke-static {v2, v3, v4}, Lcom/baidu/launcher/data/HomeDataManager;->access$200(Lcom/baidu/launcher/data/HomeDataManager;II)V

    .line 1277
    if-eqz v0, :cond_1

    .line 1278
    iget v2, p0, Lcom/baidu/launcher/data/HomeDataManager$11;->val$fromScrenn:I

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_1
    iget v2, p0, Lcom/baidu/launcher/data/HomeDataManager$11;->val$toScrenn:I

    if-lt v1, v2, :cond_2

    .line 1279
    iget-object v2, p0, Lcom/baidu/launcher/data/HomeDataManager$11;->this$0:Lcom/baidu/launcher/data/HomeDataManager;

    add-int/lit8 v3, v1, 0x1

    #calls: Lcom/baidu/launcher/data/HomeDataManager;->moveContentToScreen(II)V
    invoke-static {v2, v1, v3}, Lcom/baidu/launcher/data/HomeDataManager;->access$200(Lcom/baidu/launcher/data/HomeDataManager;II)V

    .line 1278
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1275
    .end local v0           #ascend:Z
    .end local v1           #i:I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1282
    .restart local v0       #ascend:Z
    :cond_1
    iget v2, p0, Lcom/baidu/launcher/data/HomeDataManager$11;->val$fromScrenn:I

    add-int/lit8 v1, v2, 0x1

    .restart local v1       #i:I
    :goto_2
    iget v2, p0, Lcom/baidu/launcher/data/HomeDataManager$11;->val$toScrenn:I

    if-gt v1, v2, :cond_2

    .line 1283
    iget-object v2, p0, Lcom/baidu/launcher/data/HomeDataManager$11;->this$0:Lcom/baidu/launcher/data/HomeDataManager;

    add-int/lit8 v3, v1, -0x1

    #calls: Lcom/baidu/launcher/data/HomeDataManager;->moveContentToScreen(II)V
    invoke-static {v2, v1, v3}, Lcom/baidu/launcher/data/HomeDataManager;->access$200(Lcom/baidu/launcher/data/HomeDataManager;II)V

    .line 1282
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1286
    :cond_2
    iget-object v2, p0, Lcom/baidu/launcher/data/HomeDataManager$11;->this$0:Lcom/baidu/launcher/data/HomeDataManager;

    iget v3, p0, Lcom/baidu/launcher/data/HomeDataManager$11;->val$toScrenn:I

    #calls: Lcom/baidu/launcher/data/HomeDataManager;->moveContentToScreen(II)V
    invoke-static {v2, v4, v3}, Lcom/baidu/launcher/data/HomeDataManager;->access$200(Lcom/baidu/launcher/data/HomeDataManager;II)V

    .line 1287
    return-void
.end method
