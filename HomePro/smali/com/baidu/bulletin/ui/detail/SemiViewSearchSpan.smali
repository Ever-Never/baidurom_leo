.class public Lcom/baidu/bulletin/ui/detail/SemiViewSearchSpan;
.super Landroid/text/style/ClickableSpan;
.source "SemiViewSearchSpan.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSearchType:I

.field private mSearchWord:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .parameter "context"
    .parameter "words"
    .parameter "type"

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 12
    const/4 v0, 0x3

    iput v0, p0, Lcom/baidu/bulletin/ui/detail/SemiViewSearchSpan;->mSearchType:I

    .line 16
    iput-object p1, p0, Lcom/baidu/bulletin/ui/detail/SemiViewSearchSpan;->mContext:Landroid/content/Context;

    .line 17
    iput-object p2, p0, Lcom/baidu/bulletin/ui/detail/SemiViewSearchSpan;->mSearchWord:Ljava/lang/String;

    .line 18
    iput p3, p0, Lcom/baidu/bulletin/ui/detail/SemiViewSearchSpan;->mSearchType:I

    .line 19
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "widget"

    .prologue
    .line 24
    invoke-static {}, Lcom/baidu/bulletin/utils/BulletinUBC;->statForHistoryWordsClick()V

    .line 25
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 26
    .local v0, locations:[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 27
    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/SemiViewSearchSpan;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/bulletin/ui/detail/SemiViewSearchSpan;->mSearchWord:Ljava/lang/String;

    iget v3, p0, Lcom/baidu/bulletin/ui/detail/SemiViewSearchSpan;->mSearchType:I

    invoke-static {v1, v2, v0, v3}, Lcom/baidu/bulletin/ui/Utilities;->openSearchSemiView(Landroid/content/Context;Ljava/lang/String;[II)V

    .line 28
    return-void
.end method
