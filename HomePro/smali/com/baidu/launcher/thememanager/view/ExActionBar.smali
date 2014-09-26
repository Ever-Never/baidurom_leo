.class public Lcom/baidu/launcher/thememanager/view/ExActionBar;
.super Landroid/widget/LinearLayout;
.source "ExActionBar.java"


# instance fields
.field public iconListener:Landroid/view/View$OnClickListener;

.field private mActionBarIcon:Landroid/widget/ImageView;

.field private mActionBarOper:Landroid/widget/ImageView;

.field private mActionBarText:Landroid/widget/TextView;

.field private mBackView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mNavigatorView:Landroid/widget/ImageView;

.field private mOperView:Landroid/view/View;

.field private mReturnFragmentIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/launcher/thememanager/view/ExActionBar;->mReturnFragmentIndex:I

    .line 123
    new-instance v0, Lcom/baidu/launcher/thememanager/view/ExActionBar$1;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/thememanager/view/ExActionBar$1;-><init>(Lcom/baidu/launcher/thememanager/view/ExActionBar;)V

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/view/ExActionBar;->iconListener:Landroid/view/View$OnClickListener;

    .line 32
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/view/ExActionBar;->mContext:Landroid/content/Context;

    .line 33
    invoke-direct {p0}, Lcom/baidu/launcher/thememanager/view/ExActionBar;->init()V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/launcher/thememanager/view/ExActionBar;->mReturnFragmentIndex:I

    .line 123
    new-instance v0, Lcom/baidu/launcher/thememanager/view/ExActionBar$1;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/thememanager/view/ExActionBar$1;-><init>(Lcom/baidu/launcher/thememanager/view/ExActionBar;)V

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/view/ExActionBar;->iconListener:Landroid/view/View$OnClickListener;

    .line 38
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/view/ExActionBar;->mContext:Landroid/content/Context;

    .line 39
    invoke-direct {p0}, Lcom/baidu/launcher/thememanager/view/ExActionBar;->init()V

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/launcher/thememanager/view/ExActionBar;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Lcom/baidu/launcher/thememanager/view/ExActionBar;->mReturnFragmentIndex:I

    return v0
.end method

.method static synthetic access$100(Lcom/baidu/launcher/thememanager/view/ExActionBar;Landroid/app/Activity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/baidu/launcher/thememanager/view/ExActionBar;->returnToParent(Landroid/app/Activity;I)V

    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 43
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/view/ExActionBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030091

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 45
    const v0, 0x7f0801c8

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/thememanager/view/ExActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/view/ExActionBar;->mActionBarIcon:Landroid/widget/ImageView;

    .line 46
    const v0, 0x7f0801cb

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/thememanager/view/ExActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/view/ExActionBar;->mActionBarOper:Landroid/widget/ImageView;

    .line 47
    const v0, 0x7f0801c9

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/thememanager/view/ExActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/view/ExActionBar;->mActionBarText:Landroid/widget/TextView;

    .line 48
    const v0, 0x7f0801c6

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/thememanager/view/ExActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/view/ExActionBar;->mBackView:Landroid/view/View;

    .line 49
    const v0, 0x7f0801ca

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/thememanager/view/ExActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/view/ExActionBar;->mOperView:Landroid/view/View;

    .line 50
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/view/ExActionBar;->mBackView:Landroid/view/View;

    iget-object v1, p0, Lcom/baidu/launcher/thememanager/view/ExActionBar;->iconListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    const v0, 0x7f0801c7

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/thememanager/view/ExActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/view/ExActionBar;->mNavigatorView:Landroid/widget/ImageView;

    .line 53
    return-void
.end method

.method private returnToParent(Landroid/app/Activity;I)V
    .locals 4
    .parameter "activity"
    .parameter "index"

    .prologue
    .line 145
    const-string v1, "return"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "returntoParent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/launcher/thememanager/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 147
    .local v0, parentActivityIntent:Landroid/content/Intent;
    const/high16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 149
    const-string v1, "fragment_index"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 150
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 153
    return-void
.end method


# virtual methods
.method public setActionBarBackVisible(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/view/ExActionBar;->mBackView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/view/ExActionBar;->mBackView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 112
    :cond_0
    return-void
.end method

.method public setActionBarIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawable"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/view/ExActionBar;->mActionBarIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 76
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/view/ExActionBar;->mActionBarIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 78
    :cond_0
    return-void
.end method

.method public setActionBarNavigatorVisible(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 55
    if-nez p1, :cond_0

    .line 56
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/view/ExActionBar;->mNavigatorView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 57
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/view/ExActionBar;->mBackView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/view/ExActionBar;->mBackView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 60
    :cond_0
    return-void
.end method

.method public setActionBarOperListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/view/ExActionBar;->mOperView:Landroid/view/View;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 100
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/view/ExActionBar;->mOperView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    :cond_0
    return-void
.end method

.method public setActionBarOperVisible(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/view/ExActionBar;->mOperView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/view/ExActionBar;->mOperView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 107
    :cond_0
    return-void
.end method

.method public setBackIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawable"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/view/ExActionBar;->mNavigatorView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 70
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/view/ExActionBar;->mNavigatorView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 72
    :cond_0
    return-void
.end method

.method public setOperIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawable"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/view/ExActionBar;->mActionBarOper:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 82
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/view/ExActionBar;->mActionBarOper:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 84
    :cond_0
    return-void
.end method

.method public setOperationBar(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/view/ExActionBar;->mActionBarOper:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/view/ExActionBar;->mActionBarOper:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 66
    :cond_0
    return-void
.end method

.method public setReturnFragmentIndex(I)V
    .locals 0
    .parameter "aReturnIndex"

    .prologue
    .line 120
    iput p1, p0, Lcom/baidu/launcher/thememanager/view/ExActionBar;->mReturnFragmentIndex:I

    .line 121
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/view/ExActionBar;->mActionBarText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/view/ExActionBar;->mActionBarText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 96
    :cond_0
    return-void
.end method

.method public setTextValue(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/view/ExActionBar;->mActionBarText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 88
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/view/ExActionBar;->mActionBarText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    :cond_0
    return-void
.end method

.method public setVisible(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/view/ExActionBar;->mBackView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/view/ExActionBar;->mBackView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 118
    :cond_0
    return-void
.end method
