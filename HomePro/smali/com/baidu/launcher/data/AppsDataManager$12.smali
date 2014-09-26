.class Lcom/baidu/launcher/data/AppsDataManager$12;
.super Ljava/lang/Object;
.source "AppsDataManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/data/AppsDataManager;->moveItemInDatabase(Lcom/baidu/launcher/data/item/ListItemInfo;JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/data/AppsDataManager;

.field final synthetic val$uri:Landroid/net/Uri;

.field final synthetic val$values:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/data/AppsDataManager;Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1081
    iput-object p1, p0, Lcom/baidu/launcher/data/AppsDataManager$12;->this$0:Lcom/baidu/launcher/data/AppsDataManager;

    iput-object p2, p0, Lcom/baidu/launcher/data/AppsDataManager$12;->val$uri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/baidu/launcher/data/AppsDataManager$12;->val$values:Landroid/content/ContentValues;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1083
    invoke-static {}, Lcom/baidu/launcher/data/AppsDataManager;->access$000()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/launcher/data/AppsDataManager$12;->val$uri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/baidu/launcher/data/AppsDataManager$12;->val$values:Landroid/content/ContentValues;

    invoke-virtual {v1, v2, v3, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1084
    .local v0, rowId:I
    return-void
.end method
