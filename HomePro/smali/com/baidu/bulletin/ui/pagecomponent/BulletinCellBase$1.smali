.class Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$1;
.super Ljava/lang/Object;
.source "BulletinCellBase.java"

# interfaces
.implements Lcom/baidu/bulletin/ui/AsyncImageLoader$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;->setThumbnail(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$1;->this$0:Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;

    iput-object p2, p0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$1;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$1;->this$0:Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;

    #getter for: Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;->mBackgroundHeight:I
    invoke-static {v0}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;->access$100(Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;)I

    move-result v0

    return v0
.end method

.method public getReferPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$1;->val$path:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$1;->this$0:Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;

    #getter for: Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;->mBackgroundWidth:I
    invoke-static {v0}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;->access$000(Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;)I

    move-result v0

    return v0
.end method

.method public onLoaded(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawable"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$1;->this$0:Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;

    invoke-virtual {v0, p1}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;->setThumbnailDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 117
    return-void
.end method
