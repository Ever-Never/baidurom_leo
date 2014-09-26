.class Lcom/baidu/launcher/ui/folder/UserFolder$2;
.super Ljava/lang/Object;
.source "UserFolder.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/folder/UserFolder;->moveFolderView(Landroid/view/View;[I[ILandroid/view/animation/Animation$AnimationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/folder/UserFolder;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/folder/UserFolder;)V
    .locals 0
    .parameter

    .prologue
    .line 409
    iput-object p1, p0, Lcom/baidu/launcher/ui/folder/UserFolder$2;->this$0:Lcom/baidu/launcher/ui/folder/UserFolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 0
    .parameter "input"

    .prologue
    .line 413
    return p1
.end method
