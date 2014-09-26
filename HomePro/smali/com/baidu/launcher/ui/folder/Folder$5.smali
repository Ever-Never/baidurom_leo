.class Lcom/baidu/launcher/ui/folder/Folder$5;
.super Ljava/lang/Object;
.source "Folder.java"

# interfaces
.implements Lcom/baidu/launcher/ui/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/folder/Folder;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field alpha:I

.field final synthetic this$0:Lcom/baidu/launcher/ui/folder/Folder;

.field final synthetic val$icon:Lcom/baidu/launcher/ui/common/FastBitmapDrawable;

.field final synthetic val$view:Lcom/baidu/launcher/ui/common/ActionTextView;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/folder/Folder;Lcom/baidu/launcher/ui/common/ActionTextView;Lcom/baidu/launcher/ui/common/FastBitmapDrawable;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 245
    iput-object p1, p0, Lcom/baidu/launcher/ui/folder/Folder$5;->this$0:Lcom/baidu/launcher/ui/folder/Folder;

    iput-object p2, p0, Lcom/baidu/launcher/ui/folder/Folder$5;->val$view:Lcom/baidu/launcher/ui/common/ActionTextView;

    iput-object p3, p0, Lcom/baidu/launcher/ui/folder/Folder$5;->val$icon:Lcom/baidu/launcher/ui/common/FastBitmapDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    const/16 v0, 0xff

    iput v0, p0, Lcom/baidu/launcher/ui/folder/Folder$5;->alpha:I

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lcom/baidu/launcher/ui/animation/ValueAnimator;)V
    .locals 5
    .parameter "animation"

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0xff

    .line 251
    invoke-virtual {p1}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 252
    .local v0, percent:F
    const/high16 v1, 0x437f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/baidu/launcher/ui/folder/Folder$5;->alpha:I

    .line 254
    iget-object v1, p0, Lcom/baidu/launcher/ui/folder/Folder$5;->val$view:Lcom/baidu/launcher/ui/common/ActionTextView;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/common/ActionTextView;->getDecorateAction()Lcom/baidu/launcher/ui/common/DecorateAction;

    move-result-object v1

    iget v2, p0, Lcom/baidu/launcher/ui/folder/Folder$5;->alpha:I

    invoke-interface {v1, v2}, Lcom/baidu/launcher/ui/common/DecorateAction;->setAlpha(I)V

    .line 255
    iget-object v1, p0, Lcom/baidu/launcher/ui/folder/Folder$5;->val$icon:Lcom/baidu/launcher/ui/common/FastBitmapDrawable;

    iget v2, p0, Lcom/baidu/launcher/ui/folder/Folder$5;->alpha:I

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;->setDrawbleAlpha(I)V

    .line 256
    iget-object v1, p0, Lcom/baidu/launcher/ui/folder/Folder$5;->val$view:Lcom/baidu/launcher/ui/common/ActionTextView;

    iget-object v2, p0, Lcom/baidu/launcher/ui/folder/Folder$5;->val$icon:Lcom/baidu/launcher/ui/common/FastBitmapDrawable;

    invoke-virtual {v1, v4, v2, v4, v4}, Lcom/baidu/launcher/ui/common/ActionTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 257
    iget-object v1, p0, Lcom/baidu/launcher/ui/folder/Folder$5;->val$view:Lcom/baidu/launcher/ui/common/ActionTextView;

    iget v2, p0, Lcom/baidu/launcher/ui/folder/Folder$5;->alpha:I

    invoke-static {v2, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/ui/common/ActionTextView;->setTextColor(I)V

    .line 258
    return-void
.end method
