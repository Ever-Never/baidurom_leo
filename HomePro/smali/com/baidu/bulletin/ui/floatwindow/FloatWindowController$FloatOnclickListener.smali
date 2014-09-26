.class Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$FloatOnclickListener;
.super Ljava/lang/Object;
.source "FloatWindowController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FloatOnclickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;


# direct methods
.method private constructor <init>(Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$FloatOnclickListener;->this$0:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$FloatOnclickListener;-><init>(Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$FloatOnclickListener;->this$0:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;

    #getter for: Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->mCurrentState:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IFloatWindowState;
    invoke-static {v0}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->access$100(Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;)Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IFloatWindowState;

    move-result-object v0

    invoke-interface {v0}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IFloatWindowState;->clickFloatWindow()V

    .line 61
    return-void
.end method
